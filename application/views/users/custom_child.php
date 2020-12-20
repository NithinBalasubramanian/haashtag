


                                        <div style="margin-top:15px" class="col-sm-12  row mb-4">

                                          <?php foreach($custom_fiels as $key => $custom) {
                                              echo form_hidden('custom_fiels[]',$custom['field_id']);
                                              if($this->input->post('id') != "") {
                                              $oldCustomDeetail = $this->UtilityModel->getRequiredData('S', $this->db_ext."user_custom_fields", "*",array('user_id'=> $this->input->post('id'),'field_id'=>$custom['field_id']));
                                              if(empty($oldCustomDeetail)){
                                                $oldCustomDeetail = array();
                                              }
}else{
  $oldCustomDeetail = array();
}
                                            if($custom['is_multi'] == '0') {
                                              $input_arr['name'] = 'custom_field_'.$custom['field_id'];
                                              $input_arr['type'] = $custom['input_type'];
                                              $input_arr['id'] =  'custom_field_'.$custom['field_id'];
                                              $input_arr['value'] = $this->generals_func->set_field($oldCustomDeetail, 'value');
                                              $input_arr['class'] = "form-control is_alphabets";
                                              if($custom['required'] == '1'){
                                                $input_arr['required'] = 'required';
                                              }
                                              ?>

                                              <label for="<?php echo $input_arr['id']  ?>"><?php echo $custom['name'] ?> </label>
                                              <?php
                                              if($custom['input_type'] == 'file'){
                                                ?>
                                                  <input type="hidden" value="<?php echo $input_arr['value'] ?>" name="old_<?php echo $input_arr['name'] ?>">
                                                <?php
                                              }
                                             echo form_input($input_arr);
                                               echo form_error('custom_field_'.$custom['field_id']);

                                            ?>
                                          </div>

                                        <?php } else  {
                                          ?>
                                          <div style="width:100%" class=" mb-4">
                                          <label ><?php echo $custom['name'] ?> </label>
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

                                                  foreach($custom['options'] as $opt) {
                                                    $checked = false;
                                                    if(in_array($opt['option_id'],$mainD))  {
                                                      $checked = true;
                                                    }
                                                  echo form_checkbox($name, $opt['option_id'], $checked, "onclick='checkCustomChild(this,".$custom['field_id'].")' id='mainopt_".$opt['option_id']."' class='' "); ?>


                                                  <label style="margin-right:10px" class="" for='mainopt_<?php echo $opt['option_id'] ?>'><?php echo $opt['option_value']  ?></label>
                                                  <?php
                                                }
                                                   ?>

                                                </div>
                                            </div>

                                            <?php
                                          }else if($custom['input_type'] == 'radio') { ?>


                                            <div class="form-check pl-0">

                                                <div class="">
                                                  <?php
                                                  $checked = false;
                                                  $name = 'custom_field_'.$custom['field_id'].'[]';

                                                  foreach($custom['options'] as $opt) {
                                                    $checked = false;
                                                    if(in_array($opt['option_id'],$mainD))  {
                                                      $checked = true;
                                                    }
                                                  echo form_radio($name, $opt['option_id'], $checked, "onclick='checkCustomChild(this,".$custom['field_id'].")' id='mainopt_".$opt['option_id']."' class='' "); ?>


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
