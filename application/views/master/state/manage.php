<?php echo form_open_multipart("", array('id' => 'haashtag_ajax_form', 'class' => 'form-horizontal ')); ?>


<div class="row  mb-4">
    
    
    <div class="form-group col-md-6">
        <label for="username"><?php echo lang('country') ?> <span class="m-required"></span></label>
        <?php  echo form_dropdown('country_code', $country_option, $this->generals_func->set_field($edit, 'country_code'), 'class="form-control chzn-select js-data-ajax" data-endpoint="locations" data-placeholder="' . lang('select_a_country') . '"     id="country_options"');
                       
        ?>
    </div>
    
    
    <div class="form-group col-md-6">
        <label for="username"><?php echo lang('zone') ?> <span class="m-required"></span></label>
        <?php  echo form_dropdown('zone_code', $zone_option, $this->generals_func->set_field($edit, 'zone_code'), 'class="form-control chzn-select js-data-ajax" data-endpoint="locations" data-placeholder="' . lang('select_a_zone') . '"     id="zone_options"');
                       
        ?>
    </div>

    <div class="form-group col-md-4">
        <label for="username"><?php echo lang('state_code') ?> <span class="m-required"></span></label>
        <?php
        if ($this->generals_func->set_field($edit, 'state_code') != "") {
            echo form_input(array('name' => 'state_code', 'id' => 'state_code', 'value' => $this->generals_func->set_field($edit, 'state_code'), 'class' => 'form-control is_alphabets', 'minlength' => '1', 'disabled' => 'disabled', 'maxlength' => '5',));
        } else {
            echo form_input(array('name' => 'state_code', 'id' => 'state_code', 'value' => $this->generals_func->set_field($edit, 'state_code'), 'class' => 'form-control is_alphabets', 'minlength' => '1', 'maxlength' => '5', 'required' => 'required'));
            ?>
        <?php } echo form_error('name'); ?>
    </div>
    <div class="form-group col-md-4">
        <label for="username"><?php echo lang('name') ?> <span class="m-required"></span></label>
        <?php echo form_input(array('name' => 'name', 'id' => 'name', 'value' => $this->generals_func->set_field($edit, 'name'), 'class' => 'form-control is_alphabets', 'minlength' => '1', 'maxlength' => '100', 'required' => 'required')); ?>
        <?php echo form_error('name'); ?>
    </div>
    
    <div class="form-group col-md-4">
        <label for="username"><?php echo lang('GST_code') ?> <span class="m-required"></span></label>
            <?php echo form_input(array('name' => 'gst_code', 'id' => 'gst_code', 'value' => $this->generals_func->set_field($edit, 'gst_code'), 'class' => 'form-control is_alphabets', 'minlength' => '2', 'maxlength' => '2', 'required' => 'required')); ?>
        <?php echo form_error('gst_code'); ?>
    </div>



</div>


<?php echo form_hidden('redirect', $this->input->get_post('redirect')) ?>

<?php echo form_hidden('edit_id', $this->generals_func->set_field($edit, 'state_code')) ?>






</div>

<div class="main-submit-fotter-block">
    <a class="btn btn-danger" href="javascript:;" data-dismiss="modal"><?php echo lang('cancel') ?></a>
    <button type="submit" class="btn btn-primary"><?php echo lang('save_changes') ?></button>
</div>
<?php echo form_close(); ?>

<script>

</script>
