

<?php
$from_weight = $this->input->post('from_weight');
$to_weight = $this->input->post('to_weight');
$edit_weight_id = $this->input->post('edit_weight_id');
$edit_location_id = $this->input->post('edit_location_id');
$type = $this->input->post('main_type');
$main_type_details = $this->input->post('main_type_details');
$totalW = 0;
$no_of_colours = $this->input->post('no_of_colours');
$colorList = array();
if ($this->input->get_post('edit_id') != "") {

    $colorList = $this->UtilityModel->getRequiredData('M', $this->db_ext . 'rate_card_colour', '*', array('rate_id' => $this->input->post('edit_id')), 'sequence', 'sequence');
    //  $no_of_colours = count($colorList);
}
$mks = 0;
for ($i = 1; $i <= $no_of_colours; $i++) {
    $editCol = array();
    if (isset($colorList[$mks])) {
        $editCol = $colorList[$mks];
    }

    
    ?>

    <div class="head_block">
        <div class="row">
            <input type="hidden" name="edit_colour[]" value="<?php echo $this->generals_func->set_field($editCol, 'colour_id') ?>">
            <div class="col-sm-4">
                <label><?php echo lang('colour_code') ?></label>
                <input class="form-control" name="colour_code[]" value="<?php echo $this->generals_func->set_field($editCol, 'colour_code') ?>" type="color">
            </div>
            <div class="col-sm-4">
                <label><?php echo lang('fsc_value_in_%') ?></label>
                <input class="form-control"  name="fsc_value[]" value="<?php echo $this->generals_func->set_field($editCol, 'fsc') ?>" type="number">
            </div>
            <div class="col-sm-4">
                <label><?php echo lang('with_effective_date') ?></label>
                <input class="form-control"  name="with_effetive_date[]" value="<?php echo $this->generals_func->set_field($editCol, 'with_effetive_date') ?>" type="date">
            </div>
        </div>
    </div>

    <table class="table table-borderd">
        <colgroup><col>
        </colgroup><colgroup span="1"></colgroup>
        <colgroup span="1"></colgroup>
        <tbody><tr>
                <td rowspan="1"></td>
    <?php
    foreach ($type as $ksu => $mt) {
        if (($ksu % 2) == 0) {
            $mcol = 'rgb(10 108 181 / 24%)';
        } else {
            $mcol = 'rgb(245 134 52 / 49%)';
        }

        $m_dtls = $main_type_details[$ksu];
        $mainArr = explode("__", $m_dtls);
        $mtype = $mainArr[0];
        $selectedList = explode(',', $mainArr[1]);
        $sel = array();
        foreach ($selectedList as $sle) {
            if ($mtype == 'Z') {
                $sel[] = $this->UtilityModel->getSingColumData($this->db_ext . 'zone', 'name', array('zone_code' => $sle));
            } else if ($mtype == 'S') {
                $sel[] = $this->UtilityModel->getSingColumData($this->db_ext . 'state', 'name', array('state_code' => $sle));
            } else if ($mtype == 'C') {
                $sel[] = $this->UtilityModel->getSingColumData($this->db_ext . 'city', 'name', array('city_id' => $sle));
            }
        }
        ?>
                    <th style='background: <?php echo $mcol ?>;
                        '   scope="colgroup"><?php
            if ($mt == 'L') {
                echo 'Local';
            } else if ($mt == 'Z') {
                echo 'Zonal';
            } else if ($mt == 'S') {
                echo 'State';
            } else if ($mt == 'C') {
                echo 'City';
            }
            if (!empty($sel)) {
                echo ' [ ';
                echo implode(', ', $sel);
                echo ' ] ';
            }
        ?></th>

                    <?php } ?>
            </tr>

    <?php
    foreach ($from_weight as $mkey => $from) {
        if ($from != "") {
            $totalW++
            ?>
                    <tr>
                        <th style='    background: #0a6cb5;
                            color: #fff;' scope="row"> <?php echo $from ?> - <?php echo $to_weight[$mkey] ?> grams </th>
            <?php
            foreach ($type as $ksu => $mt) {
                if (($ksu % 2) == 0) {
                    $mcol = 'rgb(10 108 181 / 24%)';
                } else {
                    $mcol = 'rgb(245 134 52 / 49%)';
                }
                $value = "";
                $checkVal = $this->UtilityModel->getSingColumData($this->db_ext . 'rate_card_price', 'price', array('location_id' => $edit_location_id[$ksu], 'weight_id' => $edit_weight_id[$mkey],'colour_id'=>$this->generals_func->set_field($editCol, 'colour_id'), 'is_additional' => '0'));
                $price_id = $this->UtilityModel->getSingColumData($this->db_ext . 'rate_card_price', 'price_id', array('location_id' => $edit_location_id[$ksu], 'weight_id' => $edit_weight_id[$mkey],'colour_id'=>$this->generals_func->set_field($editCol, 'colour_id'), 'is_additional' => '0'));
                ?>
                    <input type="hidden" value='<?php echo $price_id ?>' name="edit_id_price_<?php echo $mks ?>_<?php echo $mkey ?>_<?php echo $ksu ?>">
                    <td style='padding:5px;background: <?php echo $mcol ?>;'><input style='' value='<?php echo $checkVal ?>' name='price_<?php echo $mks ?>_<?php echo $mkey ?>_<?php echo $ksu ?>' type='number' class='form-control'></td>
                            <?php } ?>

            </tr>
            <?php
            }
        }

        $additionalList = $this->UtilityModel->getRequiredData('M', $this->db_ext . 'rate_card_price', '*', array('rate_id' => $this->input->post('edit_id'), 'is_additional' => '1','colour_id'=>$this->generals_func->set_field($editCol, 'colour_id')), 'sequence', 'sequence');
        if (empty($additionalList)) {
            ?>
        <tr  class='clonemrowq'>
            <th style='    background: #0a6cb5;
                color: #fff;' scope="row"> Additional Weight 

                <input style='width:130px' type='number' placeholder="Weight in grams" name='addl_weight_<?php echo $mks ?>[]' class='form-control'>
            </th>


        <?php
        $mca = 0;
        foreach ($type as $ksu => $mt) {
            $mca++;
            if (($ksu % 2) == 0) {
                $mcol = 'rgb(10 108 181 / 24%)';
            } else {
                $mcol = 'rgb(245 134 52 / 49%)';
            }
            ?>
                <td style='padding:5px;background: <?php echo $mcol ?>;'><input style='' value='' name='addl_price_<?php echo $mks ?>_<?php echo $ksu ?>[]' type='text' class='form-control'></td>
            <?php } ?>
        </tr>
        <?php
        } else {
            foreach ($additionalList as $mas) {
                ?>

            <tr  class='clonemrowq'>

                <th style='    background: #0a6cb5;
                    color: #fff;' scope="row"> Additional Weight 

                    <input style='width:130px' type='number' value='<?php echo $mas['additional_weight'] ?>' placeholder="Weight in grams" name='addl_weight_<?php echo $mks ?>[]' class='form-control'>
                </th>


                <?php
                $mca = 0;
                foreach ($type as $ksu => $mt) {
                    $mca++;
                    if (($ksu % 2) == 0) {
                        $mcol = 'rgb(10 108 181 / 24%)';
                    } else {
                        $mcol = 'rgb(245 134 52 / 49%)';
                    }
                    $checkVal = $this->UtilityModel->getSingColumData($this->db_ext . 'rate_card_price', 'price', array('rate_id' => $this->input->post('edit_id'),'colour_id'=>$this->generals_func->set_field($editCol, 'colour_id'), 'additional_weight' => $mas['additional_weight'], 'sequence' => $mas['sequence'], 'sub_sequence' => $ksu, 'is_additional' => '1'));
                    ?>
                <input   type='hidden' value='<?php echo $mas['price_id'] ?>' placeholder="Weight in grams" name='edit_id_addl_price_<?php echo $mks ?>_<?php echo $ksu ?>[]' class='form-control'>

                <td style='padding:5px;background: <?php echo $mcol ?>;'><input style='' value='<?php echo $checkVal ?>' name='addl_price_<?php echo $mks ?>_<?php echo $ksu ?>[]' type='text' class='form-control'></td>
            <?php } ?>
            </tr>
        <?php }
    }
    ?>
    <tr>
        <td colspan="<?php echo ($mca) + 1 ?>">


            <a href="javascript:;" main-attr='q' class='add-rowk btn btn-success addlhs' >Add new Additional weight</a>
        </td>
    </tr>

    </tbody></table>


<?php $mks++; } ?>

<?php /*

  <table style='margin-top:25px' class="table table-borderd">
  <colgroup><col>
  </colgroup><colgroup span="1"></colgroup>
  <colgroup span="1"></colgroup>
  <tbody><tr>
  <td rowspan="1"></td>

  <th style='background: <?php echo $mcol ?>;
  '   scope="colgroup">Additional Weight</th>
  <th style='background: <?php echo $mcol ?>;
  '   scope="colgroup">Additional Price</th>

  </tr>


  <?php foreach ($type as $ksu => $mt) {
  ?>
  <tr>
  <th style='    background: #0a6cb5;
  color: #fff;' scope="row"><?php


  $m_dtls = $main_type_details[$ksu];
  $mainArr = explode("__", $m_dtls);
  $mtype = $mainArr[0];
  $selectedList = explode(',', $mainArr[1]);
  $sel = array();
  foreach ($selectedList as $sle) {
  if ($mtype == 'Z') {
  $sel[] = $this->UtilityModel->getSingColumData($this->db_ext . 'zone', 'name', array('zone_code' => $sle));
  }else if ($mtype == 'S') {
  $sel[] = $this->UtilityModel->getSingColumData($this->db_ext . 'state', 'name', array('state_code' => $sle));
  }else if ($mtype == 'C') {
  $sel[] = $this->UtilityModel->getSingColumData($this->db_ext . 'city', 'name', array('city_id' => $sle));
  }
  }

  if ($mt == 'L') {
  echo 'Local';
  } else if ($mt == 'Z') {
  echo 'Zonal';
  } else if ($mt == 'S') {
  echo 'State';
  } else if ($mt == 'C') {
  echo 'City';
  }

  if(!empty($sel)) {
  echo ' [ ';
  echo implode(', ',$sel);
  echo ' ] ';
  }
  ?> </th>

  <td style='padding:5px; '><input style='' type='text' class='form-control'></td>
  <td style='padding:5px; '><input style='' type='text' class='form-control'></td>


  </tr>
  <?php } ?>
  </tbody></table> */ ?>

<?php
if ($totalW == 0) {
    ?>

    <div class="alert alert-warning"><?php echo lang('enter_valid_weight_range') ?>
    <?php } ?>
