<?php

namespace App\Http\Controllers;

use App\Models\Cart;
use App\Models\Customer;
use App\Models\Item;
use App\Models\PaymentMethod;
use App\Models\Transaction;
use App\Models\TransactionDetail;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Database\Eloquent\JsonEncodingException;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\View\View;

class TransactionController extends Controller
{
    private function move_cart($transaction)
    {
        $carts = Cart::where('user_id', Auth::user()->id)->get();
        foreach ($carts as $cart) {
            $item = Item::find($cart->item_id);
            $item->stock -= $cart->qty;
            $item->save();

            $transaction_detail = new TransactionDetail();
            $transaction_detail->transaction_id = $transaction->id;
            $transaction_detail->item_id = $cart->item_id;
            $transaction_detail->item_price = calculate_price($cart->item, $cart->qty);
            $transaction_detail->qty = $cart->qty;
            $transaction_detail->total = $cart->subtotal;
            $transaction_detail->save();
        }
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(): View
    {
        $user = User::find(Auth::user()->id);
        return view('transaction.index', [
            'user' => $user,
            'customers' => Customer::orderBy('name')->get(),
            'items' => Item::orderBy('name')->get(),
            'payment_methods' => PaymentMethod::orderBy('name')->get(),
            'carts' => $user->carts
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request): string
    {
        $payment_method_id = PaymentMethod::where('name', $request->payment_method)->first()->id;

        $transaction = new Transaction();
        $transaction->user_id = Auth::user()->id;
        if ($request->customer_id != 0) {
            $transaction->customer_id = $request->customer_id;
        }
        $transaction->invoice = $request->invoice;
        $transaction->invoice_no = $request->invoice_no;
        $transaction->total = $request->total;
        $transaction->discount = $request->discount;
        $transaction->payment_method_id = $payment_method_id;
        $transaction->amount = $request->amount;
        $transaction->change = $request->change;
        $transaction->note = $request->note;
        $transaction->save();

        $this->move_cart($transaction);

        return json_encode(['status' => 'success', 'message' => 'Transaksi berhasil']);
    }

    public function destroy(Transaction $transaction): RedirectResponse
    {
        $transaction->delete();

        return redirect()->route('report.transaction.index')->with('status', 'Berhasil menghapus data penjualan');
    }

    public function save_transaction(Request $request): string
    {
        $transaction = new Transaction();
        $transaction->user_id = Auth::user()->id;
        if ($request->customer_id != 0) {
            $transaction->customer_id = $request->customer_id;
        }
        $transaction->invoice = $request->invoice;
        $transaction->invoice_no = $request->invoice_no;
        $transaction->total = $request->total;
        $transaction->status = 'debt';
        $transaction->save();

        $this->move_cart($transaction);

        return json_encode(['status' => 'success', 'message' => 'Transaksi berhasil']);
    }

    public function get_items(Request $request): string|View
    {
        $items = Item::orderBy('name')->get();

        if ($request->json) {
            return json_encode($items);
        }

        return view('transaction.items', [
            'items' => $items
        ]);
    }

    public function get_invoice(): string
    {
        if (count(Transaction::whereDate('created_at', Carbon::today())->get()) > 0) {
            $invoice = intVal(Transaction::whereDate('created_at', Carbon::today())->max('invoice_no')) + 1;
        } else {
            $invoice = 1;
        }

        $invoice_no = $invoice;
        $invoice = env('INVOICE_PREFIX') . date('dmy') . str_pad($invoice, 4, "0", STR_PAD_LEFT);
        return json_encode(['invoice' => $invoice, 'invoice_no' => $invoice_no]);
    }
}
