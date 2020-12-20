<link rel="stylesheet" href="<?php echo base_url() ?>assets/jqgrid/css/ui.jqgrid.css"/>

<link rel="stylesheet" href="<?php echo base_url() ?>assets/jqgrid/css/jquery-ui-1.8.2.custom.css"/>

<link rel="stylesheet" href="<?php echo base_url() ?>assets/chosen/chosen.css"/>


<div class="row">
    <div class="col-sm-12">
<div id="serachdiv">
    <form id="main_fiter">
             <input type="text" id="search" name='search_key' placeholder="Search.">
    </form>
            </div>
        <table id="list2"></table>
        <div id="pager2"></div>

    </div>
</div>


<script src="<?php echo base_url(); ?>assets/jqgrid/js/jquery.jqGrid.min.js" type="text/javascript"></script>
<script src="<?php echo base_url(); ?>assets/jqgrid/js/i18n/grid.locale-en.js" type="text/javascript"></script>

<script src="<?php echo base_url('assets/js/jquery.validate.js') ?>"></script>

<script src="<?php echo base_url(); ?>assets/chosen/chosen.jquery.js" type="text/javascript"></script>

<script>
$(document).on("keypress", "#search", function () {
 getReport();
});
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

        var colNamesm = ["Country Code", "Country Name","Zone Code", "Zone Name", "State Code", "State Name", "GST Code"];

        var colModelm = [

            {name: 'Country Code', align: 'left', index: 'country_code', sorttype: 'string', searchoptions: {sopt: ['eq', 'bw', 'bn', 'cn', 'nc', 'ew', 'en']}, resizable: true},
            {name: 'name', index: 'country_name', resizable: true},
            
            {name: 'Zone Code', align: 'left', index: 'zone_code', sorttype: 'string', searchoptions: {sopt: ['eq', 'bw', 'bn', 'cn', 'nc', 'ew', 'en']}, resizable: true},
            {name: 'Zone name', index: 'zone_name', resizable: true},
            
            {name: 'State Code', align: 'left', index: 'state_code', sorttype: 'string', searchoptions: {sopt: ['eq', 'bw', 'bn', 'cn', 'nc', 'ew', 'en']}, resizable: true},
            {name: 'State Name', index: 'state_name', resizable: true},
            {name: 'GST Name', index: 'gst_name', resizable: true},
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
            


        });

    }


    function get_report_url()
    {
        var mData = $('#main_fiter').serialize();
        return  '<?php echo $main_url; ?>' + mData;
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


    $(document).on("click", ".editmain", function () {
        var id = $(this).attr('main-attr');

        $('#mainGeneralHeading').html("");
        $('#mainGeneralContent').html("");
        $.ajax({
            method: "POST",
            dataType: "json",
            url: "<?php echo $get_view_link ?>",
            data: {edit: id, redirect: ""}
        }).done(function (data) {
            if (data['status'] == true) {

                $('#generalModal').modal('show');
                $('#mainGeneralHeading').html(data['title']);
                $('#mainGeneralContent').html(data['html']);
                $(".chzn-select").chosen();

                $("#haashtag_ajax_form").validate({

                    submitHandler: function (form) {
                        $.ajax({
                            type: "POST",
                            dataType: "json",
                            url: "<?php echo $submit_url ?>",
                            data: $(form).serialize(),
                            success: function (data) {

                                if (data['status']) {
                                    grid.trigger("reloadGrid", [{current: true}]);
                                    $('#generalModal').modal('hide');
                                    $('#mainGeneralHeading').html("");
                                    $('#mainGeneralContent').html("");
                                } else {
                                    alert(data['message']);
                                }
                            }
                        });

                    }
                });







            } else {

            }

        });
    })


    $(document).on("change", "#country_options", function () {
        var country_code = $(this).val();
        $.ajax({
            method: "POST",
            dataType: "json",
            url: "<?php echo base_url('ajaxhandler/getZoneListByCountry'); ?>",
            data: {country_code: country_code}
        }).done(function (data) {
            if (data['status'] == true) {
                $('#zone_options').html(data['html']);
                $("#zone_options").chosen();
                $("#zone_options").trigger("liszt:updated");
            } else {
                alert(data['message']);
                $('#zone_options').html("");
                $("#zone_options").chosen();
                $("#zone_options").trigger("liszt:updated");
            }
        });

    });
</script>
