@extends('layouts.app')

@section('content')
<div class="row">
  <div class="col-md-12 grid-margin stretch-card">
    <div class="card">
      <div class="card-body">
        <div class="d-flex justify-content-between align-items-center mb-3">
          <h4 class="card-title font-weight-bold">Data Pengaduan</h4>
          <div>
            <a class="btn btn-success" role="button" href="{{ route('pengaduan.export') }}">
              <i class="link-icon" data-feather="file" width="18" height="18"></i> <span>Export</span>
            </a>
          </div>
        </div>
        <div class="table-responsive">
          <table id="dataTableUsers" class="table" style="width: 100%; text-align:center;">
            <thead>
              <tr>
                <th>ID</th>
                <th>Tanggal Pendaftaran</th>
                <th>Nama</th>
                <th>Email</th>
                <th>Telepon</th>
                <th>Nama Perusahaan</th>
                <th>Jabatan</th>
                <th>Status</th>
                <th>Aksi</th>
              </tr>
            </thead>
          </table>
        </div>
      </div>
    </div>
  </div>
</div>
<div id="confirmModal" class="modal fade" role="dialog">
  <div class="modal-dialog">
      <div class="modal-content">
          <div class="modal-header">              
              <h5 class="modal-title">Konfirmasi</h5>
              <button type="button" class="close" data-dismiss="modal">&times;</button>
          </div>
          <div class="modal-body">
              <h5 align="center" style="margin:0;">Apakah Anda yakin akan <a class="text-danger">menghapus</a> data ini?</h5>
          </div>
          <div class="modal-footer">
            <button type="button" name="ok_button" id="ok_button" class="btn btn-sm btn-danger">OK</button>
            <button type="button" class="btn btn-sm" data-dismiss="modal">Batal</button>
          </div>
      </div>
  </div>
</div>
<div id="confirmModal1" class="modal fade" role="dialog">
  <div class="modal-dialog">
      <div class="modal-content">
          <div class="modal-header">              
              <h5 class="modal-title">Konfirmasi</h5>
              <button type="button" class="close" data-dismiss="modal">&times;</button>
          </div>
          <div class="modal-body">
              <h5 align="center" style="margin:0;">Apakah Anda yakin akan <a class="text-success">mengaktivasi</a> data ini?</h5>
              
                <input class="getinfo" value="aktif" hidden>
              
          </div>
          <div class="modal-footer">
            <button type="button" name="ok_button1" id="ok_button1" class="btn btn-sm btn-danger">OK</button>
            <button type="button" class="btn btn-sm" data-dismiss="modal">Batal</button>
          </div>
      </div>
  </div>
</div>
@endsection
@push('plugin-scripts')
  <script src="{{ asset('assets/plugins/datatables-net/jquery.dataTables.js') }}"></script>
  <script src="{{ asset('assets/plugins/datatables-net-bs4/dataTables.bootstrap4.js') }}"></script>
@endpush
@push('js')
<script>
  $(document).ready(function() {

    var CSRF_TOKEN = $('meta[name="_token"]').attr('content');
    var user_id;
    var user_id1;

    $(document).on('click', '.delete', function(){
      user_id = $(this).attr('id');
      $('#confirmModal').modal('show');
    });

    $(document).on('click', '.aktivasi', function(){
      user_id1 = $(this).attr('id');
      $('#confirmModal1').modal('show');
    });

    $('#ok_button').click(function(){


      $.ajax({
      url:"user/destroy/"+user_id,
      beforeSend:function(){
        $('#ok_button').text('Menghapus data...');
      },
      success:function(data)
      {
        setTimeout(function(){
        $('#confirmModal').modal('hide');
        $('#dataTableUsers').DataTable().ajax.reload();
        alert('Data Terhapus');
        }, 2000);
      }
      })
    });

    $('#ok_button1').click(function(){
      $.ajax({
      url:"user/aktivasi/"+user_id1,
      method:"POST",  
      data: {
        _token: CSRF_TOKEN, 
        status: $(".getinfo").val()
      },
      beforeSend:function(){
        $('#ok_button1').text('Mengaktivasi data...');
      },
      success:function(data)
      {
        setTimeout(function(){
        $('#confirmModal1').modal('hide');
        $('#dataTableUsers').DataTable().ajax.reload();
        alert('Data Teraktivasi');
        }, 2000);
      }
      })
    });

  });
</script>
<script src="{{ asset('assets/js/data-table.js') }}"></script>
@endpush