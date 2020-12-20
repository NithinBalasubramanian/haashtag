<link rel="stylesheet" href="<?php echo base_url() ?>assets/jqgrid/css/ui.jqgrid.css"/>

<link rel="stylesheet" href="<?php echo base_url() ?>assets/jqgrid/css/jquery-ui-1.8.2.custom.css"/>

<link rel="stylesheet" href="<?php echo base_url() ?>assets/chosen/chosen.css"/>


<div class="row">
    <div class="col-sm-12">

        <table id="list2"></table>
        <div id="pager2"></div>

    </div>
</div>


<script src="<?php echo base_url(); ?>assets/jqgrid/js/jquery.jqGrid.min.js" type="text/javascript"></script>
<script src="<?php echo base_url(); ?>assets/jqgrid/js/i18n/grid.locale-en.js" type="text/javascript"></script>

<script src="<?php echo base_url('assets/js/jquery.validate.js') ?>"></script>

 <script src="<?php echo base_url(); ?>assets/chosen/chosen.jquery.js" type="text/javascript"></script>

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

        var colNamesm = ["Sl no.","Rate Card Code", "Name","Partner", "Service","Doc Type","Mode","Country"];

        var colModelm = [
{name: 'sl no', index: 'sl',width:60, resizable: true},
            {name: 'Code',width:110, align: 'left', index: 'rate_card_code', sorttype: 'string', searchoptions: {sopt: ['eq', 'bw', 'bn', 'cn', 'nc', 'ew', 'en']}, resizable: true},
            {name: 'name', index: 'name', resizable: true},
            {name: 'Partner', align: 'left', index: 'partner', sorttype: 'string', searchoptions: {sopt: ['eq', 'bw', 'bn', 'cn', 'nc', 'ew', 'en']}, resizable: true},
            {name: 'Service', index: 'service', resizable: true},
            {name: 'Doc Type', index: 'doc_type', resizable: true},
            {name: 'Mode', index: 'mode', resizable: true},
            {name: 'Country', index: 'country', resizable: true},
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
            autowidth: true,
            forceFit: false,
            shrinkToFit: false


        });

    }


    function get_report_url()
    {
        var mData = $('#main_fiter').serialize();
        return  '<?php echo $main_url; ?>' + mData;
    }

$(document).on("click", ".main-view", function () {
    show_load("<?php echo lang('loading_rate_card_data_please_wait') ?>");
    var main_id = $(this).attr('main-attr');
    
     $.ajax({
            method: "POST",
            dataType: "json",
            url: "<?php echo base_url('rateCard/viewAjax'); ?>",
            data: {rate_id: main_id}
        }).done(function (data) {
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
             hide_load();
        });
    
    });
    $(document).on("click", ".status", function () {
        var id = $(this).attr('main-attr');
        var status = $(this).attr('status-attr');
        $(this).addClass('md-btn-warning');
        var mthis = $(this);
        $(this).html("<i class='fa fa-truck-loading'></i>");
        $.ajax({
            method: "POST",
            dataType: "json",
            url: "<?php echo $status_url; ?>",
            data: {id: id, status: status}
        }).done(function (data) {
            if (data['status'] == true) {
                grid.trigger("reloadGrid", [{current: true}]);
            } else {
                alert(data['message']);
            }
        });
    })
 
</script>
