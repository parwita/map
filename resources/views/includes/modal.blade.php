<div class="modal-dialog modal-lg">
    <div class="modal-content">
        <div class="modal-header">
            <a href="#" data-dismiss="modal" class="class pull-right"><span class="glyphicon glyphicon-remove"></span></a>
            <h3 class="modal-title"><strong>{{ $mark->no_tower }}</strong></h3>
        </div>
        <div class="modal-body">
            <div class="row">
                <div class="col-md-6 product_img">
                    <!-- <img src="http://img.bbystatic.com/BestBuy_US/images/products/5613/5613060_sd.jpg" class="img-responsive"> -->
                </div>
                <div class="col-md-6 product_content">
                    <p>No. Tower : <strong>{{ $mark->no_tower }}</strong></p>
                    <p>Status : <strong>{{ $mark->status }}</strong></p>
                    <p>Nama Pelahan : <strong>{{ $mark->nama_pelahan }}</strong></p>
                    <p>Tindak Lanjut :</p>
                    <p style="text-indent: 30px;"><strong>{{ $mark->tindak_lanjut }}</strong></p>
                    <p>Masalah :</p>
                    <p style="text-indent: 30px;"><strong>{{ $mark->masalah }}</strong></p>
                    <p>Saran Solusi :</p>
                    <p style="text-indent: 30px;"><strong>{{ $mark->saran_solusi }}</strong></p>
                    <div class="space-ten"></div>
                </div>
            </div>
        </div>

    </div>
</div>