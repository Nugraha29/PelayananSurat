@if(Auth::user()->status == "menunggu")
<div class="container" style="height: auto;">
  <div class="row align-items-center">
    
    <div class="col-lg-4 col-md-6 col-sm-8 mt-5 ml-auto mr-auto">

        <div class="card card-login card-hidden mb-3">
          
          <div class="card-body">
            <p class="card-description text-center mt-5">{{ __('Terimakasih telah mendaftar!') }}</p>
            <p class="card-description text-center mt-1">{{ __('Akun Anda sedang dalam tahap') }} <strong>verifikasi.</strong> {{ __(' Silahkan tunggu dalam waktu ') }}<strong>2x24jam.</strong> </p>
          
          </div>
          <div class="card-footer justify-content-center">
            <a href="{{ route('logout') }}" onclick="event.preventDefault();document.getElementById('logout-form').submit();" type="button" class="btn btn-info btn-sm ">{{ __('Kembali') }}</a>
          </div>
        </div>
        
    </div>
  </div>
</div>
@else
@extends('layouts.app')

@push('plugin-styles')
  <link href="{{ asset('assets/plugins/bootstrap-datepicker/css/bootstrap-datepicker.min.css') }}" rel="stylesheet" />
@endpush

@section('content')  
  <div class="row">
    <div class="col-12 col-xl-12 stretch-card">
      <div class="row flex-grow">
        <div class="col-md-4 grid-margin stretch-card">
          <div class="card">
            <div class="card-body">
              <div class="d-flex justify-content-between align-items-baseline">
                <h6 class="card-title mb-3">Pelaporan Baru</h6>
              </div>
              <div class="row">
                <div class="col-6">
                  <h3 class="mb-0">{{ $countpelaporan }}</h3>
                </div>
                <div class="col-6 text-center text-primary">
                  <i class="link-icon" data-feather="file" width="50" height="50"></i>
                </div>
              </div>
            </div>
            <div class="card-footer">
              <div class="stats">
                <a href="{{ route('pelaporan.index')}}">Lihat Detail</a>
              </div>
            </div>
          </div>
        </div>
        <div class="col-md-4 grid-margin stretch-card">
          <div class="card">
            <div class="card-body">
              <div class="d-flex justify-content-between align-items-baseline">
                <h6 class="card-title mb-3">Pelaporan Selesai</h6>
              </div>
              <div class="row">
                <div class="col-6">
                  <h3 class="mb-0">{{ $countreview }}</h3>
                </div>
                <div class="col-6 text-center text-success">
                  <i class="link-icon" data-feather="file" width="50" height="50"></i>
                </div>
              </div>
            </div>
            <div class="card-footer">
              <div class="stats">
                <a href="{{ route('pelaporan.index')}}">Lihat Detail</a>
              </div>
            </div>
          </div>
        </div>
        <div class="col-md-4 grid-margin stretch-card">
          <div class="card">
            <div class="card-body">
              <div class="d-flex justify-content-between align-items-baseline">
                <h6 class="card-title mb-3">Pengaduan Baru</h6>
              </div>
              <div class="row">
                <div class="col-6">
                  <h3 class="mb-0">{{ $countpengaduan }}</h3>
                </div>
                <div class="col-6 text-center text-danger">
                  <i class="link-icon" data-feather="file" width="50" height="50"></i>
                </div>
              </div>
            </div>
            <div class="card-footer">
              <div class="stats">
                <a href="{{ route('pengaduan.index')}}">Lihat Detail</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div> <!-- row -->
  
  <div class="row">
    <div class="col-12 col-xl-12 grid-margin stretch-card">
      <div class="card overflow-hidden">
        <div class="card-body">
          <div class="d-flex justify-content-between align-items-baseline mb-4 mb-md-3">
            <h6 class="card-title mb-0">Grafik Pelaporan</h6>
          </div>
          <div class="row align-items-start mb-2">
            <div class="col-md-7">
              <p class="text-muted tx-13 mb-3 mb-md-0">Revenue is the income that a business has from its normal business activities, usually from the sale of goods and services to customers.</p>
            </div>
            <div class="col-md-5 d-flex justify-content-md-end">
              <div class="form-group">
                <select class="pelaporan form-control text-dark" data-style="btn btn-link" name="pelaporanyear">
                  <option disabled selected>Pilih Tahun</option>   
                    <option value="2025">2025</option>
                    <option value="2024">2024</option>
                    <option value="2023">2023</option>
                    <option value="2022">2022</option>
                    <option value="2021">2021</option>
                    <option value="2020">2020</option>
                    <option value="2019">2019</option>
                </select>
              </div>
            </div>
          </div>
          <div class="flot-wrapper">
            {!! $pelaporanchart->container() !!}
            {!! $pelaporanchart->script() !!}      
          </div>
        </div>
      </div>
    </div>
  </div> <!-- row -->

  <div class="row">
    <div class="col-12 col-xl-12 grid-margin stretch-card">
      <div class="card overflow-hidden">
        <div class="card-body">
          <div class="d-flex justify-content-between align-items-baseline mb-4 mb-md-3">
            <h6 class="card-title mb-0">Grafik Pengaduan</h6>
          </div>
          <div class="row align-items-start mb-2">
            <div class="col-md-7">
              <p class="text-muted tx-13 mb-3 mb-md-0">Revenue is the income that a business has from its normal business activities, usually from the sale of goods and services to customers.</p>
            </div>
            <div class="col-md-5 d-flex justify-content-md-end">
              <div class="form-group">
                <select class="pengaduan form-control text-dark" data-style="btn btn-link" name="pengaduanyear">
                  <option disabled selected>Pilih Tahun</option>   
                    <option value="2025">2025</option>
                    <option value="2024">2024</option>
                    <option value="2023">2023</option>
                    <option value="2022">2022</option>
                    <option value="2021">2021</option>
                    <option value="2020">2020</option>
                    <option value="2019">2019</option>
                </select>
              </div>
            </div>
          </div>
          <div class="flot-wrapper">
              {!! $pengaduanchart->container() !!}
              {!! $pengaduanchart->script() !!}     
          </div>
        </div>
      </div>
    </div>
  </div> <!-- row -->
  
@endsection
@endif
@push('plugin-scripts')
  <script src="{{ asset('assets/plugins/chartjs/Chart.min.js') }}"></script>
  <script src="{{ asset('assets/plugins/jquery.flot/jquery.flot.js') }}"></script>
  <script src="{{ asset('assets/plugins/jquery.flot/jquery.flot.resize.js') }}"></script>
  <script src="{{ asset('assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js') }}"></script>
  <script src="{{ asset('assets/plugins/apexcharts/apexcharts.min.js') }}"></script>
  <script src="{{ asset('assets/plugins/progressbar-js/progressbar.min.js') }}"></script>
@endpush

@push('js')
  <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.1/Chart.min.js" charset="utf-8"></script>
  <script>
    $(document).ready(function() {
      // Javascript method's body can be found in assets/js/demos.js
      md.initDashboardPageCharts();
    });
  </script>
  <script type="text/javascript">
      var original_api_url = {{ $pelaporanchart->id }}_api_url;
      $(".pelaporan").change(function(){
          var pelaporanyear = $(this).val();
          {{ $pelaporanchart->id }}_refresh(original_api_url + "?pelaporanyear="+pelaporanyear);
      });
  </script>
  <script type="text/javascript">
    var original_api_url2 = {{ $pengaduanchart->id }}_api_url;
    $(".pengaduan").change(function(){
        var pengaduanyear = $(this).val();
        {{ $pengaduanchart->id }}_refresh(original_api_url2 + "?pengaduanyear="+pengaduanyear);
    });
  </script>
  <script src="{{ asset('assets/js/dashboard.js') }}"></script>
  <script src="{{ asset('assets/js/datepicker.js') }}"></script>
@endpush  

