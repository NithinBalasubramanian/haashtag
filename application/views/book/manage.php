 <style>
     table.table th {
         text-align: center !important;
     }

     span.mseq {
         display: block;
         text-align: center;
         width: 24px;
         height: 24px;
         line-height: 20px;
         background: #f2f2f2;
         border: 1px solid #ccc;
         /* margin: 0 auto; */
     }

     .main-ks {
         border: 1px dashed #ccc;
         padding: 10px;
         text-align: center;
         background: #f2f2f2;
         font-size: 16px;
         font-weight: bold;
         color: #000;
         margin-bottom: 10px;
         margin-top: 10px;
     }
 </style>
 <div class="row">
     <div class="col-sm-12">

         <?php echo form_open_multipart("", array('id' => 'haashtag_ajax_form', 'class' => 'form-horizontal ')); ?>


         <div class="row  mb-4">
             <div class="form-group col-md-2">
                 <label for="username"><?php echo lang('partner') ?> <span class="m-required"></span></label>
                 <?php echo form_dropdown('partner_code', $partner_option, $this->generals_func->set_field($edit, 'partner_code'), 'class="form-control chzn-select js-data-ajax" data-endpoint="locations" data-placeholder="' . lang('select_a_partner') . '"     id="partner_options"');

                    ?>
             </div>

             <div class="form-group col-md-2">
                 <label for="username"><?php echo lang('service') ?> <span class="m-required"></span></label>
                 <?php echo form_dropdown('service_id', $service_option, $this->generals_func->set_field($edit, 'service_id'), 'class="form-control chzn-select js-data-ajax" data-endpoint="locations" data-placeholder="' . lang('select_a_partner') . '"     id="service_options"');

                    ?>
             </div>

             <div class="form-group col-md-2">
                 <label for="username"><?php echo lang('book_name') ?> <span class="m-required"></span></label>
                 <?php echo form_input(array('name' => 'name', 'id' => 'name', 'value' => $this->generals_func->set_field($edit, 'name'), 'class' => 'form-control is_alphabets', 'minlength' => '1',  'required' => 'required')); ?>
                 <?php echo form_error('name'); ?>
             </div>


             <div class="form-group col-md-2">
                 <label for="username"><?php echo lang('total_leaf') ?> <span class="m-required"></span></label>
                 <?php echo form_input(array('name' => 'leaf_count', 'id' => 'leaf_count', 'value' => $this->generals_func->set_field($edit, 'leaf_count'), 'class' => 'form-control is_alphabets', 'minlength' => '1',   'required' => 'required')); ?>
                 <?php echo form_error('leaf_count'); ?>
             </div>


             <div class="form-group col-md-2">
                 <label for="username"><?php echo lang('price_per_leaf') ?> <span class="m-required"></span></label>
                 <?php echo form_input(array('name' => 'price', 'id' => 'price', 'value' => $this->generals_func->set_field($edit, 'price'), 'class' => 'form-control is_alphabets', 'minlength' => '1', 'maxlength' => '100', 'required' => 'required')); ?>
                 <?php echo form_error('price'); ?>
             </div>
             <div class="form-group col-md-2">
                 <label for="username"><?php echo lang('purchase_date') ?> <span class="m-required"></span></label>
                 <?php echo form_input(array('name' => 'active_from', 'id' => 'active_from', 'type' => 'date', 'value' => $this->generals_func->set_field($edit, 'active_from'), 'class' => 'form-control is_alphabets', 'minlength' => '1', 'maxlength' => '100', 'required' => 'required')); ?>
                 <?php echo form_error('active_from'); ?>
             </div>

             <div class="form-group col-md-12">
                 <label for="username"><?php echo lang('notes') ?> </label>
                 <?php echo form_textarea(array('name' => 'notes', 'style' => 'height:100px', 'id' => 'notes',  'value' => $this->generals_func->set_field($edit, 'notes'), 'class' => 'form-control is_alphabets', 'minlength' => '1',)); ?>
                 <?php echo form_error('notes'); ?>
             </div>

             <div class="col-sm-12">
                 <input type="checkbox" value="1" id="enable_gst"> <label for="enable_gst"><?php echo lang('upload_via_csv_file') ?></label>
             </div>

             <div id="mainGstBlock" class="row col-sm-12" style="display:none">
                 <div class="col-sm-6">
                     <label for="username"><?php echo lang('book_cnno_list(in_csv_format)') ?> <span class="m-required"></span></label><br />
                     <input type="file" name="logo">
                 </div>

             </div>


             <div class="form-group mt-3 col-md-4">

             </div>

             <div class="mainuiss col-sm-12">
                 <div style="    margin-top: 20px;" class="card card-table-one">
                     <h6 class="card-title">CNNO By Range</h6>
                     <p class="az-content-text mg-b-20">Range.</p>
                     <div class="table-responsive">
                         <table class="table">
                             <thead>
                                 <tr>
                                     <th class="wd-5p">&nbsp;</th>
                                     <th>From</th>
                                     <th>To</th>

                                     <th>Add / Remove</th>

                                 </tr>
                             </thead>
                             <tbody>
                                 <tr class="rowclone">
                                     <td><span class="mseq">1</span></td>
                                     <td style="padding:5px">

                                         <div style="max-width:250px" class="input-group">
                                             <input type="text" class="form-control from_weight" name="name[]" aria-describedby="basic-addon2">

                                         </div>
                                     </td>
                                     <td style="padding:5px">

                                         <div style="max-width:250px; text-align: left" class="input-group">
                                             <input type="text" class="form-control to_weight" name="designation[]" aria-describedby="basic-addon2-p">

                                         </div>

                                     </td>

                                     <td class="text-center">

                                         <a href="javascript:;" class="btn add-row btn-success"><i class="fa fa-plus"></i></a>
                                         <a href="javascript:;" style="display:none" class="btn remove-row btn-danger"><i class="fa fa-minus"></i></a>

                                     </td>

                                 </tr>

                             </tbody>
                         </table>
                     </div><!-- table-responsive -->
                 </div>
             </div>




             <div class="mainuiss col-sm-12">
                 <div style="    margin-top: 20px;" class="card card-table-one">
                     <h6 class="card-title">Custom CNNO</h6>
                     <p class="az-content-text mg-b-20">Enter multiple cnno seperated by ,.</p>
                     <div class="table-responsive">
                         <?php echo form_textarea(array('name' => 'notes', 'style' => 'height:100px', 'id' => 'notes',  'value' => $this->generals_func->set_field($edit, 'notes'), 'class' => 'form-control is_alphabets', 'minlength' => '1',)); ?>
                         <?php echo form_error('notes'); ?>
                     </div><!-- table-responsive -->
                 </div>
             </div>



         </div>




         <?php echo form_hidden('edit_id', $this->generals_func->set_field($edit, 'company_code')) ?>






     </div>

     <div class="main-submit-fotter-block">
         <a class="btn btn-danger" href="javascript:;" data-dismiss="modal"><?php echo lang('cancel') ?></a>
         <button type="submit" class="btn btn-primary"><?php echo lang('save_changes') ?></button>
     </div>
     <?php echo form_close(); ?>

 </div>


 <script src="<?php echo base_url('assets/js/jquery.validate.js') ?>"></script>



 <script>
     $(document).ready(function() {

     });


     $(document).on('change', '#enable_gst', function() {
         if ($('#enable_gst').is(":checked")) {
             $('#mainGstBlock').show();
             $('.mainuiss').hide();
             // $('.approval_required_user').removeAttr('readonly');

         } else {
             $('#mainGstBlock').hide();
             $('.mainuiss').show();
             // $('.approval_required_user').attr('readonly','readonly');
         }

     });


     $("#haashtag_ajax_form").validate({

         submitHandler: function(form) {
             $.ajax({
                 type: "POST",
                 dataType: "json",
                 url: "<?php echo base_url('master/saveProfile') ?>",
                 data: $(form).serialize(),
                 success: function(data) {

                     if (data['status']) {
                         grid.trigger("reloadGrid", [{
                             current: true
                         }]);
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


     $(document).on('click', '.add-row', function() {
         var length = $(".rowclone").length;



         $trNew = $(".rowclone:last").clone();
         /*  if($trNew.find('input.from_weight').val() == "") {
               toastr.error('From weight is required'); return false;
          }
          if($trNew.find('input.to_weight').val() == "") {
              toastr.error('To weight is required');
               return false;
          }
          if($trNew.find('input.to_weight').val() < $trNew.find('input.from_weight').val())
          {
               toastr.error('From weight is greater than to weight');
               return false;
          }*/

         $(".rowclone:last").after($trNew);



         $(".rowclone:last").find('input').val('');
         $(".rowclone:last").find('.main-oas').attr('id', 'mains' + length);
         $(".rowclone:last").find('.mseq').html(length + 1);


         if ($(".rowclone").length > 1)

         {
             $('.remove-row').show();
         } else {
             $('.remove-row').hide();
         }





     })


     $(document).on('click', '.remove-row', function() {

         if ($(".rowclone").length > 1)

         {
             var mthis = $(this).parent().parent().find('input').val('');
             $(this).parent().parent().remove();

         } else {

         }

         if ($(".rowclone").length > 1)

         {
             $('.remove-row').show();
         } else {
             $('.remove-row').hide();
         }

     })








     $(document).on('click', '.add-rowa', function() {
         var length = $(".rowclonea").length;



         $trNew = $(".rowclonea:last").clone();
         /*  if($trNew.find('input.from_weight').val() == "") {
               toastr.error('From weight is required'); return false;
          }
          if($trNew.find('input.to_weight').val() == "") {
              toastr.error('To weight is required');
               return false;
          }
          if($trNew.find('input.to_weight').val() < $trNew.find('input.from_weight').val())
          {
               toastr.error('From weight is greater than to weight');
               return false;
          }*/

         $(".rowclonea:last").after($trNew);



         $(".rowclonea:last").find('input').val('');
         $(".rowclonea:last").find('.main-oas').attr('id', 'mains' + length);
         $(".rowclonea:last").find('.mseq').html(length + 1);


         if ($(".rowclonea").length > 1)

         {
             $('.remove-rowa').show();
         } else {
             $('.remove-rowa').hide();
         }





     })


     $(document).on('click', '.remove-rowa', function() {

         if ($(".rowclonea").length > 1)

         {
             var mthis = $(this).parent().parent().find('input').val('');
             $(this).parent().parent().remove();

         } else {

         }

         if ($(".rowclonea").length > 1)

         {
             $('.remove-rowa').show();
         } else {
             $('.remove-rowa').hide();
         }

     })
 </script>