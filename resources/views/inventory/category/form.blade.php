<x-layout>
  <x-slot:title>{{ $type == 'create' ? 'Tambah' : 'Ubah' }} Kategori</x-slot:title>

  <div class="row">
    <div class="col-md-6">
      <div class="card">
        <div class="card-header">
          <a class="btn btn-warning float-end rounded-2" href="{{ route('category.index') }}">Kembali</a>
        </div>
        <div class="card-body">
          <form
            action="{{ $type == 'create' ? route('category.store') : ($category ? route('category.update', $category->id) : '') }}"
            method="POST">
            @csrf
            @isset($category)
              @method('PUT')
              @endif
              <div class="form-group">
                <label for="name">Nama Kategori <span class="text-danger">*</span></label>
                <input type="text" class="form-control @error('name') is-invalid @enderror" id="name"
                  name="name"
                  value="{{ old('name') ? old('name') : (isset($category) ? $category->name : old('name')) }}"
                  autocomplete="off" autofocus required>
                @error('name')
                  <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                  </span>
                @enderror
              </div>
              <button type="submit" class="btn btn-primary">Simpan</button>
            </form>
          </div>
        </div>
      </div>
    </div>
  </x-layout>
