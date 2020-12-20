<link href="<?php echo base_url('assets/plugins/chosen/chosen.min.css') ?>" rel="stylesheet" type="text/css" />
<script src="<?php echo base_url('assets/plugins/chosen/chosen.jquery.min.js') ?>"></script>
<link href="<?php echo base_url('assets/plugins/file-upload/file-upload-with-preview.min.css') ?>" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="<?php echo base_url('assets/plugins/editors/markdown/simplemde.min.css') ?>">
<script src="<?php echo base_url('assets/js/jquery.validate.js') ?>"></script>
<script src="<?php echo base_url('assets/plugins/file-upload/file-upload-with-preview.min.js') ?>"></script>
<script src="<?php echo base_url('assets/plugins/editors/markdown/simplemde.min.js') ?>"></script>
  <script src="<?php echo base_url('assets/plugins/editors/markdown/custom-markdown.js') ?>"></script>
      <link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/css/forms/switches.css') ?>">
<div class="layout-px-spacing">
   <div class=" layout-top-spacing">
     <style>
     .main-p-cat {
    background: #9C27B0;
    padding: 10px;
    border-radius: 5px;
    color: #fff;
}
.row.popt {
    border: 1px solid #f2f2f2;
    margin: 0;
    margin: 15px 0px;
    padding: 5px;
}
.main-s-cat {
    background: #f2f2f2;
    padding: 10px;
    color: #000;
    border-radius: 5px;
}
a.checkalls {
    background: #000;
    color: #fff;
    padding: 4px 9px;
    display: inline-block;
    position: absolute;
    right: 20px;
    margin-top: -4px;
}
a.checkalls.checked {
    background: #e2a03f;
}
     </style>

     <div class="statbox  box box-shadow">
                                <div class="widget-header">
                                    <div class="row">
                                        <div class="col-xl-12 col-md-12 col-sm-12 col-12">
                                            <h4><?php echo lang('add_custom_field').' - '.lang($view_type) ?></h4>
                                        </div>
                                    </div>
                                </div>
                                <div class="widget-content widget-content-area">
                                  <?php echo $message; ?>
                                  <?php echo form_open_multipart("customField/manage/".$view_type, array('id' => 'tagntrack_form', 'class' => 'form-horizontal ')); ?>

                                        <div class="form-row mb-4">
                                            <div class="form-group col-md-6">
                                                <label for="from_mail_name"><?php echo lang('name') ?> <span class="m-required"></span></label>
                                                <?php echo form_input(array('name' => 'name','id'=>'from_mail_name', 'value'=>$this->generals_func->set_field($edit, 'name'),  'class' => 'form-control is_alphabets','minlength'=>'3', 'maxlength' => '50', 'required' => 'required' )); ?>
                                                <?php echo form_error('name'); ?>
                                            </div>

                                            <div class="form-group col-md-6">
                                                <label for="description"><?php echo lang('description') ?> </label>
                                                <?php echo form_textarea(array('name' => 'description','style'=>'height:50px','id'=>'description', 'value'=>$this->generals_func->set_field($edit, 'description'),  'class' => 'form-control is_alphabets')); ?>
                                                <?php echo form_error('description'); ?>
                                            </div>

                                        </div>
                                        <div class="row  mb-4">

                                          <div class="col-sm-6">
                                              <label for="input_type"><?php echo lang('input_type') ?><span class="m-required"></span> </label>
                                            <?php echo form_dropdown('input_type', $input_type_option, $this->form_validation->set_value('input_type', $this->generals_func->set_field($edit, 'input_type')), 'class="form-control chzn-select" required="required" id="input_type"'); ?>

                                            <?php echo form_error('input_type'); ?>
                                          </div>








                                          <div class="col-sm-6">
                                            <div class="alert alert-warning"><?php echo lang('on_checking_this_user_has_to_fill_this_field') ?></div>

                                            <div class="form-check pl-0">
                                                <div class="custom-control custom-checkbox checkbox-info">
                                                  <?php
                                                  $checked = false;

                                                  if($this->generals_func->set_field($edit, 'required') == '1'){
                                                      $checked = true;

                                                   }
                                                  echo form_checkbox('required', '1', $checked, "class='custom-control-input' id='required' "); ?>
                                                    <label class="custom-control-label" for="required"><?php echo lang('required') ?></label>
                                                </div>
                                            </div>
                                          </div>



                                          <?php
                                          $inputDetails = array();
                                          $showTextView = "style='display:none'";
                                          $showOptionView = "style='display:none'";
                                          $optionsList = array();

                                          if($this->generals_func->set_field($edit, 'input_type') != "") {
                                            $inputDetails = $this->UtilityModel->getRequiredData('S', $this->db_ext . 'input_type', '*',array('type_code'=>$this->generals_func->set_field($edit, 'input_type')));
                                            if($inputDetails['is_multi'] == '1'){
                                              $showTextView = "style='display:none'";
                                              $showOptionView = "";
                                              $optionsList = $this->UtilityModel->getRequiredData('M', $this->db_ext . 'custom_field_option', '*',array('field_id'=>$this->generals_func->set_field($edit, 'field_id')));

                                            }else{
                                              $showOptionView = "style='display:none'";
                                              $showTextView = "";
                                            }
                                          }
                                           ?>

                                          <div <?php echo $showTextView ?> id="main_text_view" class="col-sm-6">
                                            <div class="text_type">
                                            <label for="minlength"><?php echo lang('minlength') ?> </label>
                                            <?php echo form_input(array('name' => 'minlength','id'=>'minlength', 'value'=>$this->generals_func->set_field($edit, 'minlength'),  'class' => 'form-control is_alphabets','minlength'=>'1', 'maxlength' => '50',  )); ?>
                                            <?php echo form_error('minlength'); ?>
                                          </div>


                                          <div class="text_type">
                                          <label for="maxlength"><?php echo lang('maxlength') ?> </label>
                                          <?php echo form_input(array('name' => 'maxlength','id'=>'maxlength', 'value'=>$this->generals_func->set_field($edit, 'maxlength'),  'class' => 'form-control is_alphabets','minlength'=>'1', 'maxlength' => '50',  )); ?>
                                          <?php echo form_error('maxlength'); ?>
                                        </div>

                                          </div>



                                          <div <?php echo $showOptionView; ?> id="main_option_view" class="col-sm-6">
                                            <div class="options_type">

                                            <table style="margin-top:10px" class="table table-borderd">
                                                <thead>
                                                   <th><?php echo lang('options') ?></th>
                                                   <th></th>
                                                </thead>
                                                <tbody>
                                                  <?php if(empty($optionsList)) { ?>
                                                    <tr class="add_row">
                                                       <td>
                                                         <?php echo form_input(array('name' => 'options[]',  'value'=>$this->generals_func->set_field($edit, 'options'),  'class' => 'form-control is_alphabets','minlength'=>'1', 'maxlength' => '50',  )); ?>
                                                         <?php echo form_error('options[]'); ?>
                                                       </td>
                                                       <td>
                                                          <a href="javascript:;" style="display:none" class="btn btn-danger remove"><i class="fa fa-minus"></i></a>
                                                          <a href="javascript:;" class="btn btn-warning add"><i class="fa fa-plus"></i></a>
                                                       </td>
                                                    </tr>
                                                  <?php } else {
                                                    foreach($optionsList as $mpo){
                                                      ?>
                                                      <tr class="add_row">
                                                         <td>
                                                           <?php echo form_input(array('name' => 'options[]',  'value'=>$mpo['option_value'],  'class' => 'form-control is_alphabets','minlength'=>'1', 'maxlength' => '50',  )); ?>
                                                           <?php echo form_error('options[]'); ?>
                                                           <?php echo form_hidden('opt_id[]',$mpo['option_id']); ?>
                                                         </td>
                                                         <td>
                                                            <a href="javascript:;" style="display:none" class="btn btn-danger remove"><i class="fa fa-minus"></i></a>
                                                            <a href="javascript:;" class="btn btn-warning add"><i class="fa fa-plus"></i></a>
                                                         </td>
                                                      </tr>
                                                      <?php
                                                    }

                                                  } ?>
                                                </tbody>
                                            </table>
                                          </div>




                                          </div>



                                          </div>


                                          <div class="row  mb-4">
                                              <div class="alert col-sm-12 alert-primary">
                                                <div class="custom-control custom-checkbox checkbox-info">
                                                  <?php
                                                  $checked = false;
                                                  $mstyle="style='display:none'";

                                                  if($this->generals_func->set_field($edit, 'is_child') == '1'){
                                                      $checked = true;
                                                      $mstyle = "";
                                                         }
                                                  echo form_checkbox('is_child', '1', $checked, "class='custom-control-input' id='is_child' "); ?>
                                                    <label class="custom-control-label" for="is_child"><?php echo lang('is_this_custom_field_is_clild_for_other_custom_field') ?></label>
                                                </div>
                                              </div>

                                              <div class="col-sm-12" id="parent_details" <?php echo $mstyle ?>>

                                                <div class="alert col-sm-12 alert-warning">
                                                      <?php echo lang('note_this_is_applictle_for_if_input_type_is_checkbox_or_radio_or_select') ?>
                                                </div>


                                                <div class=" col-sm-12">
                                                  <?php if(!empty($this->data['custom_field_arr'])) { ?>
                                                  <label for="parent_id"><?php echo lang('parent_custom_field') ?> <span class="m-required"></span></label>
                                                  <?php echo form_dropdown('parent_id', $parent_option, $this->form_validation->set_value('parent_id', $this->generals_func->set_field($edit, 'parent_id')), 'class="form-control chzn-select" id="parent_id"'); ?>

                                                  <?php echo form_error('parent_id'); ?>
                                                </div>

                                                <div id="option_main_data">

                                                  <?php
                                                  if($this->generals_func->set_field($edit, 'field_id') != ""){
                                                    $parent_options = $this->UtilityModel->getRequiredData('M', $this->db_ext . 'custom_field_option', '*',array('field_id'=>$this->generals_func->set_field($edit, 'parent_id')));

                                                  }else{
                                                    $parent_options = array();
                                                  }
                                                  
                                                  $html = "<div style='margin-top:15px' class='alert alert-warning'>".lang('on_select_of_this_option_above_details_will_be_displayed')."</div><div style='margin:10px 15px' class='row'>";
                                                  $mopt = explode(',',$this->generals_func->set_field($edit, 'parent_option_id'));
                                                  foreach($parent_options as $opt){

                                                    $checked = false;

                                                    if(in_array($opt['option_id'],$mopt)){
                                                        $checked = true;

                                                     }

                                                     $html .=  '<div class="col-sm-3 custom-control custom-checkbox checkbox-info">'.


                                                        form_checkbox('parent_options[]', $opt['option_id'], $checked, "class='custom-control-input' id='is_child_".$opt['option_id']."' ").'
                                                         <label class="custom-control-label" for="is_child_'.$opt['option_id'].'">'.$opt['option_value'].'</label>
                                                     </div>';

                                                    ?>

                                                    <?php
                                                  }
                                                  $html .= "</div>";
                                                   echo $html;
                                                   ?>

                                                </div>
                                              <?php } else { ?>

                                                <div class="alert alert-danger">
                                                      <?php echo lang('no_parent_custom_field'); ?>
                                                </div>
                                              <?php } ?>

                                              </div>
                                          </div>


                                            </div>

                                        <div class="main-submit-fotter-block">
                                          <?php echo form_hidden('edit_id',$this->generals_func->set_field($edit, 'field_id')) ?>
                                          <a class="btn btn-danger" href="<?php echo base_url('customField/view/'.$view_type) ?>"><?php echo lang('cancel') ?></a>
                                      <button type="submit" class="btn btn-primary"><?php echo lang('save_changes') ?></button>
                                    </div>
                                    <?php echo form_close(); ?>


                                </div>
                            </div>


   </div>
</div>

<script>
$(document).ready(function() {
  $('#tagntrack_form').validate();

  $('#input_type').change(function(){

    var input_type = $('#input_type').val();
    $.ajax({
        method: "POST",
        dataType: "json",
        url: "<?php echo base_url(); ?>customField/getData/checkisMulti",
        data: {input_type: input_type}
    }).done(function (data) {
                if (data['status'] == true) {
                  if(data['mutioption'] == "1") {
                    $('#main_option_view').show();
                    $('#main_text_view').hide();
                  }else{
                    $('#main_option_view').hide();
                    $('#main_text_view').show();
                  }


                } else {
                    alert(data['message']);
                }

            });

  })

$('#is_child').change(function(){

  if($('#is_child').is(":checked"))
  {
      $('#parent_details').show();
  }else{
  $('#parent_details').hide();
  }
})

 });


$(document).on('change', '#parent_id', function () {

  var field_id = $('#parent_id').val();
  $.ajax({
      method: "POST",
      dataType: "json",
      url: "<?php echo base_url(); ?>customField/getData/parentOptions",
      data: {field_id: field_id,edit_id:'<?php echo $this->generals_func->set_field($edit, 'field_id') ?>',type:'<?php echo $view_type ?>'}
  }).done(function (data) {
              if (data['status'] == true) {

                  $('#option_main_data').html(data['html']);

              } else {
                  alert(data['message']);
              }

          });

});


  $(document).on('click', '.add', function () {
            var length = $(".add_row").length;

                $trNew = $(".add_row:last").clone();
                $(".add_row:last").after($trNew);
                $(".add_row:last").find('img').attr('src', '');
                $(".add_row:last").find('input').val('');
                $(".add_row:last").find('img').attr('id', 'image_preview' + length);
                $(".add_row:last").find('input[type="file"]').attr('id', length);
				$(".add_row:last").find('.img_seq').attr('id', 'img_seq_view' + length);
				$("#img_seq_view"+length).html(length+1);

        if(length+1 > 1)
        {
          $('.remove').show();
        }else{
          $('.remove').hide();
        }

        })

        $(document).on('click', '.remove', function () {
          var length = $(".add_row").length;
                    if ($(".add_row").length > 1)
                    {
                        $(this).parent().parent().remove();
                    }

                    if(length-1 > 1)
                    {
                      $('.remove').show();
                    }else{
                      $('.remove').hide();
                    }
                })
</script>
