<x-layout>
  <x-slot:title>Dashboard</x-slot:title>

  @if (session('status'))
    <div class="alert alert-danger alert-dismissible fade show" role="alert">
      <b>{{ session('status') }}</b>
    </div>
  @endif
  <div class="row">
    <!-- Column -->
    <div class="col-md-4">
      <a href="http://pos.me/item">
        <div class="card card-hover">
          <div class="box bg-danger">
            <div class="row align-items-center">
              <div class="col-md-8 float-start">
                <div class="row">
                  <div class="col">
                    <h2 class="fw-bold text-white">
                      {{ $total_items }}
                    </h2>
                  </div>
                </div>
                <div class="row">
                  <div class="col">
                    <h6 class="text-white fw-normal">Total Barang</h6>
                  </div>
                </div>
              </div>
              <div class="col-md-4">
                <h1 class="font-light text-white float-end">
                  <i class="mdi mdi-package-variant-closed" style="font-size: 80px;"></i>
                </h1>
              </div>
            </div>
          </div>
        </div>
      </a>
    </div>
    <!-- Column -->
    <div class="col-md-3">
      <a href="#">
        <div class="card card-hover">
          <div class="box bg-info">
            <div class="row align-items-center">
              <div class="col-md-8 float-start">
                <div class="row">
                  <div class="col">
                    <h2 class="fw-bold text-white">
                      {{ $total_transactions }}
                    </h2>
                  </div>
                </div>
                <div class="row">
                  <div class="col">
                    <h6 class="text-white fw-normal">Total Penjualan</h6>
                  </div>
                </div>
              </div>
              <div class="col-md-4">
                <h1 class="font-light text-white float-end">
                  <i class="mdi mdi-cart" style="font-size: 80px;"></i>
                </h1>
              </div>
            </div>
          </div>
        </div>
      </a>
    </div>
    <!-- Column -->
    <div class="col-md-5">
      <a href="#">
        <div class="card card-hover">
          <div class="box bg-success">
            <div class="row align-items-center">
              <div class="col-md-8 float-start">
                <div class="row">
                  <div class="col">
                    <h2 class="fw-bold text-white">
                      @indo_currency($total_income)
                    </h2>
                  </div>
                </div>
                <div class="row">
                  <div class="col">
                    <h6 class="text-white fw-normal">Total Pendapatan</h6>
                  </div>
                </div>
              </div>
              <div class="col-md-4">
                <h1 class="font-light text-white float-end">
                  <i class="mdi mdi-cash-multiple" style="font-size: 80px;"></i>
                </h1>
              </div>
            </div>
          </div>
        </div>
      </a>
    </div>
    <!-- Column -->
  </div>

  <div class="row">
    <!-- Column -->
    <div class="col-md-6">
      <a href="http://pos.me/item">
        <div class="card card-hover">
          <div class="box bg-primary">
            <div class="row align-items-center">
              <div class="col-md-8 float-start">
                <div class="row">
                  <div class="col">
                    <h2 class="fw-bold text-white">
                      @indo_currency($income_today)</h2>
                  </div>
                </div>
                <div class="row">
                  <div class="col">
                    <h6 class="text-white fw-normal">Pendapatan Hari Ini</h6>
                  </div>
                </div>
              </div>
              <div class="col-md-4">
                <h1 class="font-light text-white float-end">
                  <i class="mdi mdi-cash-multiple" style="font-size: 80px;"></i>
                </h1>
              </div>
            </div>
          </div>
        </div>
      </a>
    </div>
    <!-- Column -->
    <div class="col-md-6">
      <a href="#">
        <div class="card card-hover">
          <div class="box bg-cyan">
            <div class="row align-items-center">
              <div class="col-md-8 float-start">
                <div class="row">
                  <div class="col">
                    <h2 class="fw-bold text-white">
                      Rp. 0 </h2>
                  </div>
                </div>
                <div class="row">
                  <div class="col">
                    <h6 class="text-white fw-normal">Pendapatan Bulan Ini</h6>
                  </div>
                </div>
              </div>
              <div class="col-md-4">
                <h1 class="font-light text-white float-end">
                  <i class="mdi mdi-cash-multiple" style="font-size: 80px;"></i>
                </h1>
              </div>
            </div>
          </div>
        </div>
      </a>
    </div>
  </div>
</x-layout>
