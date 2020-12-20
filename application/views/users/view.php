<link rel="stylesheet" href="<?php echo base_url() ?>assets/jqgrid/css/ui.jqgrid.css"/>
<link rel="stylesheet" href="<?php echo base_url() ?>assets/jqgrid/css/ui.jqgrid-bootstrap.css?v=1"/>
<link rel="stylesheet" href="<?php echo base_url() ?>assets/jqgrid/css/ui.jqgrid-bootstrap-ui.css"/>
<link rel="stylesheet" href="<?php echo base_url() ?>assets/jqgrid/css/jquery-ui-1.8.2.custom.css"/>


<div class="layout-px-spacing">
   <div class="row layout-top-spacing">


<div class="col-xl-12 col-lg-12 col-sm-12  layout-spacing">
  <?php echo $message ?>



<div class="widget-content widget-content-area br-6">

    <div class=" ">
        <div class="max-filter-box">

            <div >
                <form id="main_fiter" class="row">
                    <div class="col-xl-3">
                        <div class="form-group">
                            <label for="search_username"><?php echo lang('user_name') ?></label>
                            <?php echo form_input(array('name' => 'search_username','id'=>'search_username', 'value'=>$this->generals_func->set_field($edit, 'search_username'),  'class' => 'form-control is_alphabets' )); ?>
                        </div>
                    </div>
                    <div class="col-xl-3">
                        <div class="form-group">
                            <label for="search_name"><?php echo lang('name') ?></label>
                            <?php echo form_input(array('name' => 'search_name','id'=>'search_name', 'value'=>$this->generals_func->set_field($edit, 'search_name'),  'class' => 'form-control is_alphabets' )); ?>
                        </div>
                    </div>
                    <div class="col-xl-3">
                        <div class="form-group">
                            <label for="search_email_id"><?php echo lang('email_id') ?></label>
                            <?php echo form_input(array('name' => 'search_email_id','id'=>'search_email_id', 'value'=>$this->generals_func->set_field($edit, 'search_email_id'),  'class' => 'form-control is_alphabets' )); ?>
                        </div>
                    </div>
                    <div class="col-xl-3">
                        <div class="form-group">
                            <label for="search_mobile_no"><?php echo lang('mobile_no') ?></label>
                            <?php echo form_input(array('name' => 'search_mobile_no','id'=>'search_mobile_no', 'value'=>$this->generals_func->set_field($edit, 'search_mobile_no'),  'class' => 'form-control is_alphabets' )); ?>
                        </div>
                    </div>

                    <div class="col-xl-3">
                        <div class="form-group">
                            <label for="search_status"><?php echo lang('status') ?></label>
                             <select id="search_status" name="search_status" class="form-control">
                                 <option value=""><?php echo lang('select') ?></option>
                                 <option <?php if($this->generals_func->set_field($edit, 'search_status') == '1') { echo "selected='selected'"; } ?> value="1"><?php echo lang('active') ?></option>
                                 <option <?php if($this->generals_func->set_field($edit, 'search_status') == '0') { echo "selected='selected'"; } ?> value="0"><?php echo lang('inactive') ?></option>
                             </select>
                        </div>
                    </div>

                    <div class="col-xl-3">
                        <div class="form-group">
                            <label for="from_entry_date"><?php echo lang('from_entry_date') ?></label>
                            <?php echo form_input(array('name' => 'from_entry_date','id'=>'from_entry_date','type'=>'date', 'value'=>$this->generals_func->set_field($edit, 'from_entry_date'),  'class' => 'form-control is_alphabets' )); ?>

                        </div>
                    </div>

                    <div class="col-xl-3">
                        <div class="form-group">
                            <label for="from_entry_date"><?php echo lang('to_entry_date') ?></label>
                            <?php echo form_input(array('name' => 'to_entry_date','id'=>'to_entry_date','type'=>'date', 'value'=>$this->generals_func->set_field($edit, 'to_entry_date'),  'class' => 'form-control is_alphabets' )); ?>

                        </div>
                    </div>

                    <div class="col-xl-3"><br/>
                        <a class="btn btn-success" href="javascript:;" id="filter_result"><?php echo lang('filter') ?></a>
                        <?php if ($this->checkaccess->check(array('export_user'))) { ?>
                        <a class="btn btn-primary" href="javascript:;" id="download_result"><?php echo lang('download') ?></a>

                        <?php } ?>
                    </div>
                </form>



            </div>
        </div>
    </div>
<div class="table-responsive mb-4 mt-4">


                            <table id="list2"></table>
                            <div id="pager2"></div>

</div>
                                  </div>
</div>

   </div>
</div>
 <script src="<?php echo base_url(); ?>assets/jqgrid/js/jquery.jqGrid.min.js" type="text/javascript"></script>
<script src="<?php echo base_url(); ?>assets/jqgrid/js/i18n/grid.locale-en.js" type="text/javascript"></script>

<script src="<?php echo base_url('assets/js/jquery.validate.js') ?>"></script>

 <script src="https://maps.googleapis.com/maps/api/js?key=<?php echo $google_api_key ?>&v=3.exp&libraries=places"></script>

<script>

    $(document).ready(function() {
       getReport();


       $("#filter_result").click(function () {
            jQuery('#list2').jqGrid('setGridParam', {page: 1, url: get_report_url()}).trigger("reloadGrid");

        })
        $("#download_result").click(function () {
            window.location.href = get_download_url() + "&download=true";
        })

     });


     function  getReport()
    {

      var colNamesm = ["Username", "Name", "Email ID", "Mobile No"];

      var colModelm = [
            {name: 'Username', align: 'left', index: 'username', sorttype:'string', searchoptions:{sopt:['eq','bw','bn','cn','nc','ew','en']}, resizable: true},
            {name: 'Name', index: 'name', resizable: true},


            {name: 'Email ID', align: 'center', index: 'email_id',   resizable: true},
            {name: 'Mobile No', index: 'mobile_no',   resizable: true},

        ];


      colNamesm.push("Action");
      colModelm.push({name: 'Action', index: '',  sortable: false, resizable: true});
        jQuery("#list2").jqGrid({url: get_report_url(),

            datatype: "json",

            colNames : colNamesm,


          colModel: colModelm,
            rowNum: 10,
            pager: '#pager2',
            sortname: 'name',
            shrinkToFit: true,
            autowidth: true,
            viewrecords: true,
            sortorder: "asc",
            height: 'auto'
        });

    }


function get_report_url()
    {
        var mData = $('#main_fiter').serialize();
        return  '<?php echo base_url('users/getDetailedReport?'); ?>'+mData  ;
    }

    function get_download_url()
    {
        var mData = $('#main_fiter').serialize();
        return  '<?php echo base_url('users/export?'); ?>'+mData  ;
    }

$(document).on("click", ".status", function () {
                    var id = $(this).attr('main-attr');
                     var status = $(this).attr('status-attr');
                     $(this).addClass('md-btn-warning');
                     var mthis = $(this);
					 $(this).html("<i class='fa fa-truck-loading'></i>");
                    $.ajax({
                        method: "POST",
                        dataType: "json",
                        url: "<?php echo base_url(); ?>users/updateStatus/USR",
                        data: {id: id,status:status}
                    }).done(function (data) {
                                if (data['status'] == true) {

                                  mthis.html(data['html']);
                                  mthis.removeClass(data['remove_class']);
                                  mthis.addClass(data['add_class']);

                                } else {

                                }

                            });
                })


                $(document).on("click", ".change-password", function () {
                    var id = $(this).attr('main-attr');
                    var name = $(this).attr('name-attr');

                    $.ajax({
                        method: "POST",
                        dataType: "json",
                        url: "<?php echo base_url(); ?>users/getView/changePasword",
                        data: {edit: id,name:name}
                    }).done(function (data) {
                        if (data['status'] == true) {
                            $('#generalModal').modal('show');
                            $('#mainGeneralHeading').html(data['title']);
                            $('#mainGeneralContent').html(data['html']);

                            $("#tagntrack_ajax_form").validate({

                              rules: {
        password: {
            required: true,
            minlength: 5
        },
        password_confirm: {
            required: true,
            minlength: 5,
            equalTo: "#password"
        }
    },
  submitHandler: function(form) {
    showBlock();
    $.ajax({

                url: BASEURL + 'users/updatePassword',

                type: "POST",

                data: $('form#tagntrack_ajax_form').serialize(),

                dataType: "json",

                success: function(data) {

  hideBlock();

                    if (data['success'] == true)

                    {



toastr.success(data['message']);

  $('#generalModal').modal('hide');


                    } else

                    {
toastr.error(data['message']);


                    }




                }

            })
}
});

                        } else {
                            alert(data['message']);
                        }

                    });
                })
</script>
