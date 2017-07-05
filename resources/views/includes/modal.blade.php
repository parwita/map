<div class="modal-dialog modal-lg">
    <div class="modal-content">
        <div class="modal-header">
            <a href="#" data-dismiss="modal" class="class pull-right"><span class="glyphicon glyphicon-remove"></span></a>
            <h3 class="modal-title"><strong>{{ $mark->no_tower }}</strong></h3>
        </div>
        <div class="modal-body">
            <div class="row">
                <div class="col-md-6 product_img">
                    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                        <!-- Wrapper for slides -->
                        <div class="carousel-inner" role="listbox">
                            @php $valor = json_decode($mark->foto); $i=0; @endphp
                            @foreach($valor as $item)
                                @if($i==0)
                                <div class="item active">
                                @else
                                <div class="item">
                                @endif
                                  <img src="{{Voyager::image($item)}}" alt="">
                                  <div class="carousel-caption">
                                    ...
                                  </div>
                                </div>
                                @php $i++; @endphp
                            @endforeach                            
                        </div>

                        <!-- Controls -->
                        <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
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