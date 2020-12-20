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


             <div class="form-group col-md-4">
                 <label for="username"><?php echo lang('billing_name') ?> <span class="m-required"></span></label>
                 <?php echo form_input(array('name' => 'company_name', 'id' => 'company_name', 'value' => $this->generals_func->set_field($edit, 'company_name'), 'class' => 'form-control is_alphabets', 'minlength' => '1', 'maxlength' => '100', 'required' => 'required')); ?>
                 <?php echo form_error('company_name'); ?>
             </div>


             <div class="form-group col-md-4">
                 <label for="username"><?php echo lang('phone_number') ?> <span class="m-required"></span></label>
                 <?php echo form_input(array('name' => 'phone_no', 'id' => 'phone_no', 'value' => $this->generals_func->set_field($edit, 'phone_no'), 'class' => 'form-control is_alphabets', 'minlength' => '1', 'maxlength' => '20', 'required' => 'required')); ?>
                 <?php echo form_error('phone_no'); ?>
             </div>


             <div class="form-group col-md-4">
                 <label for="username"><?php echo lang('email_id') ?> <span class="m-required"></span></label>
                 <?php echo form_input(array('name' => 'email_id', 'id' => 'email_id', 'value' => $this->generals_func->set_field($edit, 'email_id'), 'class' => 'form-control is_alphabets', 'minlength' => '1', 'maxlength' => '100', 'required' => 'required')); ?>
                 <?php echo form_error('email_id'); ?>
             </div>

             <div class="col-sm-12">
                 <input type="checkbox" value="1" id="enable_gst"> <label for="enable_gst"><?php echo lang('enable_GST') ?></label>
             </div>

             <div id="mainGstBlock" class="row col-sm-12" style="display:none">
                 <div class="col-sm-6">
                     <label for="username"><?php echo lang('GST_no') ?> <span class="m-required"></span></label>
                     <?php echo form_input(array('name' => 'gst_no', 'id' => 'gst_no', 'value' => $this->generals_func->set_field($edit, 'gst_no'), 'class' => 'form-control gst_req is_alphabets', 'minlength' => '1', 'maxlength' => '100',)); ?>
                     <?php echo form_error('gst_no'); ?>
                 </div>
                 <div class="col-sm-6">
                     <label for="username"><?php echo lang('PAN_no') ?> <span class="m-required"></span></label>
                     <?php echo form_input(array('name' => 'pan_no', 'id' => 'pan_no', 'value' => $this->generals_func->set_field($edit, 'pan_no'), 'class' => 'form-control gst_req is_alphabets', 'minlength' => '1', 'maxlength' => '100',)); ?>
                     <?php echo form_error('pan_no'); ?>
                 </div>
             </div>


             <div class="form-group mt-3 col-md-4">
                 <label for="username"><?php echo lang('logo') ?> <span class="m-required"></span></label>
                 <input type="file" name="userfile">
             </div>



             <div class="col-sm-12">
                 <div  class="card card-table-one">
                     <h6 class="card-title">Address</h6>
                     <p class="az-content-text mg-b-20">Address list.</p>
                     <div class="table-responsive">
                         <table class="table">
                             <thead>
                                 <tr>
                                     <!-- <th class="wd-5p">&nbsp;</th> -->

                                     <th>Address</th>
                                     <th>Country</th>
                                     <th>State</th>
                                     <th>City</th>
                                     <th>Pincode</th>
                                     <!-- <th>Default</th>
                                     <th>Add / Remove</th> -->

                                 </tr>
                             </thead>
                             <tbody>
                                 <tr class="rowclonef">
                                     <td style="padding:5px">
                                         <div style="max-width:250px" class="input-group">
                                             <textarea style="height:100px" id="area_address" class="form-control from_weight" onkeyup="countChar(this)" name="area_address" maxlength="250"></textarea>
                                         </div>
                                         <span id="charNum"></span>
                                     </td>
                                     <td style="padding:5px">
                                        <div style="max-width:250px" class="input-group">
                                            <select name="country" id="country" class="form-control from_weight">
                                                <option value="" selected disabled="">Choose Country</option>
                                                <?php foreach ($countries as $country) {
                                                    $selected = ($country['country_code'] == 'IND') ? 'selected' : ''; ?>
                                                    <option value="<?=$country['country_code']?>" <?=$selected?> ><?=$country['name']?></option>
                                                <?php }?>
                                            </select>
                                        </div>

                                     </td>
                                     <td style="padding:5px">
                                        <div style="max-width:250px" class="input-group">
                                            <select name="state" id="state" class="form-control from_weight">
                                                <option value="" selected disabled="">Choose State</option>
                                            </select>
                                        </div>
                                     </td>
                                     <td style="padding:5px">
                                        <div style="max-width:250px" class="input-group">
                                            <select name="city" id="city" class="form-control from_weight">
                                                <option value="" selected disabled="">Choose City</option>
                                            </select>
                                        </div>
                                     </td>
                                     <td style="padding:5px">
                                        <div style="max-width:250px" class="input-group">
                                            <select name="pincode" id="pincode" class="form-control from_weight">
                                                <option value="" selected disabled="">Choose Pincode</option>
                                            </select>
                                        </div>
                                     </td>
                                     <!-- <td style="padding:5px">

                                         <div style="max-width:250px;" class="input-group">
                                             <input type="radio" class="f" name="is_default_contact[]" value="1" aria-describedby="basic-addon2-p">

                                         </div>

                                     </td>
                                     <td class="text-center">

                                         <a href="javascript:;" class="btn add-rowf btn-success"><i class="fa fa-plus"></i></a>
                                         <a href="javascript:;" style="display:none" class="btn remove-rowf btn-danger"><i class="fa fa-minus"></i></a>

                                     </td> -->

                                 </tr>

                             </tbody>
                         </table>
                     </div><!-- table-responsive -->
                 </div>
             </div>


             <div class="col-sm-12">
                 <div class="card card-table-one">
                     <h6 class="card-title">Contact</h6>
                     <p class="az-content-text mg-b-20">Contact list.</p>
                     <div class="table-responsive">
                         <table class="table">
                             <thead>
                                 <tr>
                                     <th class="wd-5p">&nbsp;</th>
                                     <th>Name</th>
                                     <th>Designation</th>
                                     <th>Email Id</th>
                                     <th>Mobile No.</th>
                                     <th>Default</th>
                                     <th>Add / Remove</th>

                                 </tr>
                             </thead>
                             <tbody>
                                 <tr class="rowclone">
                                     <td><span class="mseq">1</span></td>
                                     <td style="padding:5px">

                                         <div style="max-width:250px" class="input-group">
                                             <input type="text" class="form-control from_weight" name="contact_name[]" aria-describedby="basic-addon2">

                                         </div>
                                     </td>
                                     <td style="padding:5px">

                                         <div style="max-width:250px" class="input-group">
                                             <input type="text" class="form-control to_weight" name="contact_designation[]" aria-describedby="basic-addon2-p">

                                         </div>

                                     </td>
                                     <td style="padding:5px">

                                         <div style="max-width:250px" class="input-group">
                                             <input type="text" class="form-control to_weight" id="contact_email_id" name="contact_email_id[]" aria-describedby="basic-addon2-p">

                                         </div>

                                     </td>
                                     <td style="padding:5px">

                                         <div style="max-width:250px" class="input-group">
                                             <input type="text" class="form-control to_weight mobile" id="contact_mobile_no" name="contact_mobile_no[]" aria-describedby="basic-addon2-p">

                                         </div>

                                     </td>
                                     <!-- class="contact" id="contact_is_default" -->
                                     <td style="padding:5px">
                                         <div style="max-width:250px" class="input-group">
                                             <input type="radio" class="contact" id="contact_is_default" name="contact_is_default[]" value="1" aria-describedby="basic-addon2-p">
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




             <div class="col-sm-12">
                 <div class="card card-table-one">
                     <h6 class="card-title">Bank Account</h6>
                     <p class="az-content-text mg-b-20">Active Bank Account list.</p>
                     <div class="table-responsive">
                         <table class="table">
                             <thead>
                                 <tr>
                                     <th class="wd-5p">&nbsp;</th>
                                     <th>Name</th>
                                     <th>Bank</th>
                                     <th>IFSC Code</th>
                                     <th>Account No.</th>
                                     <th>Deafult</th>
                                     <th>Add / Remove</th>

                                 </tr>
                             </thead>
                            <tbody>
                                <tr class="rowclonea">
                                    <td><span class="mseq">1</span></td>
                                    <td style="padding:5px">
                                        <div style="max-width:250px" class="input-group">
                                            <input type="text" class="form-control from_weight" name="bank_person_name[]" aria-describedby="basic-addon2">
                                        </div>
                                    </td>
                                    <td style="padding:5px">
                                        <div style="max-width:250px" class="input-group">
                                            <input type="text" class="form-control to_weight" name="bank_name[]" aria-describedby="basic-addon2-p">
                                        </div>
                                    </td>
                                    <td style="padding:5px">
                                        <div style="max-width:250px" class="input-group">
                                            <input type="text" class="form-control to_weight ifsc" id="ifsc" name="ifsc[]" aria-describedby="basic-addon2-p">
                                        </div>
                                    </td>
                                    <td style="padding:5px">
                                        <div style="max-width:250px" class="input-group">
                                            <input type="text" class="form-control to_weight account" id="account_no" name="account_no[]" aria-describedby="basic-addon2-p">
                                        </div>
                                    </td>
                                    <!-- id="is_default_bank" class="bank" -->
                                    <td style="padding:5px">
                                        <div style="max-width:250px" class="input-group">
                                            <input type="radio" class="bank" id="is_default_bank"  name="is_default_bank[]" value="1" aria-describedby="basic-addon2-p">
                                        </div>
                                    </td>
                                    <td class="text-center">
                                        <a href="javascript:;" class="btn add-rowa btn-success"><i class="fa fa-plus"></i></a>
                                        <a href="javascript:;" style="display:none" class="btn remove-rowa btn-danger"><i class="fa fa-minus"></i></a>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
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
    var mobileArray = [];
    var ifscArray = [];
    var accountArray = [];
    $(document).ready(function() {
        var country = $('#country :selected').val();
        $.ajax({
            type: "POST",
            dataType: "html",
            url: "<?php echo base_url('master/getStates') ?>",
            data: {
                'country': country
            },
            success: function(data) {
                $('#state').html('');
                $('#city').html('');
                $('#pincode').html('');
                $('#state').append('<option value="" selected disabled="">Choose State</option>');
                $('#city').append('<option value="" selected disabled="">Choose City</option>');
                $('#pincode').append('<option value="" selected disabled="">Choose Pincode</option>');
                $('#state').append(data);
            }
        });
    });


     $(document).on('change', '#enable_gst', function() {
         if ($('#enable_gst').is(":checked")) {
             $('#mainGstBlock').show();
             // $('.approval_required_user').removeAttr('readonly');

         } else {
             $('#mainGstBlock').hide();
             // $('.approval_required_user').attr('readonly','readonly');
         }

     });


     $("#haashtag_ajax_form").validate({
        submitHandler: function(form) {
            var form_data = new FormData($('#haashtag_ajax_form')[0]);
            $.ajax({
                type: "POST",
                dataType: "json",
                url: "<?php echo base_url('master/saveProfile') ?>",
                // data: $(form).serialize(),
                data: form_data,
                cache:false,
                contentType: false,
                processData: false,
                success: function(data) {
                    // console.log(data);
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
        $(".rowclone:last").find('.contact').attr("id",$('.contact').attr("id") + "_" +length);

        $(".rowclone:last").find('.mobile').attr("id",$('.mobile').attr("id") + "_" +length);
        $(".rowclone:last").find('.mseq').html(length + 1);


        // console.log($(".rowclone:last").find($('.contact').attr("id") + "_" + length));



        if ($(".rowclone").length > 1) {
            $('.remove-row').show();
        } else {
            $('.remove-row').hide();
        }
    });

    $(document).on('blur', '.mobile', function () {
        var rowCount = $(".rowclone:last").length;
        var phone = $(".rowclone:last").find('.mobile').attr("id",$('.mobile').attr("id") + "_" +rowCount).val();
        mobileArray.push(phone);

        let findDuplicates = arr => arr.filter((item, index) => arr.indexOf(item) != index);

        if (findDuplicates(mobileArray).length > 0) {
            $(".rowclone:last").find('.mobile').attr("id",$('.mobile').attr("id") + "_" +rowCount).css({"border":"1px solid red"});
            mobileArray.pop();
        } else if (phone.length == 0) {
            $(".rowclone:last").find('.mobile').attr("id",$('.mobile').attr("id") + "_" +rowCount).css({"border":"1px solid red"});
        }  else {
            $(".rowclone:last").find('.mobile').attr("id",$('.mobile').attr("id") + "_" +rowCount).css({"border":"1px solid black"});
        }
    });

    $(document).on('blur', '.account', function () {
        var rowCount = $(".rowclonea:last").length;
        var ifsc = $(".rowclonea:last").find('.ifsc').attr("id",$('.ifsc').attr("id") + "_" +rowCount).val();
        var account = $(".rowclonea:last").find('.account').attr("id",$('.account').attr("id") + "_" +rowCount).val();
        ifscArray.push(ifsc);
        accountArray.push(account);


        let findDuplicates = arr => arr.filter((item, index) => arr.indexOf(item) != index);
        /*ifscArray = ifscArray.filter(item => item);
        accountArray = accountArray.filter(item => item);*/
        if (findDuplicates(ifscArray).length > 0 && findDuplicates(accountArray).length > 0) {
            $(".rowclonea:last").find('.ifsc').attr("id",$('.ifsc').attr("id") + "_" +rowCount).css({"border":"1px solid red"});
            $(".rowclonea:last").find('.account').attr("id",$('.account').attr("id") + "_" +rowCount).css({"border":"1px solid red"});
            // alert('These are duplicate ifsc and account '+findDuplicates(accountArray)+' '+findDuplicates(ifscArray));
        } else if (ifsc.length == 0 && account.length == 0) {
            $(".rowclonea:last").find('.ifsc').attr("id",$('.ifsc').attr("id") + "_" +rowCount).css({"border":"1px solid red"});
            $(".rowclonea:last").find('.account').attr("id",$('.account').attr("id") + "_" +rowCount).css({"border":"1px solid red"});
        } else {
            $(".rowclonea:last").find('.ifsc').attr("id",$('.ifsc').attr("id") + "_" +rowCount).css({"border":"1px solid black"});
            $(".rowclonea:last").find('.account').attr("id",$('.account').attr("id") + "_" +rowCount).css({"border":"1px solid black"});
        }
    });

    $(document).on('change', '#state', function() {
        var state = $('#state').val();
        $.ajax({
            type: "POST",
            dataType: "html",
            url: "<?php echo base_url('master/getCities') ?>",
            data: {
                'state': state
            },
            success: function(data) {
                $('#city').html('');
                $('#city').append('<option value="" selected disabled="">Choose City</option>');
                $('#city').append(data);
            }
        });
    });

    $(document).on('change', '#city', function() {
        var city = $('#city').val();
        $.ajax({
            type: "POST",
            dataType: "html",
            url: "<?php echo base_url('master/getPinCodes') ?>",
            data: {
                'city': city
            },
            success: function(data) {
                $('#pincode').html('');
                $('#pincode').append('<option value="" selected disabled="">Choose City</option>');
                $('#pincode').append(data);
            }
        });
    });

    function countChar(val) {
        var len = val.value.length;
        if (len >= 250) {
          val.value = val.value.substring(0, 250);
        } else {
          $('#charNum').text(len + '/250');
        }
    };

    $(document).on('click', '.remove-row', function() {

        if ($(".rowclone").length > 1) {
            var mthis = $(this).parent().parent().find('input').val('');
            $(this).parent().parent().remove();
        } else {

        }

        if ($(".rowclone").length > 1) {
            $('.remove-row').show();
        } else {
            $('.remove-row').hide();
        }
    });

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
         $(".rowclonea:last").find('.bank').attr("id",$('.bank').attr("id") + "_" +length);
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