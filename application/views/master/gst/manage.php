<?php echo form_open_multipart("", array('id' => 'haashtag_ajax_form', 'class' => 'form-horizontal ')); ?>


<div class="row  mb-4">


    <div class="form-group col-md-6">
        <label for="username"><?php echo lang('name') ?> <span class="m-required"></span></label>
        <?php echo form_input(array('name' => 'name', 'id' => 'name', 'value' => $this->generals_func->set_field($edit, 'name'), 'class' => 'form-control is_alphabets', 'minlength' => '1', 'maxlength' => '100', 'required' => 'required')); ?>
        <?php echo form_error('name'); ?>
    </div>

    <div class="form-group col-md-6">
        <label for="username"><?php echo lang('value_in_%') ?> <span class="m-required"></span></label>
        <?php echo form_input(array('name' => 'value', 'id' => 'value', 'value' => $this->generals_func->set_field($edit, 'value'), 'class' => 'form-control is_alphabets', 'minlength' => '1', 'maxlength' => '100', 'required' => 'required')); ?>
        <?php echo form_error('value'); ?>
    </div>

    <div class="form-group col-md-6">
        <label for="username"><?php echo lang('effective_date') ?> <span class="m-required"></span></label>
        <?php echo form_input(array('name' => 'effective_date','type'=>'date', 'id' => 'effective_date', 'value' => $this->generals_func->set_field($edit, 'effective_date'), 'class' => 'form-control is_alphabets', 'minlength' => '1', 'maxlength' => '100', 'required' => 'required')); ?>
        <?php echo form_error('effective_date'); ?>
    </div>

</div>


<?php echo form_hidden('redirect', $this->input->get_post('redirect')) ?>

<?php echo form_hidden('edit_id', $this->generals_func->set_field($edit, 'gst_id')) ?>






</div>

<div class="main-submit-fotter-block">
    <a class="btn btn-danger" href="javascript:;" data-dismiss="modal"><?php echo lang('cancel') ?></a>
    <button type="submit" class="btn btn-primary"><?php echo lang('save_changes') ?></button>
</div>
<?php echo form_close(); ?>

<script>

</script>
