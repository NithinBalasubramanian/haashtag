
<link href="<?php echo base_url('assets/plugins/file-upload/file-upload-with-preview.min.css') ?>" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="<?php echo base_url('assets/plugins/editors/markdown/simplemde.min.css') ?>">
<script src="<?php echo base_url('assets/js/jquery.validate.js') ?>"></script>
<script src="<?php echo base_url('assets/plugins/file-upload/file-upload-with-preview.min.js') ?>"></script>
<script src="<?php echo base_url('assets/plugins/editors/markdown/simplemde.min.js') ?>"></script>
  <script src="<?php echo base_url('assets/plugins/editors/markdown/custom-markdown.js') ?>"></script>
   <link rel="stylesheet" href="<?php echo base_url("assets/css/select2.min.css") ?>">
     <script src="<?php echo base_url('assets/bootstrap/js/common.min.js') ?>"></script>
<script src="<?php echo base_url('assets/js/jquery.validate.js') ?>"></script>

<div class="layout-px-spacing">
   <div class=" layout-top-spacing">

     <div class="statbox  box box-shadow">
                                <div class="widget-header">
                                    <div class="row">
                                        <div class="col-xl-12 col-md-12 col-sm-12 col-12">
                                            <h4><?php echo lang('user_details') ?></h4>
                                        </div>
                                    </div>
                                </div>
                                <div class="widget-content widget-content-area">

                                  <?php echo $message ?>
                                  <?php echo form_open_multipart("users/manage/".$this->generals_func->set_field($edit, 'user_id'), array('id' => 'tagntrack_form', 'class' => 'form-horizontal ')); ?>

                                        <div class="form-row mb-4">
                                            <div class="form-group col-md-6">
                                                <label for="name"><?php echo lang('name') ?> <span class="m-required"></span></label>
                                                <?php echo form_input(array('name' => 'name','id'=>'name', 'value'=>$this->generals_func->set_field($edit, 'name'),  'class' => 'form-control is_alphabets','minlength'=>'3', 'maxlength' => '50', 'required' => 'required' )); ?>
                                                <?php echo form_error('name'); ?>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label for="short_name"><?php echo lang('username') ?> <span class="m-required"></span></label>
                                                <?php echo form_input(array('name' => 'user_name','id'=>'user_name','value'=>$this->generals_func->set_field($edit, 'user_name'),  'class' => 'form-control is_alphabets','minlength'=>'1', 'maxlength' => '20', 'required' => 'required' )); ?>
                                                <?php echo form_error('user_name'); ?>

                                                <div id="checkUsernameStat"></div>
                                            </div>
                                        </div>
                                        <div class="form-row mb-4">
                                          <?php if($this->generals_func->set_field($edit, 'password') == "") { ?>
                                            <div class="form-group col-md-6">
                                                <label for="password"><?php echo lang('password') ?> <span class="m-required"></span></label>
                                                <?php echo form_input(array('name' => 'password','id'=>'password', 'value'=>$this->generals_func->set_field($edit, 'password'),  'class' => 'form-control is_alphabets','minlength'=>'3', 'maxlength' => '50', 'required' => 'required' )); ?>
                                                <?php echo form_error('password'); ?>
                                            </div>
                                          <?php } ?>
                                            <div class="form-group col-md-6">
                                                <label for="job_title"><?php echo lang('job_title') ?> <span class="m-required"></span></label>
                                                <?php echo form_input(array('name' => 'job_title','id'=>'job_title','value'=>$this->generals_func->set_field($edit, 'job_title'),  'class' => 'form-control is_alphabets','minlength'=>'1', 'maxlength' => '20', 'required' => 'required' )); ?>
                                                <?php echo form_error('job_title'); ?>
                                            </div>
                                        </div>
                                    
                                    <div class="form-row col-md-12" style="border: 1px dashed #ccc;
    padding: 10px;
    margin-bottom: 15px;
    background: #f7f7f7;">
                                        <div  style="margin-top:15px" class="form-check pl-0">
                                            <div class="alert alert-warning">
                                                <?php echo lang('note') ?> :: <?php echo lang('if_it_is_checked_user_cant_access_web_portal') ?>
                                            </div>
                                                  <div class="custom-control custom-checkbox checkbox-info">
                                                    <?php
                                                    $mC = false;
                                                    if($this->generals_func->set_field($edit, 'asset_user') == '1')
                                                    {
                                                        $mC = true;
                                                    }

                                                    echo form_checkbox('asset_user', '1', $mC, "class='custom-control-input' id='asset_user' "); ?>
                                                      <label class="custom-control-label" for="asset_user"><?php echo lang('asset_user') ?></label>
                                                  </div>
                                              </div>
                                    </div>



                                        <div class="form-row mb-4">
                                            <div class="form-group col-md-6">
                                                <label for="email_id"><?php echo lang('email_id') ?> <span class="m-required"></span></label>
                                                <?php echo form_input(array('name' => 'email_id','id'=>'email_id', 'value'=>$this->generals_func->set_field($edit, 'email_id'),  'class' => 'form-control is_alphabets','minlength'=>'3', 'maxlength' => '510', 'required' => 'required' )); ?>
                                                <?php echo form_error('email_id'); ?>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label for="job_title"><?php echo lang('mobile_number') ?> <span class="m-required"></span></label>
                                                <?php echo form_input(array('name' => 'mobile_number','id'=>'mobile_number','value'=>$this->generals_func->set_field($edit, 'mobile_number'),  'class' => 'form-control is_alphabets','minlength'=>'1', 'maxlength' => '20', 'required' => 'required' )); ?>
                                                <?php echo form_error('mobile_number'); ?>
                                            </div>
                                        </div>

                                        <div class="form-row mb-4">
                                            <div class="form-group col-md-4">
                                                <label for="employee_code"><?php echo lang('employee_code') ?> <span class="m-required"></span></label>
                                                <?php echo form_input(array('name' => 'employee_code','id'=>'employee_code', 'value'=>$this->generals_func->set_field($edit, 'emp_code'),  'class' => 'form-control is_alphabets','minlength'=>'1', 'maxlength' => '50', 'required' => 'required' )); ?>
                                                <?php echo form_error('employee_code'); ?>
                                                <div id="checkEmpCodeStat"></div>
                                            </div>
                                            <div class="form-group col-md-4">
                                                <label for="attend_tickets"><?php echo lang('attend_tickets') ?> <span class="m-required"></span></label>
                                                  <select class="form-control" name="attend_tickets" id="attend_tickets">
                                                      <option <?php if($this->generals_func->set_field($edit, 'attend_tickets') == '0') { echo 'selected'; } ?> value="0">NO</option>
                                                      <option <?php if($this->generals_func->set_field($edit, 'attend_tickets') == '1') { echo 'selected'; } ?> value="1">YES</option>
                                                  </select>
                                            </div>
                                            <div class="form-group col-md-4">
                                              <?php echo form_hidden('old_profile_pic',$this->generals_func->set_field($edit, 'profile_pic')); ?>
                                                <label for="profile_pic"><?php echo lang('profile_pic') ?> </label><br/>
                                                  <input type="file" id="profile_pic" name="profile_pic"/>

                                                  <?php if($this->generals_func->set_field($edit, 'profile_pic') !="") {
?>
<img src="<?php echo base_url('assets/uploads/users/profile_pic/'.$this->generals_func->set_field($edit, 'profile_pic')) ?>" style="width:125px">
<?php

                                                  } ?>
                                            </div>
                                        </div>


                                        <div class="row  mb-4">
                                              <div class="form-group col-md-6">
                                            <label for="country_options"><?php echo lang('country') ?> </label>
                                            <?php echo form_dropdown('country_code', $country_option, $this->form_validation->set_value('country_code', $this->generals_func->set_field($edit, 'country_code')), 'class="form-control select2 js-data-ajax" data-endpoint="locations" data-placeholder="Select a Location"  id="country_options"'); ?>

                        <?php echo form_error('country_code'); ?>
                                          </div>

                                        <div class="form-group col-md-6">
                                          <label for="country"><?php echo lang('address') ?> </label>
                                          <?php echo form_textarea(array('name' => 'address','style'=>'height:100px','value'=>$this->generals_func->set_field($edit, 'address'), 'id'=>'address', 'class' => 'form-control is_alphabets','minlength'=>'10' )); ?>
                                          <?php echo form_error('address'); ?>
                                            </div>

                                          </div>
                                        <div class="form-row mb-4">
                                            <div class="form-group col-md-4">
                                                <label for="inputCity"><?php echo lang('city') ?> </label>
                                                <?php echo form_input(array('name' => 'city','id'=>'inputCity','value'=>$this->generals_func->set_field($edit, 'city'),  'class' => 'form-control is_alphabets','minlength'=>'1' )); ?>
                                                <?php echo form_error('city'); ?>
                                            </div>
                                            <div class="form-group col-md-4">
                                                <label for="inputState"><?php echo lang('state') ?> </label>
                                                <?php echo form_input(array('name' => 'state','id'=>'inputState','value'=>$this->generals_func->set_field($edit, 'state'),  'class' => 'form-control is_alphabets','minlength'=>'1' )); ?>
                                                <?php echo form_error('state'); ?>
                                            </div>
                                            <div class="form-group col-md-4">
                                                <label for="inputZip"><?php echo lang('zip') ?> </label>
                                                <?php echo form_input(array('name' => 'zip_code','id'=>'inputZip','value'=>$this->generals_func->set_field($edit, 'zip_code'),  'class' => 'form-control is_alphabets','minlength'=>'1' )); ?>
                                                <?php echo form_error('zip_code'); ?>
                                            </div>
                                        </div>


                                        <div class="form-row mb-4">
                                            <div class="form-group col-md-4">
                                              <label for="role_options"><?php echo lang('role') ?> </label>
                                              <?php echo form_dropdown('role', $role_option, $this->form_validation->set_value('role', $this->generals_func->set_field($edit, 'role')), 'class="form-control select2 js-data-ajax" data-endpoint="locations" data-placeholder="'.lang('select_a_role').'"  id="role_options"'); ?>

                          <?php echo form_error('role'); ?>
                                            </div>
                                            <div class="form-group col-md-4">
                                                <label for="inputState"><?php echo lang('department') ?> </label>
                                                <?php
                                                $selectedDepartment = array();
              if($this->generals_func->set_field($edit, 'department_id') != ""){
              $selectedDepartment = explode(',',$this->generals_func->set_field($edit, 'department_id'));
              }
                                                 echo form_dropdown('department[]', $department_option,$selectedDepartment, 'class="form-control select2 js-data-ajax" data-endpoint="locations" data-placeholder="'.lang('select_a_department').'" multiple  id="department_options"'); ?>

                            <?php echo form_error('department'); ?>
                                            </div>
                                            <div class="form-group col-md-4">
                                                <label for="company_options"><?php echo lang('company') ?> </label>
                                                <?php
                                                $selectedCompany = array();
if($this->generals_func->set_field($edit, 'company_id') != ""){
  $selectedCompany = explode(',',$this->generals_func->set_field($edit, 'company_id'));
}
                                                echo form_dropdown('company[]', $company_option, $selectedCompany, 'class="form-control select2 js-data-ajax" data-endpoint="locations" data-placeholder="'.lang('select_a_company').'" multiple  id="company_options"'); ?>

                            <?php echo form_error('company'); ?>
                                            </div>
                                        </div>



                                        <div class="form row mb-4">

                                          <?php foreach($custom_fiels as $key => $custom) {
                                            echo form_hidden('custom_fiels[]',$custom['field_id']);
                                            $oldCustomDeetail = $this->UtilityModel->getRequiredData('S', $this->db_ext."user_custom_fields", "*",array('user_id'=> $this->generals_func->set_field($edit, 'user_id'),'field_id'=>$custom['field_id']));
                                            if(empty($oldCustomDeetail)){
                                              $oldCustomDeetail = array();
                                            }
                                            if($custom['is_multi'] == '0') {
                                              $input_arr = array();
                                              $input_arr['name'] = 'custom_field_'.$custom['field_id'];
                                              $input_arr['type'] = $custom['input_type'];
                                              $input_arr['id'] =  'custom_field_'.$custom['field_id'];
                                              $input_arr['value'] = $this->generals_func->set_field($oldCustomDeetail, 'value');
                                              $input_arr['class'] = "form-control is_alphabets";
                                              $requiredHtml = '';
                                              if($custom['required'] == '1'){
                                                $input_arr['required'] = 'required';
                                                  $requiredHtml = '<span class="m-required"></span>';
                                              }
                                              ?>
                                              <div class="col-sm-6">
                                              <label for="<?php echo $input_arr['id']  ?>"><?php echo $custom['name'] ?>  <?php echo $requiredHtml ?></label>
                                              <?php
                                              if($custom['input_type'] == 'file'){
                                                  if($input_arr['value'] != "") {
                                                    ?>
                                                      <a class="btn btn-primary" href="<?php echo base_url('assets/uploads/users/custom/'.$input_arr['value']) ?>" target="_blank">View File</a>
                                                    <?php
                                                  }
                                                ?>
                                                  <input type="hidden" value="<?php echo $input_arr['value'] ?>" name="old_<?php echo $input_arr['name'] ?>">
                                                <?php
                                              }
                                             echo form_input($input_arr);
                                               echo form_error('custom_field_'.$custom['field_id']);

                                            ?>
                                          </div>

                                        <?php } else  {
                                            $requiredHtml = '';
                                          if($custom['required'] == '1'){
                                            $requiredHtml = '<span class="m-required"></span>';
                                          }
                                          ?>
                                          <div class="col-sm-6 mb-4">
                                          <label for="<?php echo $input_arr['id']  ?>"><?php echo $custom['name'] ?> <?php echo $requiredHtml ?> </label>
                                          <?php

                                          $mainD = array();
                                          $val = "";
                                          if(!empty($oldCustomDeetail)){
                                            $val = $oldCustomDeetail['value'];
                                            if($val != "") {
                                              $mainD = explode(',',$val);

                                              ?>

<script>
$(document).ready(function() {
checkCustomChildWithVal(<?php echo $val ?>,<?php echo $custom['field_id'] ?>);
});
</script>                                                <?php
                                            }

                                          }
                                          if($custom['input_type'] == 'select') {


                                            ?>

                                            <select <?php if($custom['required'] == '1') { ?> required="required" <?php } ?> class="form-control" onchange="checkCustomChild(this,<?php echo $custom['field_id'] ?>)" name="custom_field_<?php echo $custom['field_id'] ?>">
                                              <option value=""><?php echo lang('select') ?></option>
                                                <?php foreach($custom['options'] as $opt) {
                                                  ?>
                                                  <option <?php if(in_array($opt['option_id'],$mainD))  { ?> selected="selected"  <?php } ?> value="<?php echo $opt['option_id'] ?>"><?php echo $opt['option_value'] ?></option>
                                                  <?php
                                                } ?>
                                            </select>

                                            <?php
                                          } else if($custom['input_type'] == 'checkbox') {

                                            ?>

                                            <div class="form-check pl-0">

                                                <div class="">
                                                  <?php
                                                  $checked = false;

                                                  $name = 'custom_field_'.$custom['field_id'].'[]';
                                                  $mReq = "";
                                                 if($custom['required'] == '1') { $mReq="required";  }
                                                  foreach($custom['options'] as $opt) {
                                                    $checked = false;
                                                    if(in_array($opt['option_id'],$mainD))  {
                                                      $checked = true;
                                                    }
                                                  echo form_checkbox($name, $opt['option_id'], $checked, "onclick='checkCustomChild(this,".$custom['field_id'].")' ".$mReq." id='mainopt_".$opt['option_id']."' class='' "); ?>


                                                  <label style="margin-right:10px" class="" for='mainopt_<?php echo $opt['option_id'] ?>'><?php echo $opt['option_value']  ?></label>
                                                  <?php
                                                }
                                                   ?>

                                                </div>
                                            </div>

                                            <?php
                                          }else if($custom['input_type'] == 'radio') { ?>


                                            <div class="form-check custom_field_opt_<?php echo $custom['field_id'] ?> pl-0">

                                                <div class="">
                                                  <?php
                                                  $checked = false;

                                                  $name = 'custom_field_'.$custom['field_id'].'[]';
                                                  $mReq = "";
                                                  if($custom['required'] == '1') { $mReq="required"; ?>
<script>
$(function(){
    var requiredCheckboxes = $('.custom_field_opt_<?php echo $custom['field_id'] ?> input');
    requiredCheckboxes.change(function(){
        if(requiredCheckboxes.is(':checked')) {
            requiredCheckboxes.removeAttr('required');
        } else {
            requiredCheckboxes.attr('required', 'required');
        }
    });
});
</script>
<?php
                                                  }
                                                  foreach($custom['options'] as $opt) {
                                                    $checked = false;

                                                    if(in_array($opt['option_id'],$mainD))  {
                                                      $checked = true;
                                                    }
                                                  echo form_radio($name, $opt['option_id'], $checked, "onclick='checkCustomChild(this,".$custom['field_id'].")' ".$mReq." id='mainopt_".$opt['option_id']."' class='' "); ?>


                                                  <label style="margin-right:10px" class="" for='mainopt_<?php echo $opt['option_id'] ?>'><?php echo $opt['option_value']  ?></label>
                                                  <?php
                                                }
                                                   ?>

                                                </div>
                                            </div>


                                            <?php
                                          }
                                          ?>

                                          <?php
                                          ?>
                                            <div id="custom_child_<?php echo $custom['field_id']  ?>">
                                            </div>
                                            </div>
                                          <?php
                                        }
                                          } ?>

                                        </div>







                                        <div class="form-row mb-4">
                                            <div class="form-group">
                                                <label for="country"><?php echo lang('description') ?> <span class="m-required"></span></label>
                                                <div id="toolbar-container">
                                              <?php echo form_textarea(array('name' => 'description', 'value'=>$this->generals_func->set_field($edit, 'description'), 'id'=>'editor-container', 'class' => 'form-control is_alphabets',  )); ?>

                                            </div>
                                              <?php echo form_error('description'); ?>
                                            </div>
                                          </div>



                                            <div class="alert alert-warning">
                                                <?php echo lang('allow_login_note') ?>
                                            </div>


                                          <div class="form-check pl-0">
                                              <div class="custom-control custom-checkbox checkbox-info">
                                                <?php
                                                $checked = true;
                                                $mstyle = "style='display:none'";
                                                $selectLang = array();
                                                if($this->generals_func->set_field($edit, 'web_access') == '1'){
                                                    $checked = true;

                                                }else{
                                                  $checked = false;
                                                }
                                                echo form_checkbox('allow_login', '1', $checked, "class='custom-control-input' id='allow_login' "); ?>
                                                  <label class="custom-control-label" for="allow_login"><?php echo lang('allow_login') ?></label>
                                              </div>
                                          </div>

                                          <?php
                                          if(empty($edit)) {
                                            if($is_email == '1') {
                                            ?>
                                            <div  style="margin-top:15px" class="form-check pl-0">
                                                <div class="custom-control custom-checkbox checkbox-info">
                                                  <?php

                                                  echo form_checkbox('send_email', '1', true, "class='custom-control-input' id='send_email' "); ?>
                                                    <label class="custom-control-label" for="send_email"><?php echo lang('send_email_user_slogan') ?></label>
                                                </div>
                                            </div>

                                            <?php
                                          }

                                            if($is_sms == '1') { ?>

                                              <div  style="margin-top:15px" class="form-check pl-0">
                                                  <div class="custom-control custom-checkbox checkbox-info">
                                                    <?php

                                                    echo form_checkbox('send_sms', '1', true, "class='custom-control-input' id='send_sms' "); ?>
                                                      <label class="custom-control-label" for="send_sms"><?php echo lang('send_sms_user_slogan') ?></label>
                                                  </div>
                                              </div>
                                              <?php
                                            }
                                          }
                                           ?>



                                            </div>

                                        <div class="main-submit-fotter-block">
                                          <?php echo form_hidden('edit_id',$this->generals_func->set_field($edit, 'user_id')); ?>

                                          <a class="btn btn-danger" href="<?php echo base_url('setting/general') ?>"><?php echo lang('cancel') ?></a>
                                      <button type="submit" class="btn btn-primary"><?php echo lang('save_changes') ?></button>
                                    </div>
                                    <?php echo form_close(); ?>


                                </div>
                            </div>


   </div>
</div>
<script src="https://maps.googleapis.com/maps/api/js?key=<?php echo $google_api_key ?>&v=3.exp&libraries=places"></script>
<script>
$(document).ready(function() {
  $('#tagntrack_form').validate();
  $(document).on('submit','#tagntrack_form',function(){
      showBlock();
  });

  $('.select2').select2();
  google.maps.event.addDomListener(document.getElementById('address_comple'), 'focus', geolocate);
  autocomplete.addListener('place_changed', fillInAddress);

  $('#logo').change(function(){

    $('.loj').removeClass('loj')
  })
  $('#fav_icon').change(function(){

    $('.jks').removeClass('jks')
  })



  $('#enable_multipe_language').change(function(){
     if($('#enable_multipe_language').is(":checked"))
     {
       $('#multipleLanguageBlock').show();
     }else{
       $('#multipleLanguageBlock').hide();
     }
  })


  $('#enable_depression').change(function(){
     if($('#enable_depression').is(":checked"))
     {
       $('#multipleDepressionBlock').show();
     }else{
       $('#multipleDepressionBlock').hide();
     }
  })



  new SimpleMDE({
      element: document.getElementById("editor-container"),
      spellChecker: false,
  });
 });


 var placeSearch, autocomplete;


 function geolocate() {

     if (navigator.geolocation) {
         navigator.geolocation.getCurrentPosition(function (position) {

             var geolocation = new google.maps.LatLng(
             position.coords.latitude, position.coords.longitude);
             var circle = new google.maps.Circle({
                 center: geolocation,
                 radius: position.coords.accuracy
             });
             autocomplete.setBounds(circle.getBounds());

             // Log autocomplete bounds here
             console.log(autocomplete.getBounds());
         });
     }
 }

 function fillInAddress(){
   var place = autocomplete.getPlace();
   var latitude = place.geometry.viewport.Ua.j;
   var lng = place.geometry.viewport.Ua.i;
   debugger;
   $('input[name=latitude]').val(latitude);
   $('input[name=longitude]').val(lng);
 }
 $('#user_name').change(function(){
   var user_name = $('#user_name').val();
   var id= '<?php echo $this->generals_func->set_field($edit, 'user_id') ?>';
   if(user_name != "") {
   $.ajax({
       method: "POST",
       dataType: "json",
       url: "<?php echo base_url(); ?>users/getData/checkUsername",
       data: {id: id,user_name:user_name}
   }).done(function (data) {
               if (data['status'] == true) {

               } else {
                   $('#user_name').val('');

               }
               $('#checkUsernameStat').html(data['message']);
           });
}else{
 $('#checkUsernameStat').html('<?php echo lang('user_name_is_required') ?>');
}
 })


function checkCustomChild(mthis,field_id){

  var selectedVal = mthis.value;
var id= '<?php echo $this->generals_func->set_field($edit, 'user_id') ?>';
  $.ajax({
      method: "POST",
      dataType: "json",
      url: "<?php echo base_url(); ?>users/getData/getCustumFieldChildData",
      data: {id: id,field_id:field_id,selectedVal:selectedVal}
  }).done(function (data) {
              $('#custom_child_'+field_id).html(data['html'])
          });
}


function checkCustomChildWithVal(value,field_id){

  var selectedVal = value;
var id= '<?php echo $this->generals_func->set_field($edit, 'user_id') ?>';
  $.ajax({
      method: "POST",
      dataType: "json",
      url: "<?php echo base_url(); ?>users/getData/getCustumFieldChildData",
      data: {id: id,field_id:field_id,selectedVal:selectedVal}
  }).done(function (data) {
              $('#custom_child_'+field_id).html(data['html'])
          });
}


 $('#employee_code').change(function(){
   var employee_code = $('#employee_code').val();
   var id= '<?php echo $this->generals_func->set_field($edit, 'user_id') ?>';
   if(employee_code != "") {
   $.ajax({
       method: "POST",
       dataType: "json",
       url: "<?php echo base_url(); ?>users/getData/checkEmpCode",
       data: {id: id,employee_code:employee_code}
   }).done(function (data) {
               if (data['status'] == true) {

               } else {
                   $('#employee_code').val('');

               }
               $('#checkEmpCodeStat').html(data['message']);
           });
 }else{
 $('#checkEmpCodeStat').html('<?php echo lang('employee_code_is_required') ?>');
 }
 })



</script>
