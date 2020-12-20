<?php echo form_open_multipart("", array('id' => 'haashtag_ajax_form', 'class' => 'form-horizontal ')); ?>


<div class="row  mb-4">

    <div class="form-group col-md-4">
        <label for="username"><?php echo lang('partner_code') ?> <span class="m-required"></span></label>
        <?php
        if ($this->generals_func->set_field($edit, 'partner_code') != "") {
            echo form_input(array('name' => 'partner_code', 'id' => 'partner_code', 'value' => $this->generals_func->set_field($edit, 'partner_code'), 'class' => 'form-control is_alphabets', 'minlength' => '1', 'disabled' => 'disabled', 'maxlength' => '5',));
        } else {
            echo form_input(array('name' => 'partner_code', 'id' => 'partner_code', 'value' => $this->generals_func->set_field($edit, 'partner_code'), 'class' => 'form-control is_alphabets', 'minlength' => '1', 'maxlength' => '5', 'required' => 'required'));
            ?>
<?php } echo form_error('name'); ?>
    </div>
    <div class="form-group col-md-4">
        <label for="username"><?php echo lang('name') ?> <span class="m-required"></span></label>
<?php echo form_input(array('name' => 'name', 'id' => 'name', 'value' => $this->generals_func->set_field($edit, 'name'), 'class' => 'form-control is_alphabets', 'minlength' => '1', 'maxlength' => '100', 'required' => 'required')); ?>
<?php echo form_error('name'); ?>
    </div>
<div class="form-group col-md-4">
        <label for="username"><?php echo lang('GST_no') ?> <span class="m-required"></span></label>
<?php echo form_input(array('name' => 'gst_no', 'id' => 'gst_no', 'value' => $this->generals_func->set_field($edit, 'gst_no'), 'class' => 'form-control is_alphabets', 'minlength' => '1', 'maxlength' => '100')); ?>
<?php echo form_error('gst_no'); ?>
    </div>
    <div class="form-group col-md-6">
        <label for="username"><?php echo lang('contact') ?> <span class="m-required"></span></label>
<?php echo form_input(array('name' => 'contact', 'id' => 'contact', 'value' => $this->generals_func->set_field($edit, 'contact'), 'class' => 'form-control is_alphabets', 'minlength' => '1', 'maxlength' => '100', 'required' => 'required')); ?>
<?php echo form_error('contact'); ?>
    </div>
    
     


    <div class="form-group col-md-6">
        <label for="username"><?php echo lang('email_id') ?> <span class="m-required"></span></label>
<?php echo form_input(array('name' => 'email_id', 'id' => 'email_id', 'value' => $this->generals_func->set_field($edit, 'email_id'), 'class' => 'form-control is_alphabets', 'minlength' => '1', 'maxlength' => '100', 'required' => 'required')); ?>
<?php echo form_error('email_id'); ?>
    </div>


    <div class="form-group col-md-12">
        <label for="username"><?php echo lang('description') ?> </label>
<?php echo form_textarea(array('name' => 'description', 'id' => 'description', 'value' => $this->generals_func->set_field($edit, 'description'), 'class' => 'form-control is_alphabets', 'minlength' => '1', 'maxlength' => '100')); ?>
<?php echo form_error('description'); ?>
    </div>

</div>


<?php echo form_hidden('redirect', $this->input->get_post('redirect')) ?>

<?php echo form_hidden('edit_id', $this->generals_func->set_field($edit, 'partner_code')) ?>






</div>

<div class="main-submit-fotter-block">
    <a class="btn btn-danger" href="javascript:;" data-dismiss="modal"><?php echo lang('cancel') ?></a>
    <button type="submit" class="btn btn-primary"><?php echo lang('save_changes') ?></button>
</div>
<?php echo form_close(); ?>

<script>

</script>
