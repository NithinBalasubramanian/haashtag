<?php echo form_open_multipart("", array('id' => 'haashtag_ajax_form', 'class' => 'form-horizontal ')); ?>


<div class="row  mb-4">
    
    <div class="form-group col-md-4">
        <label for="username"><?php echo lang('country_code') ?> <span class="m-required"></span></label>
        <?php if($this->generals_func->set_field($edit, 'country_code') != "") {
            echo form_input(array('name' => 'country_code', 'id' => 'country_code', 'value' => $this->generals_func->set_field($edit, 'country_code'), 'class' => 'form-control is_alphabets', 'minlength' => '1', 'disabled'=>'disabled', 'maxlength' => '5', ));
        }else { 
            echo form_input(array('name' => 'country_code', 'id' => 'country_code', 'value' => $this->generals_func->set_field($edit, 'country_code'), 'class' => 'form-control is_alphabets', 'minlength' => '1', 'maxlength' => '5', 'required' => 'required')); ?>
        <?php } echo form_error('name'); ?>
    </div>
    <div class="form-group col-md-4">
        <label for="username"><?php echo lang('name') ?> <span class="m-required"></span></label>
        <?php echo form_input(array('name' => 'name', 'id' => 'name', 'value' => $this->generals_func->set_field($edit, 'name'), 'class' => 'form-control is_alphabets', 'minlength' => '1', 'maxlength' => '100', 'required' => 'required')); ?>
        <?php echo form_error('name'); ?>
    </div>

<div class="form-group col-md-4">
        <label for="username"><?php echo lang('country_phone_code') ?> <span class="m-required"></span></label>
        
            <div class="input-group">
                <div class="input-group-prepend">
                  <div class="input-group-text">
                    <i class="typcn typcn-plus-outline tx-24 lh--9 op-6"></i>
                  </div><!-- input-group-text -->
                </div><!-- input-group-prepend -->
               <?php echo form_input(array('name' => 'phone_code', 'id' => 'phone_code', 'value' => $this->generals_func->set_field($edit, 'phone_code'), 'class' => 'form-control is_alphabets', 'minlength' => '2', 'maxlength' => '2', 'required' => 'required')); ?>
              </div>
            
        <?php echo form_error('phone_code'); ?>
    </div>
     <div class="form-group col-md-4">
        <label for="username"><?php echo lang('type') ?> <span class="m-required"></span></label>
        
        <?php
        $type = $this->generals_func->set_field($edit, 'type');
        $check1 = "";
            $check2 = "checked='checked'";
        if($type == 'D') {
            $check1 = "checked='checked'";
            $check2 = "";
        }
        ?>
        <label class="rdiobox">
                <input <?php echo $check1 ?> name="rdio"  value="D"  name="type" type="radio">
                <span><?php echo lang('domestic') ?></span>
              </label>
        <label class="rdiobox">
                <input <?php echo $check2 ?> name="rdio" value="I"  name="type" type="radio">
                <span><?php echo lang('international') ?></span>
              </label>
        <?php echo form_error('name'); ?>
    </div>
    

</div>


<?php echo form_hidden('redirect', $this->input->get_post('redirect')) ?>

<?php echo form_hidden('edit_id', $this->generals_func->set_field($edit, 'country_code')) ?>






</div>

<div class="main-submit-fotter-block">
    <a class="btn btn-danger" href="javascript:;" data-dismiss="modal"><?php echo lang('cancel') ?></a>
    <button type="submit" class="btn btn-primary"><?php echo lang('save_changes') ?></button>
</div>
<?php echo form_close(); ?>

<script>

</script>
