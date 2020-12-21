<link rel="stylesheet" href="<?php echo base_url() ?>assets/jqgrid/css/ui.jqgrid.css"/>

<link rel="stylesheet" href="<?php echo base_url() ?>assets/jqgrid/css/jquery-ui-1.8.2.custom.css"/>


<link rel="stylesheet" href="<?php echo base_url() ?>assets/chosen/chosen.css"/>

<script src="<?php echo base_url(); ?>assets/chosen/chosen.jquery.js" type="text/javascript"></script>

<div class="row">
    <div class="col-md-12 pt-2">
        <label>Download Excel  </label><br>
        <a href="<?php echo base_url(); ?>assets/excel/pincode_import.xlsx" download class="btn btn-sm btn-primary">Download Excel</a>
    </div>
    <div class="col-md-8 pt-5">
        <form action="<?php echo $submit_url; ?>" class="row upload_excel" method="post" enctype="multipart/form-data">
            <div class="form-group col-md-8">
                <label for="bulkPin">Upload Excel</label>
                <input type="file" class="form-control" name="bulkPincode">
            </div>
            <div class="form-group col-md-4 mt-4">
                <button class="btn btn-success" type="submit">Upload</button>
            </div>
        </form>
    </div>
    <div class="col-md-4 pt-5">
        <div class="form-group col-md-6 mt-4">
            <button class="btn btn-primary csv" style="display:none;" type="submit">Export CSV</button>
        </div>
    </div>
    <div class="col-md-12">
        <div class="uploading text-center" style="padding:10px;display:none;">
            Uploading .... 
        </div>
    </div>
    <div class="col-md-12">
        <div class="progress " style="display:none;">
            <div class="progress-bar progress-bar-striped active progress-bar-animated" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
        </div>
        <div class="updated_count" style="padding:10px;">
        </div>
        <div class="total_count"></div>
    </div>
</div>


<script src="<?php echo base_url(); ?>assets/jqgrid/js/jquery.jqGrid.min.js" type="text/javascript"></script>
<script src="<?php echo base_url(); ?>assets/jqgrid/js/i18n/grid.locale-en.js" type="text/javascript"></script>

<script src="<?php echo base_url('assets/js/jquery.validate.js') ?>"></script>

<script>
$(document).on('submit','.upload_excel',function(e){
    e.preventDefault();
    $('.uploading').css('display','block');
        $.ajax({
            type: "POST",
            url: "<?php echo $submit_url ?>",
            method: "POST",
            // dataType: "json",
            data:new FormData(this),
            contentType:false,
            cache:false,
            processData:false,
            async : true,
            beforeSend:function(data){
                $('.progress').css('display','block');
            },
            success:function(data){
                progressFetch(1);
            }
        });
});


function progressFetch(id){
    $('.uploading').css('display','none');
    $.ajax({
            type: "POST",
            url: "<?php echo base_url(); ?>Master/processData/"+id,
            dataType: "json",
            success:function(data){
                    $('.updated_count').html("Updated Count : "+data.updated_count+" , Error Count : "+data.error_count);
                    if(data.error_count != 0){
                        $('.csv').css('display','block');
                    }
                    var total = data.total_count;
                    var present = data.process_count;
                    var percent = Math.round((present/total)*100);
                    $('.progress-bar').css('width',percent+'%');
                    $('.progress-bar').attr('aria-valuenow',percent);
                    $('.progress-bar').html(''+present+'/'+total+'');
                    listError();
                if(data.process){
                    progressFetch(data.next_count);
                }
            }
        });
}

function listError(){
    $.ajax({
            type: "POST",
            url: "<?php echo base_url(); ?>Master/fetchExist",
            success:function(data){
                $('.total_count').html(data);
            }
        });
}
</script>


