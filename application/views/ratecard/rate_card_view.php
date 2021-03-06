<link rel="stylesheet" href="<?php echo base_url() ?>assets/chosen/chosen.css" />
<link rel="stylesheet" href="<?php echo base_url() ?>assets/toast/toastr.scss" />
<style>
    table.table th {
        text-align: center !important;
    }

    span.mseq {
        display: block;
        text-align: center;
        width: 24px;
        height: 24px;
        line-height: 20px;
        background: #f2f2f2;
        border: 1px solid #ccc;
        /* margin: 0 auto; */
    }

    .main-ks {
        border: 1px dashed #ccc;
        padding: 10px;
        text-align: center;
        background: #f2f2f2;
        font-size: 16px;
        font-weight: bold;
        color: #000;
        margin-bottom: 10px;
        margin-top: 10px;
    }
    ul.chzn-results {
        text-align: left;
    }
    .form-group label{
        font-weight: 500;
    color: #000;
    display: block;
    width: 100%;
    }
    span.m-required:before {
    content: "*"; display: none;
    color: red;
}
</style>
<div class="row">
    <div class="col-sm-12">

        <?php echo form_open_multipart("", array('id' => 'haashtag_ajax_form', 'class' => 'form-horizontal ')); ?>


        <div class="row  mb-4">


            <div class="form-group col-md-2">
                <label for="username"><?php echo lang('partner') ?> <span class="m-required"></span></label>
                <?php
                echo $this->UtilityModel->getSingColumData($this->db_ext . 'partner', 'name', array('partner_code' => $edit['partner_code']));

                ?>
            </div>

            <div class="form-group col-md-2">
                <label for="username"><?php echo lang('service') ?> <span class="m-required"></span></label>
                <?php
                 echo $this->UtilityModel->getSingColumData($this->db_ext . 'partner_service', 'name', array('service_id' => $edit['service_id']));

                ?>
            </div>

            <div class="form-group col-md-2">
                <label for="username"><?php echo lang('document_type') ?> <span class="m-required"></span></label>
                <?php
                $mDocType = explode(',',$edit['doc_type']);
                $lod = array();
                foreach($mDocType as $mksaa) {
                $lod[] =  $this->UtilityModel->getSingColumData($this->db_ext . 'document_type_master', 'name', array('code' => $edit['doc_type']));
                }
                echo implode(', ',$lod);
                ?>
            </div>
            

            <div class="form-group col-md-2">
                <label for="username"><?php echo lang('mode') ?> <span class="m-required"></span></label>
                <?php
                echo $this->UtilityModel->getSingColumData($this->db_ext . 'mode_master', 'mode_name', array('mode_code' => $edit['mode']));

                ?>
            </div>

            <div class="form-group col-md-2">
                <label for="username"><?php echo lang('rate_card_code') ?> <span class="m-required"></span></label>
                <?php
                if ($this->generals_func->set_field($edit, 'rate_card_code') != "") {
                    echo $this->generals_func->set_field($edit, 'rate_card_code') ?>
                    <?php
                }
                echo form_error('rate_card_code');
                ?>
            </div>
            <div class="form-group col-md-2">
                <label for="username"><?php echo lang('name') ?> <span class="m-required"></span></label>
                <?php echo $this->generals_func->set_field($edit, 'name'); ?>
            </div>
            <div class="form-group col-md-2">
                <label for="username"><?php echo lang('country') ?> <span class="m-required"></span></label>
                <?php
                echo $this->UtilityModel->getSingColumData($this->db_ext . 'country', 'name', array('country_code' => $edit['country_code']));

                ?>
            </div>
<div class="form-group col-md-2">
                <label for="username"><?php echo lang('no_of_colours') ?> <span class="m-required"></span></label>
                <?php echo  $this->generals_func->set_field($edit, 'no_of_colours') ?>
                <?php echo form_error('no_of_colours'); ?>
            </div>
            <div class="form-group col-md-8">
                <label for="username"><?php echo lang('description') ?> </label>
                <?php echo $this->generals_func->set_field($edit, 'description'); ?>
            </div>




            <div class="col-sm-12">
                <div style="    margin-top: 20px;" class="card card-table-one">
                    <h6 class="card-title">Weight</h6>
                    <p class="az-content-text mg-b-20">Weight range setup.</p>
                    <div class="table-responsive">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th class="wd-5p">&nbsp;</th>
                                    <th class="wd-45p">From Weight </th>
                                    <th>To Weight</th>
                                   

                                </tr>
                            </thead>
                            <tbody>
                                <?php if (empty($edit_weight)) { ?>
                                    <tr class="rowclone">
                                        <td><span class="mseq">1</span></td>
                                        <td style="padding:5px">
                                             <div style="max-width:250px" class="input-group">
                                                <input type="text" class="form-control from_weight" name="from_weight[]" aria-describedby="basic-addon2">
                                                <div class="input-group-append">
                                                    <span class="input-group-text" id="basic-addon2">gms</span>
                                                </div>
                                            </div>
                                        </td>
                                        <td style="padding:5px">

                                            <div style="max-width:250px" class="input-group">
                                                <input type="text" class="form-control to_weight" name="to_weight[]" aria-describedby="basic-addon2-p">
                                                <div class="input-group-append">
                                                    <span class="input-group-text" id="basic-addon2-p">gms</span>
                                                </div>
                                            </div>

                                        </td>
                                        

                                    </tr>
                                    <?php
                                } else {
                                    foreach ($edit_weight as $mke => $mw) {
                                        ?>
                                        <tr class="rowclone">
                                            <td><span class="mseq"><?php echo $mke + 1 ?></span></td>
                                            <td style="padding:5px">
                                                <input type="hidden" class="edit_weight_id" name="edit_weight_id[]" value="<?php echo $mw['weight_id'] ?>">
                                                <div style="max-width:250px" class="input-group">
                                                    <input type="text" disabled="" class="form-control from_weight" value="<?php echo $mw['from_weight'] ?>" name="from_weight[]" aria-describedby="basic-addon2">
                                                    <div class="input-group-append">
                                                        <span class="input-group-text" id="basic-addon2">gms</span>
                                                    </div>
                                                </div>
                                            </td>
                                            <td style="padding:5px">

                                                <div style="max-width:250px" class="input-group">
                                                    <input type="text" disabled="" class="form-control to_weight" value="<?php echo $mw['to_weight'] ?>" name="to_weight[]" aria-describedby="basic-addon2-p">
                                                    <div class="input-group-append">
                                                        <span class="input-group-text" id="basic-addon2-p">gms</span>
                                                    </div>
                                                </div>

                                            </td>
                                            

                                        </tr>
                                        <?php
                                    }
                                }
                                ?>

                            </tbody>
                        </table>
                    </div><!-- table-responsive -->
                </div>
            </div>


            <div class="col-sm-12">
                <div style="    margin-top: 20px;" class="card card-table-one">
                    <h6 class="card-title">Location</h6>
                    <p class="az-content-text mg-b-20">Select required location.</p>
                    <div class="">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th class="wd-5p">&nbsp;</th>
                                    <th class="wd-45p">Location Type </th>
                                    <th>Details</th>
                                 

                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                $typeArr = array(
                                    array(
                                        'value' => 'L',
                                        'name' => lang('local'),
                                    ),
                                    array(
                                        'value' => 'Z',
                                        'name' => lang('zonal'),
                                    ),
                                    array(
                                        'value' => 'S',
                                        'name' => lang('state'),
                                    ),
                                    array(
                                        'value' => 'C',
                                        'name' => lang('City'),
                                    )
                                );
                                $type_options = $this->generals_func->select_options($typeArr, 'value', 'name');



                                if (empty($edit_location)) {
                                    ?>
                                    <tr class="clonemrowj">
                                         <input type="hidden" class="edit_location_id" name="edit_location_id[]" value="">
                                               
                                        <td><span class="mseq">1</span></td>
                                        <td style="padding:5px;width:45%">

                                            <div  class="input-group">
                                                <?php
                                                $mkedit = array();

                                                echo form_dropdown('type_detail[]', $type_options, $this->generals_func->set_field($mkedit, 'main_type'), '  class="form-control main_type_main main_type_e js-data-ajax" main-attr="0" data-endpoint="locations" data-placeholder="' . lang('select_a_service') . '" ');
                                                echo form_error('service_id');
                                                ?>
                                            </div>
                                        </td>
                                        <td style="padding:5px;width:45%">

                                            <div  class="input-group moisa" id='main_details_0'>
                                                Select Location Type
                                            </div>

                                        </td>
                                         

                                    </tr>
                                    <?php
                                } else {
                                    
                                    
                                    foreach ($edit_location as $mks => $eloc) {
                                        ?>

<input type="hidden" class="edit_location_id" name="edit_location_id[]" value="<?php echo $eloc['location_id'] ?>">
                                        <tr class="clonemrowj">
                                            <td><span class="mseq">1</span></td>
                                            <td style="padding:5px;width:45%">

                                                <div  class="input-group">
                                                    <?php
                                                    $mkedit = array();

                                                    echo form_dropdown('type_detail[]', $type_options, $this->generals_func->set_field($eloc, 'location_type'), ' disabled class="form-control main_type_main main_type_e js-data-ajax" main-attr="' . $mks . '" data-endpoint="locations" data-placeholder="' . lang('select_a_service') . '" ');
                                                    echo form_error('service_id');
                                                    ?>
                                                </div>
                                            </td>
                                            <td style="padding:5px;width:45%">

                                                <div  class="input-group moisa" id='main_details_<?php echo $mks ?>'>
                                                    <?php
                                                    $value = explode(",",$this->generals_func->set_field($eloc, 'details'));
                                                    $data['html'] = "Select Location Type";
        $type = $this->generals_func->set_field($eloc, 'location_type');
        $main_attr = $mks;
        if ($type == 'L') {
            $data['html'] = "<input type='hidden' id='main_pos_" . $main_attr . "' name='main_details_" . $main_attr . "[]'>Selected Local";
        } else if ($type == 'Z') {
            $data['html'] = "<select disabled name='main_details_" . $main_attr . "[]' id='main_pos_" . $main_attr . "' multiple='multiple' class='form-control chzo-o'>";
            $mainF = $this->UtilityModel->getRequiredData('M', $this->db_ext . 'zone', 'zone_code,name');
            foreach ($mainF as $mx) {
                $seleesct = "";
                if(in_array($mx['zone_code'], $value))
                {
                    $seleesct = "selected='selected'";
                }
                $data['html'] .= '<option '.$seleesct.' value="' . $mx['zone_code'] . '">' . $mx['name'] . '</option>';
            }
            $data['html'] .= '</select>';
        } else if ($type == 'S') {
            $data['html'] = "<select disabled name='main_details_" . $main_attr . "[]' id='main_pos_" . $main_attr . "' multiple='multiple' class='form-control chzo-o'>";
            $mainF = $this->UtilityModel->getRequiredData('M', $this->db_ext . 'state', 'state_code,name');
            foreach ($mainF as $mx) {
                $seleesct = "";
                if(in_array($mx['state_code'], $value))
                {
                    $seleesct = "selected='selected'";
                }
                $data['html'] .= '<option '.$seleesct.' value="' . $mx['state_code'] . '">' . $mx['name'] . '</option>';
            }
            $data['html'] .= '</select>';
        } else if ($type == 'C') {
            $data['html'] = "<select disabled name='main_details_" . $main_attr . "[]' id='main_pos_" . $main_attr . "' multiple='multiple' class='form-control chzo-o'>";
            $mainF = $this->UtilityModel->getRequiredData('M', $this->db_ext . 'city', 'city_id,name');
            foreach ($mainF as $mx) {
                 $seleesct = "";
                if(in_array($mx['city_id'], $value))
                {
                    $seleesct = "selected='selected'";
                }
                $data['html'] .= '<option '.$seleesct.' value="' . $mx['city_id'] . '">' . $mx['name'] . '</option>';
            }
            $data['html'] .= '</select>';
        }
                                                    
                   echo $data['html'];                                 ?>
                                                </div>

                                            </td>
                                             

                                        </tr>



                                        <?php
                                    }
                                }
                                ?>
                            </tbody>
                        </table>
                    </div><!-- table-responsive -->
                </div>
            </div>
           







            <div class="col-sm-12">
                <div style="    margin-top: 20px;" class="card card-table-one">
                    <h6 class="card-title">Price</h6>
                    <p class="az-content-text mg-b-20">Configure Price.</p>
                    <div id="price_block" class="table-responsive">
                        <div class="alert alert-warning"> Enter weight Range</div>
                    </div><!-- table-responsive -->
                </div>
            </div>





        </div>


        <?php echo form_hidden('redirect', $this->input->get_post('redirect')) ?>

        <?php echo form_hidden('edit_id', $this->generals_func->set_field($edit, 'rate_id')) ?>






    </div>

    <div class="main-submit-fotter-block">
        <a class="btn btn-danger" href="javascript:;" data-dismiss="modal"><?php echo lang('cancel') ?></a>
        <button type="submit" class="btn btn-primary"><?php echo lang('save_changes') ?></button>
    </div>
    <?php echo form_close(); ?>

</div>




<script src="<?php echo base_url('assets/js/jquery.validate.js') ?>"></script>

<script src="<?php echo base_url(); ?>assets/chosen/chosen.jquery.js" type="text/javascript"></script>
<script src="<?php echo base_url(); ?>assets/toast/toastr.js" type="text/javascript"></script>
<script>
    $(document).ready(function () {

<?php 

if($this->generals_func->set_field($edit, 'rate_id') != "") {
    ?>
         getPriceReview();   
            <?php
}

?>

$(".chzo-o").chosen();
        

        $('.mchzn').chosen();
        $(document).on('change', '.main_type_main', function () {
            var main_attr = $(this).attr('main-attr');
            var type = $(this).val();
            var country_code = $('#country_code_options').val();
            if (country_code == "") {
                toastr.error('Select Country');
                $(this).val('');
                return false;
            }
            $.ajax({
                method: "POST",
                dataType: "json",
                url: "<?php echo base_url(); ?>rateCard/getMainLocationTypeOptions",
                data: {
                    type: type,
                    main_attr: main_attr,
                    country_code: country_code,
                    edit_id: '<?php echo $this->generals_func->set_field($edit, 'rate_id') ?>'
                }
            }).done(function (data) {
                $('#main_details_' + main_attr).html(data['html']);

                $('#main_details_' + main_attr + " .chzo-o").chosen();
                $('#main_details_' + main_attr + " .chzo-o").trigger("liszt:updated");
            });


        });


        $("#filter_result").click(function () {
            jQuery('#list2').jqGrid('setGridParam', {
                page: 1,
                url: get_report_url()
            }).trigger("reloadGrid");

        })
        $("#download_result").click(function () {
            window.location.href = get_download_url() + "&download=true";
        })

    });



    $(document).on('click', '.add-rowkj', function () {
        var length = $(".clonemrowj").length;



        $trNew = $(".clonemrowj:last").clone();

        /*if($trNew.find('select').val() == "") {
         toastr.error('Select Location type'); return false;
         }*/
        /*if($trNew.find('input.to_weight').val() == "") {
         toastr.error('To weight is required');
         return false;
         }
         if($trNew.find('input.to_weight').val() < $trNew.find('input.from_weight').val())
         {
         toastr.error('From weight is greater than to weight');
         return false;
         } */

        $(".clonemrowj:last").after($trNew);



        $(".clonemrowj:last").find('input').val('');
        $(".clonemrowj:last").find('select').val('');
        $(".clonemrowj:last").find('.main-oas').attr('id', 'mains' + length);
        $(".clonemrowj:last").find('.mseq').html(length + 1);
        $(".clonemrowj:last").find('.moisa').html("Select Location type").attr('id', 'main_details_' + length);
        $(".clonemrowj:last").find('.main_type_main').attr('main-attr', "" + length);



        if ($(".clonemrowj").length > 1)

        {
            $('.remove-rowkj').show();
        } else {
            $('.remove-rowkj').hide();
        }





    })



    $(document).on('click', '.remove-rowkj', function () {

        if ($(".clonemrowj").length > 1)

        {
            var mthis = $(this).parent().parent().find('input').val('');
            $(this).parent().parent().remove();

        } else {

        }

        if ($(".clonemrowj").length > 1)

        {
            $('.remove-rowkj').show();
        } else {
            $('.remove-rowkj').hide();
        }

    })




    $(document).on('click', '#generateRateCard', function () {
        getPriceReview();
    })
    $(document).on('click', '.add-row', function () {
        var length = $(".rowclone").length;



        $trNew = $(".rowclone:last").clone();
        if ($trNew.find('input.from_weight').val() == "") {
            toastr.error('From weight is required');
            return false;
        }
        if ($trNew.find('input.to_weight').val() == "") {
            toastr.error('To weight is required');
            return false;
        }
        if ($trNew.find('input.to_weight').val() < $trNew.find('input.from_weight').val()) {
            toastr.error('From weight is greater than to weight');
            return false;
        }

        $(".rowclone:last").after($trNew);



        $(".rowclone:last").find('input').val('');
        $(".rowclone:last").find('.main-oas').attr('id', 'mains' + length);
        $(".rowclone:last").find('.mseq').html(length + 1);





        if ($(".rowclone").length > 1)

        {
            $('.remove-row').show();
        } else {
            $('.remove-row').hide();
        }





    })




    $(document).on('click', '.add-rowk', function () {
        var main_attr = $(this).attr('main-attr');
        var length = $(".rowclone" + main_attr).length;



        $trNew = $(".clonemrow" + main_attr + ":last").clone();

        $(".clonemrow" + main_attr + ":last").after($trNew);



        $(".clonemrow" + main_attr + ":last").find('input').val('');
        $(".clonemrow" + main_attr + ":last").find('select').val('');
        $(".clonemrow" + main_attr + ":last").find('.main-oas').attr('id', 'mains' + length);
        $(".clonemrow" + main_attr + ":last").find('.mseq').html(length + 1);





        if ($(".clonemrow" + main_attr).length > 1)

        {
            $('.mkis_' + main_attr).show();
        } else {
            $('.mkis_' + main_attr).hide();
        }





    })


    $(document).on('click', '.remove-row', function () {

        if ($(".rowclone").length > 1)

        {
            var mthis = $(this).parent().parent().find('input').val('');
            $(this).parent().parent().remove();

        } else {

        }

        if ($(".rowclone").length > 1)

        {
            $('.remove-row').show();
        } else {
            $('.remove-row').hide();
        }

    })

    $(document).on('change', '#partner_options', function () {

        var partner_code = $('#partner_options').val();
        $.ajax({
            method: "POST",
            dataType: "json",
            url: "<?php echo base_url(); ?>ajaxhandler/getServiceListByPartner",
            data: {
                partner_code: partner_code,

                edit_id: '<?php echo $this->generals_func->set_field($edit, 'rate_id') ?>'
            }
        }).done(function (data) {
            $('#service_options').html(data['html']);

            $('#service_options').chosen();
            $('#service_options').trigger("liszt:updated");
        });

    })

    $(document).on('click', '.remove-rowk', function () {
        var main_attr = $(this).attr('main-attr');
        if ($(".clonemrow" + main_attr).length > 1)

        {
            var mthis = $(this).parent().parent().find('input').val('');
            $(this).parent().parent().remove();

        } else {

        }

        if ($(".clonemrow" + main_attr).length > 1)

        {
            $('.mkis_' + main_attr).show();
        } else {
            $('.mkis_' + main_attr).hide();
        }

    })


    function getPriceReview() {
        var from_weight = $("input.from_weight")
                .map(function () {
                    return $(this).val();
                }).get();
        var to_weight = $("input.to_weight")
                .map(function () {
                    return $(this).val();
                }).get();
        var edit_weight_id = $("input.edit_weight_id")
                .map(function () {
                    return $(this).val();
                }).get();
        var edit_location_id = $("input.edit_location_id")
                .map(function () {
                    return $(this).val();
                }).get();
        var main_type = $("select.main_type_main")
                .map(function () {
                    return $(this).val();
                }).get();

        var values = [];
        $("select.main_type_main").each(function () {
            var attr = $(this).attr('main-attr');
            values.push($(this).val() + "__" + $("#main_pos_" + attr).val());

        });


        $.ajax({
            method: "POST",
            dataType: "json",
            url: "<?php echo base_url(); ?>rateCard/getPriceView",
            data: {
                from_weight: from_weight,
                to_weight: to_weight,
                edit_weight_id: edit_weight_id,
                edit_location_id: edit_location_id,
                main_type: main_type,
                main_type_details: values,
                no_of_colours : '<?php echo $this->generals_func->set_field($edit, 'no_of_colours') ?>',
                edit_id: '<?php echo $this->generals_func->set_field($edit, 'rate_id') ?>'
            }
        }).done(function (data) {
            $('#price_block').html(data['html']);
            $('input').attr('disabled','disabled');
            $('a.add-rowk.btn.btn-success.addlhs').hide();
            $('.main-submit-fotter-block').hide();

        });

    }

    $(document).on('click', '#generateRateCard', function () {
        getPriceReview();
    })
</script>