<%-- 
    Document   : modal
    Created on : 31 Jan, 2019, 7:41:25 PM
    Author     : glodeveloper
--%>

<!--Confirm Modal -->
<div class="modal fade" id="confirmModel" tabindex="-1" role="dialog" aria-labelledby="ModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="ModalLabel"></h5>
            </div>
            <div class="modal-body">

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal" onclick="closeConfirmModel()"  >Close</button>
                <button type="button" class="btn btn-primary" onclick="Confirm()" >OK</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="informModel" tabindex="-1" role="dialog" aria-labelledby="Label" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <center> <h5 class="modal-title" id=Label">INFORMATION</h5></center>
            </div>
            <div class="modal-body">
                <h4 id="modelMessage"> </h4>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal" onclick="closeInformModel()">OK</button>
            </div>
        </div>
    </div>
</div>

<script>
    $('.modal').modal({
        dismissible: true
    });
    function closeConfirmModel() {
        $('#confirmModel').modal('close');
    }
    function closeInformModel() {
        $("#informModel").modal('close');
    }
    function Confirm() {
        $("#confirm").html("true");
        closeConfirmModel();
        confirmDialog();
    }
</script>