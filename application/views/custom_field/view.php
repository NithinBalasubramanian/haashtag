<link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/plugins/table/datatable/datatables-light.css') ?>">
  <link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/plugins/table/datatable/dt-global_style-light.css') ?>">


<div class="layout-px-spacing">
   <div class="row layout-top-spacing">


<div class="col-xl-12 col-lg-12 col-sm-12  layout-spacing">
  <?php echo $message ?>



<div class="widget-content widget-content-area br-6">
<div class="table-responsive mb-4 mt-4">

	 <?php echo $this->table->generate(); ?>
</div>
                                  </div>
</div>

   </div>
</div>
<input type="hidden" id="page_offset" value="<?php echo ($this->input->get('offset') > 0) ? $this->input->get('offset') : 0; ?>"/>
<input type="hidden" id="sSearch" value="<?php echo $this->input->get('sSearch') ?>" />


<script type="text/javascript" src="<?php echo base_url('assets/plugins/datatables/jquery.dataTables.min.js')?>"></script><script type="text/javascript"> </script>
 <script type="text/javascript" src="<?php echo base_url('assets/plugins/datatables/jquery.dataTables.custom.js'); ?>"></script>

 <script src="https://maps.googleapis.com/maps/api/js?key=<?php echo $google_api_key ?>&v=3.exp&libraries=places"></script>
<script src="<?php echo base_url('assets/js/jquery.validate.js') ?>"></script>
<script>

    $(document).ready(function() {



	oTable = $('#big_table').dataTable( {

		"bProcessing": true,

		"bServerSide": true,

    "oLanguage": {
                "oPaginate": { "sPrevious": '<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-arrow-left"><line x1="19" y1="12" x2="5" y2="12"></line><polyline points="12 19 5 12 12 5"></polyline></svg>', "sNext": '<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-arrow-right"><line x1="5" y1="12" x2="19" y2="12"></line><polyline points="12 5 19 12 12 19"></polyline></svg>' },
                "sInfo": "Showing page _PAGE_ of _PAGES_",
                "sSearch": '<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-search"><circle cx="11" cy="11" r="8"></circle><line x1="21" y1="21" x2="16.65" y2="16.65"></line></svg>',
                "sSearchPlaceholder": "Search...",
               "sLengthMenu": "Results :  _MENU_",
            },
            "stripeClasses": [],

		          "sAjaxSource": BASEURL+'datatable/customField?type=<?php echo $view_type; ?>',

                 "bJQueryUI": true,

                "sPaginationType": "full_numbers",

                'iDisplayLength': 10,

				'iDisplayStart':$("#page_offset").val(),

                "oLanguage": {

            "sProcessing": "Loading...",



        },

         "fnRowCallback": function( nRow, aData, iDisplayIndex, iDisplayIndexFull ) {

                        var page = this.fnPagingInfo().iPage;

                        var length = this.fnPagingInfo().iLength;

                        var index =  (page * length + (iDisplayIndex +1));

                        $('td:eq(0)', nRow).html(index);

           },

        "fnDrawCallback": function() {

              $(".status").each(function(){

               var id =$(this).attr('status-attr');

                 if(id==0)

                 {

                     $(this).removeClass('btn-success').addClass('btn-danger');

                     $(this).html('<i class="fa fa-ban"></i>');

                 }



           });

            $(".default").each(function(){

                var id =$(this).attr('status-attr');

                if(id==0)

                {

                    $(this).removeClass('btn-success').addClass('btn-danger');

                    $(this).html('<i class="fa fa-ban"></i>');

                }



            });

         },

                'fnServerData': function(sSource, aoData, fnCallback)

            {

			 aoData.push({"name": "location", "value": $('input[name="location"]').val()});

                         if ($("#sSearch").val() != '')

                        {

                            aoData.push({"name": "sSearch", "value": $("#sSearch").val()});

                            $(".dataTables_filter").find('input[type="text"]').val($("#sSearch").val());

                            $("#sSearch").val('');

                        }

              $.ajax

              ({

                'dataType': 'json',

                'type'    : 'POST',

                'url'     : sSource,

                'data'    : aoData,

                'success' : fnCallback

              });

            }

	} );

})


$(document).on("click", ".status", function () {
                    var id = $(this).attr('main-attr');
                     var status = $(this).attr('status-attr');
                     $(this).addClass('md-btn-warning');
					 $(this).html("<i class='fa fa-truck-loading'></i>");
                    $.ajax({
                        method: "POST",
                        dataType: "json",
                        url: "<?php echo base_url(); ?>customField/updateStatus/CF",
                        data: {id: id,status:status}
                    }).done(function (data) {
                                if (data['status'] == true) {

                                  oTable.fnStandingRedraw();
                                    $("div.alert").removeClass('alert-danger').addClass('alert-success');
                                    $('div.alert-success').html('<strong>Done!</strong> The status updated successfuly..!');
                                } else {
                                    $("div.alert").removeClass('alert-success').addClass('alert-danger');
                                    $('div.alert-danger').html('<strong>Sorry!</strong> Please try again.');
                                }
                                $("div.alert").fadeIn();
                                setTimeout(function () {
                                    $("div.alert").fadeOut();
                                }, 4000);
                            });
                })





</script>
