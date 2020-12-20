<?php echo form_open_multipart("", array('id' => 'tagntrack_ajax_form', 'class' => 'form-horizontal ')); ?>



      <div class="form-row mb-4">

        <div class="form-group col-md-6">
            <label for="password"><?php echo lang('password') ?> </label>
            <?php echo form_input(array('name' => 'password','id'=>'password','value'=>"",  'class' => 'form-control is_alphabets','minlength'=>'5','required'=>'required'   )); ?>
            <?php echo form_error('state'); ?>
        </div>


          <div class="form-group col-md-6">
              <label for="password_confirm"><?php echo lang('confirm_password') ?> </label>
              <?php echo form_input(array('name' => 'password_confirm','id'=>'password_confirm','value'=>"",  'class' => 'form-control is_alphabets','minlength'=>'5','required'=>'required'    )); ?>
              <?php echo form_error('state'); ?>
          </div>



          <div class="row  mb-4">
                <div class="form-group col-md-12">
            <input type="checkbox" value="1" name="send_mail" id="send_mail"> <label for="send_mail"><?php echo lang('send_mail') ?>
            </div>



            </div>











      </div>




<?php


 echo form_hidden('user_id',$user_details['user_id']) ?>



          </div>

      <div class="main-submit-fotter-block">
        <a class="btn btn-danger" href="javascript:;" data-dismiss="modal"><?php echo lang('cancel') ?></a>
    <button type="submit" class="btn btn-primary"><?php echo lang('change_password') ?></button>
  </div>
  <?php echo form_close(); ?>

      <script>

      </script>
