<div class="modal-dialog modal-lg">
    <div class="modal-content">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span>
            </button>
            <h4 class="modal-title" id="myModalLabel">{{ $mark->no_tower }}</h4>
        </div>
        <div class="modal-body">
            <h4>Name: {{ $mark->nama_pelahan }}</h4>
            <h4>Status: {{ $mark->status }}</h4>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
    </div>
</div>