<style>
    table.table th {
        text-align: left !important;
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
    span.m-required:before {
    display:none;
}
</style>

<div class="row">
    <div class="col-sm-12">

        
        <div class="row  mb-4">
            <div class="form-group col-md-2">
                <label for="username"><?php echo lang('vendor_name') ?> <span class="m-required"></span></label>
                <?php echo form_input(array('name' => 'name', 'disabled'=>'disabled','id' => 'vendor_name', 'value' => $this->generals_func->set_field($edit, 'name'), 'class' => 'form-control is_alphabets', 'minlength' => '1', 'maxlength' => '100', 'required' => 'required')); ?>
                <?php echo form_error('vendor_name'); ?>
            </div>

            <div class="form-group col-md-2">
                <label for="username"><?php echo lang('vendor_code') ?> <span class="m-required"></span></label>
                <?php echo form_input(array('name' => 'vendor_code','disabled'=>'disabled', 'id' => 'vendor_code', 'value' => $this->generals_func->set_field($edit, 'vendor_code'), 'class' => 'form-control is_alphabets', 'minlength' => '1', 'maxlength' => '100', 'required' => 'required')); ?>
                <?php echo form_error('vendor_code'); ?>
            </div>

            <div class="form-group col-md-2">
                <label for="username"><?php echo lang('billing_name') ?> <span class="m-required"></span></label>
                <?php echo form_input(array('name' => 'billing_name', 'disabled'=>'disabled','id' => 'billing_name', 'value' => $this->generals_func->set_field($edit, 'billing_name'), 'class' => 'form-control is_alphabets', 'minlength' => '1', 'maxlength' => '100', 'required' => 'required')); ?>
                <?php echo form_error('billing_name'); ?>
            </div>


            <div class="form-group col-md-2">
                <label for="username"><?php echo lang('phone_number') ?> <span class="m-required"></span></label>
                <?php echo form_input(array('name' => 'phone_no', 'id' => 'phone_no','disabled'=>'disabled', 'value' => $this->generals_func->set_field($edit, 'phone_no'), 'class' => 'form-control is_alphabets', 'minlength' => '1', 'maxlength' => '20', 'required' => 'required')); ?>
                <?php echo form_error('phone_no'); ?>
            </div>


            <div class="form-group col-md-2">
                <label for="username"><?php echo lang('email_id') ?> <span class="m-required"></span></label>
                <?php echo form_input(array('name' => 'email_id_main', 'type' => 'email','disabled'=>'disabled', 'id' => 'email_id', 'type' => 'email', 'value' => $this->generals_func->set_field($edit, 'email_id'), 'class' => 'form-control is_alphabets', 'minlength' => '1',)); ?>
                <?php echo form_error('email_id_main'); ?>
            </div>
            <div class="form-group col-md-2">
                <label for="username"><?php echo lang('active_from') ?> <span class="m-required"></span></label>
                <?php echo form_input(array('name' => 'active_from', 'id' => 'active_from','disabled'=>'disabled', 'type' => 'date', 'value' => $this->generals_func->set_field($edit, 'active_from'), 'class' => 'form-control is_alphabets', 'minlength' => '1',)); ?>
                <?php echo form_error('active_from'); ?>
            </div>

            <div class="form-group col-md-12">
                <label for="username"><?php echo lang('notes') ?> </label>
                <?php echo form_textarea(array('name' => 'notes', 'style' => 'height:100px','disabled'=>'disabled', 'id' => 'notes', 'value' => $this->generals_func->set_field($edit, 'notes'), 'class' => 'form-control is_alphabets', 'minlength' => '1',)); ?>
                <?php echo form_error('notes'); ?>
            </div>

            <div class="col-sm-12">
                <?php
                $mstyle = "none";
                $mks = "";
                if ($this->generals_func->set_field($edit, 'enable_gst') == "1") {
                    $mstyle = "";
                    $mks = "checked='checked'";
                }
                ?>
                <input <?php echo $mks; ?> type="checkbox" name='enable_gst' value="1" disabled id="enable_gst"> <label for="enable_gst"><?php echo lang('enable_GST') ?></label>
            </div>

            <div id="mainGstBlock" class="row col-sm-12" style="display:<?php echo $mstyle ?>">
                <div class="col-sm-6">
                    <label for="username"><?php echo lang('GST_no') ?> <span class="m-required"></span></label>
                    <?php echo form_input(array('name' => 'gst_no', 'id' => 'gst_no', 'value' => $this->generals_func->set_field($edit, 'gst_no'), 'disabled'=>'disabled', 'class' => 'form-control gst_req is_alphabets', 'minlength' => '1',)); ?>
                    <?php echo form_error('gst_no'); ?>
                </div>
                <div class="col-sm-6">
                    <label for="username"><?php echo lang('PAN_no') ?> <span class="m-required"></span></label>
                    <?php echo form_input(array('name' => 'pan_no', 'id' => 'pan_no', 'value' => $this->generals_func->set_field($edit, 'pan_no'), 'disabled'=>'disabled', 'class' => 'form-control gst_req is_alphabets', 'minlength' => '1',)); ?>
                    <?php echo form_error('pan_no'); ?>
                </div>
            </div>


            <div class="form-group mt-3 col-md-4">
                <label for="username"><?php echo lang('logo') ?></label>
                 
                <?php
                if ($this->generals_func->set_field($edit, 'logo') != "") {
                    $path = base_url('assets/uploads/vendor/' . $this->generals_func->set_field($edit, 'logo'));
                    ?>
                    <img src='<?php echo $path ?>' style='width:250px'>
                    <?php
                }
                ?>
            </div>

            <div class="col-sm-12">
                <div style="    margin-top: 20px;" class="card card-table-one">
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
                                     

                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                if ($this->generals_func->set_field($edit, 'vendor_id') != "") {
                                    $contact = $this->UtilityModel->getRequiredData('M', $this->db_ext . "vendor_contact", '*', array('vendor_id' => $this->generals_func->set_field($edit, 'vendor_id')), 'sequence');
                                } else {
                                    $contact = array();
                                } if (empty($contact)) {
                                    ?>
                                    
                                    <?php
                                } else {
                                    foreach ($contact as $kd => $mc) {
                                        ?>
                                        <tr class="rowclone">
                                            <td><span class="mseq"><?php echo $kd + 1 ?></span></td>
                                            <td style="padding:5px">

                                                <div style="max-width:250px" class="input-group">
                                                    <input type="text" class="form-control from_weight" value='<?php echo $mc['name'] ?>' disabled="" name="contact_name[]" aria-describedby="basic-addon2">

                                                </div>
                                            </td>
                                            <td style="padding:5px">

                                                <div style="max-width:250px" class="input-group">
                                                    <input type="text" class="form-control to_weight"  value='<?php echo $mc['designation'] ?>' disabled="" name="designation[]" aria-describedby="basic-addon2-p">

                                                </div>

                                            </td>
                                            <td style="padding:5px">

                                                <div style="max-width:250px" class="input-group">
                                                    <input type="text" class="form-control to_weight"  value='<?php echo $mc['email_id'] ?>' disabled="" name="email_id_contact[]" aria-describedby="basic-addon2-p">

                                                </div>

                                            </td>
                                            <td style="padding:5px">

                                                <div style="max-width:250px" class="input-group">
                                                    <input type="text" class="form-control to_weight"  value='<?php echo $mc['mobile_no'] ?>' disabled="" name="mobile_no[]" aria-describedby="basic-addon2-p">

                                                </div>

                                            </td>
                                            <td style="padding:5px">
                                                <?php
                                                $mks = "";
                                                if ($mc['is_default'] == "1") {
                                                    $mks = 'checked="checked"';
                                                }
                                                ?>
                                                <div style="max-width:250px" class="input-group">
                                                    <input <?php echo $mks; ?> type="radio" class="f" name="is_default_contact[]" value="1" disabled="" aria-describedby="basic-addon2-p">

                                                </div>

                                            </td>
                                             

                                        </tr>
                                        <?php
                                    }
                                }
                                ?>

                            </tbody>
                        </table>
                    </div><!-- table-responsive -->
                </div>
            </div>



            <div class="col-sm-12">
                <div style="    margin-top: 20px;" class="card card-table-one">
                    <h6 class="card-title">Address</h6>
                    <p class="az-content-text mg-b-20">Add Address.</p>
                    <div class="table-responsive">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th class="wd-5p">&nbsp;</th>
                                    <th>Country</th>
                                    <th>State</th>
                                    <th>City</th>
                                    <th>Address</th>
                                    <th>Pincode</th>
                                    <th>Default</th>
                                    

                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                if ($this->generals_func->set_field($edit, 'vendor_id') != "") {
                                    $contact = $this->UtilityModel->getRequiredData('M', $this->db_ext . "vendor_address", '*', array('vendor_id' => $this->generals_func->set_field($edit, 'vendor_id')), 'sequence');
                                } else {
                                    $contact = array();
                                } if (empty($contact)) {
                                    ?>
                                    
                                    <?php
                                } else {
                                    foreach ($contact as $kd => $mc) {

                                         ?>
                                        <tr class="rowcloneb">
                                            <td><span class="mseq"><?php echo $kd + 1 ?></span></td>
                                            <td style="padding:5px">

                                                <div style="width:150px" class="input-group">
                                                    <?php
                                                    echo $this->UtilityModel->getSingColumData($this->db_ext . 'country', 'name', array('country_code' => $mc['country_code']));

                                                    ?>
                                                </div>
                                            </td>
                                            <td style="padding:5px">
                                                <div style="width:150px" class="input-group">
                                                   <?php
                                                    echo $this->UtilityModel->getSingColumData($this->db_ext . 'state', 'name', array('state_code' => $mc['state_code']));

                                                    ?>
                                                </div>
                                            </td>
                                            <td style="padding:5px">
                                                <div style="width:150px" class="input-group">
                                                    <?php
                                                    echo $this->UtilityModel->getSingColumData($this->db_ext . 'city', 'name', array('city_id' => $mc['city_id']));

                                                    ?>
                                                </div>

                                            </td>
                                            <td style="padding:5px">

                                                <div style="width:150px" class="input-group">
                                                    <?php echo form_textarea(array('name' => 'address[]', 'id' => 'address_m_0', 'value' => $this->generals_func->set_field($mc, 'address'),'disabled'=>'disabled', 'class' => 'disabled form-control address_m is_alphabets', 'minlength' => '1', 'maxlength' => '1000', 'style' => 'height:100px',)); ?>
                                                    <?php echo form_error('address'); ?>
                                                </div>

                                            </td>
                                            <td style="padding:5px">
                                                <div style="width:150px" class="input-group">
                                                    <?php echo form_input(array('name' => 'pincode[]', 'id' => 'pincode_m_0', 'value' => $this->generals_func->set_field($mc, 'pincode'), 'disabled'=>'disabled','class' => 'disabled form-control pincode_m is_alphabets', 'minlength' => '1', 'maxlength' => '10',)); ?>
                                                    <?php echo form_error('pincode'); ?>
                                                </div>
                                            </td>

                                            <td style="padding:5px">
                                                <?php
                                                $mks = "";
                                                if ($mc['is_default'] == "1") {
                                                    $mks = 'checked="checked"';
                                                }
                                                ?>
                                                <div style="max-width:250px" class="input-group">
                                                    <input <?php echo $mks; ?>  disabled="" type="radio" class="f" name="is_default_contact[]" value="1" aria-describedby="basic-addon2-p">

                                                </div>

                                            </td>
                                            

                                        </tr>
    <?php
    }
}
?>

                            </tbody>
                        </table>
                    </div><!-- table-responsive -->
                </div>
            </div>




            <div class="col-sm-12">
                <div style="    margin-top: 20px;" class="card card-table-one">
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
                                 <?php
                                if ($this->generals_func->set_field($edit, 'vendor_id') != "") {
                                    $contact = $this->UtilityModel->getRequiredData('M', $this->db_ext . "vendor_bank", '*', array('vendor_id' => $this->generals_func->set_field($edit, 'vendor_id')), 'sequence');
                                } else {
                                    $contact = array();
                                } if (empty($contact)) {
                                    ?>
                                 
                                <?php } else {
                                    foreach ($contact as $kd => $mc) {
                                        ?>
                                <tr class="rowclonea">
                                    <td><span class="mseq"><?php echo $kd+1 ?></span></td>
                                    <td style="padding:5px">

                                        <div style="max-width:250px" class="input-group">
                                            <input  disabled="" type="text" class="form-control from_weight" value='<?php echo $this->generals_func->set_field($mc, 'name') ?>' name="bank_name[]" aria-describedby="basic-addon2">

                                        </div>
                                    </td>
                                    <td style="padding:5px">

                                        <div style="max-width:250px" class="input-group">
                                            <input  disabled="" type="text" class="form-control to_weight" value='<?php echo $this->generals_func->set_field($mc, 'bank') ?>' name="bank[]" aria-describedby="basic-addon2-p">

                                        </div>

                                    </td>
                                    <td style="padding:5px">

                                        <div style="max-width:250px" class="input-group">
                                            <input  disabled="" type="text" class="form-control to_weight" value='<?php echo $this->generals_func->set_field($mc, 'ifsc_code') ?>' name="ifsc_code[]" aria-describedby="basic-addon2-p">

                                        </div>

                                    </td>
                                    <td style="padding:5px">

                                        <div style="max-width:250px" class="input-group">
                                            <input   disabled=""type="text" class="form-control to_weight" value='<?php echo $this->generals_func->set_field($mc, 'account_number') ?>' name="account_no[]" aria-describedby="basic-addon2-p">

                                        </div>

                                    </td>
                                    <td style="padding:5px">

                                        <div style="max-width:250px" class="input-group">
                                            <input disabled="" type="radio" class="" name="is_default_bank[]" value="1" aria-describedby="basic-addon2-p">

                                        </div>

                                    </td>
                                   

                                </tr>
                                <?php
                                    }
                                } ?>

                            </tbody>
                        </table>
                    </div><!-- table-responsive -->
                </div>
            </div>

        </div>



    </div>


   

</div>


<script src="<?php echo base_url('assets/js/jquery.validate.js') ?>"></script>



<script>
    $(document).ready(function () {
        //$('.select2').chosen();
    });
    $(document).on('change', '.country_m', function () {
        var main_attr = $(this).attr('main-attr');
        var country_code = $(this).val();
        $.ajax({
            type: "POST",
            dataType: "json",
            url: "<?php echo base_url('ajaxhandler/getStateListByCountry') ?>",
            data: {country_code: country_code},
            success: function (data) {

                if (data['status'] == true) {
                    $('#m_state_' + main_attr).html(data['html']);
                    // $("#m_state_" + main_attr).chosen();
                    $("#m_state_" + main_attr).trigger("liszt:updated");
                } else {
                    alert(data['message']);
                    $('#m_state_' + main_attr).html("");
                    //  $("#m_state_" + main_attr).chosen();
                    $("#m_state_" + main_attr).trigger("liszt:updated");
                }
                $('#m_city_' + main_attr).html("");
                //  $("#m_city_" + main_attr).chosen();
                $("#m_city_" + main_attr).trigger("liszt:updated");
            }
        });
    });

    $(document).on('change', '.state_m', function () {
        var main_attr = $(this).attr('main-attr');
        var state_code = $(this).val();
        $.ajax({
            type: "POST",
            dataType: "json",
            url: "<?php echo base_url('ajaxhandler/getCityListByState') ?>",
            data: {state_code: state_code},
            success: function (data) {

                if (data['status'] == true) {
                    $('#m_city_' + main_attr).html(data['html']);
                    //$("#m_city_" + main_attr).chosen();
                    $("#m_city_" + main_attr).trigger("liszt:updated");
                } else {
                    alert(data['message']);
                    $('#m_city_' + main_attr).html("");
                    // $("#m_city_" + main_attr).chosen();
                    $("#m_city_" + main_attr).trigger("liszt:updated");
                }

            }
        });
    });
    $(document).on('change', '#enable_gst', function () {
        if ($('#enable_gst').is(":checked")) {
            $('#mainGstBlock').show();
            // $('.approval_required_user').removeAttr('readonly');

        } else {
            $('#mainGstBlock').hide();
            // $('.approval_required_user').attr('readonly','readonly');
        }

    });
    $("#haashtag_ajax_form").validate({

    });

    $("form#haashtag_ajax_form").submit(function (e) {
        e.preventDefault();
        var formData = new FormData(this);
        show_load();
        $.ajax({
            url: '<?php echo base_url('vendor/manageVendor') ?>',
            type: 'POST',
            data: formData,
            success: function (data) {
                var items = data.split('###');

                if (items[0] == "1")
                {
                    toastr.success(items[1]);
                    window.location.href = items[2];

                    return true;
                } else {
                    toastr.error(items[1]);
                    $('#savedata').hide();
                    return false;
                }
            },
            cache: false,
            contentType: false,
            processData: false
        });
    });
    $(document).on('click', '.add-row', function () {
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


    $(document).on('click', '.remove-row', function () {

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




    $(document).on('click', '.add-rowb', function () {
        var length = $(".rowcloneb").length;
        var attr = $(this).attr('main-attr');
        $trNew = $(".rowcloneb:last").clone();

        if ($('#country_options_' + attr).val() == "") {
            toastr.error('Country is required');
            return false;
        }
        if ($('#m_state_' + attr).val() == "") {
            toastr.error('State is required');
            return false;
        }
        if ($('#m_city_' + attr).val() == "") {
            toastr.error('City is required');
            return false;
        }
        if ($trNew.find('.address_m').val() == "") {
            toastr.error('Address is required');
            return false;
        }
        if ($trNew.find('.pincode_m').val() == "") {
            toastr.error('Pincode is required');
            return false;
        }


        $(".rowcloneb:last").after($trNew);
        $(".rowcloneb:last").find('input').val('');
        $(".rowcloneb:last").find('select').val('');
        $(".rowcloneb:last").find('select.country_m').attr('id', "country_options_" + length).attr('main-attr', length);

        $(".rowcloneb:last").find('select.state_m').attr('id', "m_state_" + length).html('').attr('main-attr', length);
        $(".rowcloneb:last").find('select.city_m').attr('id', "m_city_" + length).attr('main-attr', length).html('');


        $(".rowcloneb:last").find('.add-rowb').attr('main-attr', length);
        $(".rowcloneb:last").find('.remove-rowb').attr('main-attr', length);
        $(".rowcloneb:last").find('.main-oas').attr('id', 'mains' + length);
        $(".rowcloneb:last").find('.mseq').html(length + 1);
        if ($(".rowcloneb").length > 1)

        {
            $('.remove-rowb').show();
        } else {
            $('.remove-rowb').hide();
        }





    })


    $(document).on('click', '.remove-rowb', function () {

        if ($(".rowcloneb").length > 1)

        {
            var mthis = $(this).parent().parent().find('input').val('');
            $(this).parent().parent().remove();
        } else {

        }

        if ($(".rowcloneb").length > 1)

        {
            $('.remove-rowb').show();
        } else {
            $('.remove-rowb').hide();
        }

    })


    $(document).on('blur', '#vendor_code', function () {


        $.ajax({
            type: "POST",
            dataType: "json",
            url: "<?php echo base_url('vendor/checkVendorCode') ?>",
            data: {
                vendor_code: $('#vendor_code').val(),

                edit_id: '<?php echo $this->generals_func->set_field($edit, 'vendor_id') ?>'
            },

            success: function (data) {
                if (data['status']) {
                    toastr.success(data['message']);
                    return true;
                } else {
                    toastr.error(data['message']);
                    return false;
                }
            }
        });


    });
    $(document).on('click', '.add-rowa', function () {
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


    $(document).on('click', '.remove-rowa', function () {

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