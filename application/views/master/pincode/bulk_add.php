<link rel="stylesheet" href="<?php echo base_url() ?>assets/jqgrid/css/ui.jqgrid.css"/>

<link rel="stylesheet" href="<?php echo base_url() ?>assets/jqgrid/css/jquery-ui-1.8.2.custom.css"/>


<link rel="stylesheet" href="<?php echo base_url() ?>assets/chosen/chosen.css"/>

<script src="<?php echo base_url(); ?>assets/chosen/chosen.jquery.js" type="text/javascript"></script>

<div class="row">
    <div class="col-md-12 pt-2">
        <label>Download Excel  </label><br>
        <a href="<?php echo base_url(); ?>assets/excel/pincode_import.xlsx" download class="btn btn-sm btn-primary">Download Excel</a>
    </div>
    <div class="col-md-12 pt-5">
        <form action="<?php echo $submit_url; ?>" class="row upload_excel" method="post" enctype="multipart/form-data">
            <div class="form-group col-md-4">
                <label for="bulkPin">Upload Excel</label>
                <input type="file" class="form-control" name="bulkPincode">
            </div>
            <div class="form-group col-md-6 mt-4">
                <button class="btn btn-success" type="submit">Upload</button>
            </div>
        </form>
    </div>
    <div class="col-md-12">
        <div class="total_count"></div>
    </div>
</div>


<script src="<?php echo base_url(); ?>assets/jqgrid/js/jquery.jqGrid.min.js" type="text/javascript"></script>
<script src="<?php echo base_url(); ?>assets/jqgrid/js/i18n/grid.locale-en.js" type="text/javascript"></script>

<script src="<?php echo base_url('assets/js/jquery.validate.js') ?>"></script>

<script>
$(document).on('submit','.upload_excel',function(e){
    e.preventDefault();
        $.ajax({
            type: "POST",
            url: "<?php echo $submit_url ?>",
            method:"POST",
            data:new FormData(this),
            contentType:false,
            cache:false,
            processData:false,
            dataType: "json",
            success:function(data){
               $('.total_count').html(data);
            }
        });

});
</script>


