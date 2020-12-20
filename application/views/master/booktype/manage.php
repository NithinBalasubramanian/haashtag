<?php echo form_open_multipart("", array('id' => 'haashtag_ajax_form', 'class' => 'form-horizontal ')); ?>


<div class="row  mb-4">
    
    <div class="form-group col-md-12">
        <label for="username"><?php echo lang('partner') ?> <span class="m-required"></span></label>
        <?php  echo form_dropdown('partner_code', $partner_option, $this->generals_func->set_field($edit, 'partner_code'), 'class="form-control chzn-select js-data-ajax" data-endpoint="locations" data-placeholder="' . lang('select_a_partner') . '"     id="partner_options"');
                       
        ?>
    </div>

    <div class="form-group col-md-12">
        <label for="username"><?php echo lang('book_type_name') ?> <span class="m-required"></span></label>
        <?php echo form_input(array('name' => 'name', 'id' => 'name', 'value' => $this->generals_func->set_field($edit, 'name'), 'class' => 'form-control is_alphabets', 'minlength' => '1', 'maxlength' => '100', 'required' => 'required')); ?>
        <?php echo form_error('name'); ?>
    </div>



</div>


<?php echo form_hidden('redirect', $this->input->get_post('redirect')) ?>

<?php echo form_hidden('edit_id', $this->generals_func->set_field($edit, 'book_type_id')) ?>






</div>

<div class="main-submit-fotter-block">
    <a class="btn btn-danger" href="javascript:;" data-dismiss="modal"><?php echo lang('cancel') ?></a>
    <button type="submit" class="btn btn-primary"><?php echo lang('save_changes') ?></button>
</div>
<?php echo form_close(); ?>

<script>

</script>
