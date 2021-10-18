<!-- Modal -->
<div class="modal fade" id="delete_modal" tabindex="-1" role="dialog" aria-labelledby="delete_modal_form" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Confirmation </h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
            Are you sure to delete the story ?
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          <form action="" method="POST" style="display: inline;" id="delete_modal_form">
            @method('DELETE')
            @csrf
            <button type="submit" class="btn btn-danger">Yes</button>
        </form>
        </div>
      </div>
    </div>
  </div>
