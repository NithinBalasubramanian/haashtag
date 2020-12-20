<link rel="stylesheet" href="<?php echo base_url() ?>assets/jqgrid/css/ui.jqgrid.css"/>

<link rel="stylesheet" href="<?php echo base_url() ?>assets/jqgrid/css/jquery-ui-1.8.2.custom.css"/>



<div class="row">
    <div class="col-sm-12">

        <table id="list2"></table>
        <div id="pager2"></div>

    </div>
</div>


<script src="<?php echo base_url(); ?>assets/jqgrid/js/jquery.jqGrid.min.js" type="text/javascript"></script>
<script src="<?php echo base_url(); ?>assets/jqgrid/js/i18n/grid.locale-en.js" type="text/javascript"></script>

<script src="<?php echo base_url('assets/js/jquery.validate.js') ?>"></script>



<script>

    $(document).ready(function () {
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

        var colNamesm = ["Sl no.","Vendor Code","Name","Email Id","Mobile No","GST"
        // ,"Contact List","Bank List"
    ];

        var colModelm = [
 {name: 'Sl no.', index: 'Sl_no', resizable: true},
            {name: 'Vendor Code', align: 'left', index: 'code', sorttype: 'string', searchoptions: {sopt: ['eq', 'bw', 'bn', 'cn', 'nc', 'ew', 'en']}, resizable: true},
            {name: 'Name', index: 'value', resizable: true},
            {name: 'Email Id', index: 'value', resizable: true},
            {name: 'Mobile No', align: 'left', index: 'code', sorttype: 'string', searchoptions: {sopt: ['eq', 'bw', 'bn', 'cn', 'nc', 'ew', 'en']}, resizable: true},
            {name: 'GST', index: 'value', resizable: true},
            // {name: 'Contact List', index: 'value', resizable: true},
            // {name: 'Bank List', index: 'value', resizable: true},
        ];


        colNamesm.push("Action");
        colModelm.push({name: 'Action', index: '', sortable: false, resizable: true});
        grid = jQuery("#list2").jqGrid({url: get_report_url(),

            datatype: "json",

            colNames: colNamesm,

            colModel: colModelm,
            rowNum: 10,
            pager: '#pager2',
            sortname: 'name',
            shrinkToFit: true,
            autowidth: true,
            viewrecords: true,
            sortorder: "asc",
            height: 'auto',
            loadonce: false, //loadonce is must
            rowList: [10, 20, 50, 100], //drop down
            autowidth: true 


        });

    }


    function get_report_url()
    {
        var mData = $('#main_fiter').serialize();
        return  '<?php echo base_url('vendor/getVendorList'); ?>' + mData;
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
            url: "<?php echo base_url('vendor/updateStatus/CUST'); ?>",
            data: {id: id, status: status}
        }).done(function (data) {
            if (data['status'] == true) {
                grid.trigger("reloadGrid", [{current: true}]);
            } else {
                alert(data['message']);
            }
        });
    })


    
$(document).on("click", ".view-dtls", function () {
    show_load("<?php echo lang('loading_vendor_data_please_wait') ?>");
    var main_id = $(this).attr('main-attr');
    
     $.ajax({
            method: "POST",
            dataType: "json",
            url: "<?php echo base_url('vendor/viewAjax'); ?>",
            data: {vendor_id: main_id}
        }).done(function (data) {
            hide_load();
            if (data['status'] == true) {
               $('#generalModal').modal('show');
                $('#mainGeneralHeading').html(data['title']);
                $('#mainGeneralContent').html(data['html']);

                $("#state_options").chosen();
                $("#country_options").chosen();
                  $("#zone_options").chosen();
            } else {
                alert(data['message']);
            }
             
        });
    
    }); 
</script>
