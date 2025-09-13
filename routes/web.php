<?php

use App\Http\Controllers\AbsenceController;
use App\Http\Controllers\CartController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\CustomerController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\ItemController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\SupplierController;
use App\Http\Controllers\TransactionController;
use App\Http\Controllers\PaymentMethodController;
use App\Http\Controllers\ReportController;
use App\Http\Controllers\UserController;
use App\Http\Middleware\IsSupervisor;
use Illuminate\Support\Facades\Route;

Route::middleware('auth')->group(function () {
    Route::get('/', [DashboardController::class, 'index'])->name('dashboard');

    Route::group(['prefix' => 'inventory'], function () {
        Route::resource('category', CategoryController::class)->except('show');
        Route::resource('supplier', SupplierController::class);
        Route::resource('item', ItemController::class);
    });

    Route::resource('user', UserController::class)->except('show')->middleware(IsSupervisor::class);

    Route::resource('customer', CustomerController::class);
    Route::prefix('report')->group(function () {
        Route::get('/transaction/filter', [ReportController::class, 'filter'])->name('report.transaction.filter');
        Route::resource('transaction', ReportController::class)->names('report.transaction')->only('index', 'show');
    });
    Route::resource('absence', AbsenceController::class)->except('show');
    Route::resource('payment-method', PaymentMethodController::class)->except('show');

    Route::get('/profile', [ProfileController::class, 'show'])->name('profile.show');
    Route::get('/profile/edit', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::put('/profile', [ProfileController::class, 'update'])->name('profile.update');

    Route::prefix('transaction')->group(function () {
        Route::get('/get-invoice', [TransactionController::class, 'get_invoice'])->name('transaction.get_invoice');
        Route::get('/get-items', [TransactionController::class, 'get_items'])->name('transaction.get_items');
        Route::post('/save', [TransactionController::class, 'save_transaction'])->name('transaction.save');
    });
    Route::resource('transaction', TransactionController::class)->except('create', 'edit', 'update');

    Route::prefix('cart')->group(function () {
        Route::get('/', [CartController::class, 'index'])->name('cart.index');
        Route::post('/', [CartController::class, 'store'])->name('cart.store');
        Route::delete('/clear', [CartController::class, 'clear'])->name('cart.clear');
        Route::get('/count-stock/{item}', [CartController::class, 'count_stock']);
        Route::delete('/{cart}', [CartController::class, 'destroy']);
        Route::get('/{item:code}', [ItemController::class, 'show']);
        Route::put('/{cart}', [CartController::class, 'update']);
    });
});

require __DIR__ . '/auth.php';
