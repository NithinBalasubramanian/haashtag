<?php

defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * Admin Authentication Class
 */
class RateCard extends CI_Controller {
    /*
     * Constructor, initializing the required things
     */

    public function __construct() {
        parent::__construct();
        $this->load->library('form_validation');
        $this->load->library('generals_func');
        $this->form_validation->set_error_delimiters('<p class="text-danger">', '</p>');
        $this->db_ext = $this->config->item('db_priffix');
        $this->data['master_date_format'] = $this->config->item('date_format');
        $this->data['master_date_time_format'] = $this->config->item('date_time_format');
        $this->load->library('request');
        $this->load->model('RateCardModel');
        $this->data['head_link'] = array();
    }

    function manageRateCard() {
        $data['status'] = "0";
        $procced = 1;
        $data['redirect_url'] = "";
        $table = $this->db_ext . 'rate_card';
        $data['message'] = lang('all_fields_with_star_is_required');
        if ($procced == 1) {
            $post['partner_code'] = $this->input->post('partner_code');
            if ($post['partner_code'] == "") {
                $procced = 0;
                $data['message'] = lang('partner_is_required');
            }
        }
        if ($procced == 1) {
            $post['service_id'] = $this->input->post('service_id');
            if ($post['service_id'] == "") {
                $procced = 0;
                $data['message'] = lang('service_is_required');
            }
        }
        if ($procced == 1) {
            $post['no_of_colours'] = $this->input->post('no_of_colours');
            if ($post['no_of_colours'] == "") {
                $procced = 0;
                $data['message'] = lang('no_of_colours_is_required');
            }
        }

        if ($procced == 1) {
            $post['doc_type'] = $this->input->post('doc_type');
            if (empty($post['doc_type'])) {
                $procced = 0;
                $data['message'] = lang('doc_type_is_required');
            } else {
                $post['doc_type'] = implode(',', $this->input->post('doc_type'));
            }
        }
        if ($procced == 1) {
            $post['mode'] = $this->input->post('mode');
            if ($post['mode'] == "") {
                $procced = 0;
                $data['message'] = lang('mode_is_required');
            }
        }

        if ($procced == 1) {
            if ($this->input->post('edit_id') == "") {
                $post['rate_card_code'] = $this->input->post('rate_card_code');

                if ($this->input->post('edit_id') == "") {
                    $procced = 0;
                    $data['message'] = lang('rate_card_code_is_required');
                } else {
                    $condition['rate_card_code'] = $post['rate_card_code'];
                    if ($this->input->post('edit_id') != "") {
                        $condition['rate_id !='] = $this->input->post('edit_id');
                    }
                    $customerDtls = $this->UtilityModel->getRequiredData('S', $table, '*', $condition);
                    if (!empty($customerDtls)) {
                        $procced = 0;
                        $data['message'] = lang('rate_card_code_already_assigned');
                    }
                }
            }
        }
        if ($procced == 1) {
            $post['name'] = $this->input->post('name');
            if ($post['name'] == "") {
                $procced = 0;
                $data['message'] = lang('name_is_required');
            }
        }
        if ($procced == 1) {
            $post['country_code'] = $this->input->post('country_code');
            if ($post['country_code'] == "") {
                $procced = 0;
                $data['message'] = lang('name_is_required');
            }
        }
        if ($procced == 1) {
            $post['description'] = $this->input->post('description');
            if ($this->input->post('edit_id') == "") {
                $post['entry_by'] = $this->session->userdata('user_id');
                $post['entry_date_time'] = date('Y-m-d H:i:s');
                $status = $this->UtilityModel->insertThisData($table, $post);
                $message = lang('inserted_successfully');
                $rate_id = $this->db->insert_id();
            } else {
                $post['update_by'] = $this->session->userdata('user_id');
                $post['update_date_time'] = date('Y-m-d H:i:s');
                $condition = array('rate_id' => $this->input->post('edit_id'));
                $status = $this->UtilityModel->updateThisData($table, $condition, $post);
                $message = lang('updated_successfully');
                $rate_id = $this->input->post('edit_id');
            }

            if ($status) {
                $data['message'] = $message;
                $data['redirect_url'] = base_url('rateCard/view');
                $mainJ['rate_card'] = $post;
                $data['status'] = "1";
                $insertedWeight = $insertedLocation = $insertedPrice = array();
                $weightTable = $this->db_ext . "rate_card_weight_range";
                $locationTable = $this->db_ext . "rate_card_location";
                $priceTable = $this->db_ext . "rate_card_price";
                $colurTable = $this->db_ext . "rate_card_colour";

                //Weight
                $editWeight = $this->input->post('edit_weight_id');
                $from_weight = $this->input->post('from_weight');
                $to_weight = $this->input->post('to_weight');

                $weightId = array();

                foreach ($from_weight as $mk => $mks) {
                    $weightPost['rate_id'] = $rate_id;
                    $weightPost['from_weight'] = $from_weight[$mk];
                    $weightPost['to_weight'] = $to_weight[$mk];
                    $weightPost['status'] = "1";
                    $weightPost['sequence'] = $mk;
                    $update = 0;
                    if (isset($editWeight[$mk])) {
                        if ($editWeight[$mk] != "") {
                            $update = 1;
                        }
                    }
                    if ($update == 1) {
                        $mcond = array('weight_id' => $editWeight[$mk], 'rate_id' => $rate_id);
                        $this->UtilityModel->updateThisData($weightTable, $mcond, $weightPost);
                        $weightId[$mk] = $editWeight[$mk];
                    } else {
                        $this->UtilityModel->insertThisData($weightTable, $weightPost);
                        $weightId[$mk] = $this->db->insert_id();
                    }
                }




                //Colour
                $editColour = $this->input->post('edit_colour');
                $colour_code = $this->input->post('colour_code');
                $fsc = $this->input->post('fsc_value');
                $with_effetive_date = $this->input->post('with_effetive_date');

                $colId = array();

                foreach ($colour_code as $mk => $mksa) {
                    $colPost = array();
                    $colPost['colour_code'] = $colour_code[$mk];
                    $colPost['rate_id'] = $rate_id;
                    $colPost['fsc'] = $fsc[$mk];
                    $colPost['with_effetive_date'] = $with_effetive_date[$mk];
                    $colPost['sequence'] = $mk;
                    $update = 0;
                    if (isset($editColour[$mk])) {
                        if ($editColour[$mk] != "") {
                            $update = 1;
                        }
                    }
                    if ($update == 1) {
                        $mcond = array('colour_id' => $editColour[$mk], 'rate_id' => $rate_id);
                        $this->UtilityModel->updateThisData($colurTable, $mcond, $colPost);
                        $colId[$mk] = $editColour[$mk];
                    } else {
                        $this->UtilityModel->insertThisData($colurTable, $colPost);
                        $colId[$mk] = $this->db->insert_id();
                    }
                }





                //Location
                $editLocation = $this->input->post('edit_location_id');
                $type_detail = $this->input->post('type_detail');
                $to_weight = $this->input->post('to_weight');

                $locId = array();

                foreach ($type_detail as $mk => $mks) {
                    $mainDetails = $this->input->post('main_details_' . $mk);
                    $locPost['location_type'] = $type_detail[$mk];
                    if (!empty($mainDetails)) {
                        $locPost['details'] = implode(',', $mainDetails);
                    }
                    $locPost['rate_id'] = $rate_id;
                    // $locPost['status'] = "1";
                    $locPost['sequence'] = $mk;
                    $update = 0;
                    if (isset($editLocation[$mk])) {
                        if ($editLocation[$mk] != "") {
                            $update = 1;
                        }
                    }
                    if ($update == 1) {
                        $mcond = array('location_id' => $editLocation[$mk], 'rate_id' => $rate_id);
                        $this->UtilityModel->updateThisData($locationTable, $mcond, $locPost);
                        $locId[$mk] = $editLocation[$mk];
                    } else {
                        $this->UtilityModel->insertThisData($locationTable, $locPost);
                        $locId[$mk] = $this->db->insert_id();
                    }
                }

                $msq = 0;
                $ukd = 0;
                foreach ($colId as $ukda => $mcol) {
                    $ukd = $ukda;
                    foreach ($from_weight as $mk => $mks) {
                        foreach ($type_detail as $mkt => $mks) {
                            $postPrice = array();
                            $postPrice['weight_id'] = $weightId[$mk];
                            $postPrice['location_id'] = $locId[$mkt];
                            $postPrice['rate_id'] = $rate_id;
                            $postPrice['colour_id'] = $mcol;
                            $postPrice['is_additional'] = "0";
                            $postPrice['sequence'] = $msq;
                            // echo 'price_'.$ukd.'_' . $mk . "_" . $mkt; exit();
                            $postPrice['price'] = $this->input->post('price_' . $ukd . '_' . $mk . "_" . $mkt);
                            if ($this->input->post('edit_id_price_' . $ukd . '_' . $mk . "_" . $mkt) != "") {
                                $mcond = array('price_id' => $this->input->post('edit_id_price_' . $ukd . '_' . $mk . "_" . $mkt), 'rate_id' => $rate_id);
                                $this->UtilityModel->updateThisData($priceTable, $mcond, $postPrice);
                            } else {

                                $this->UtilityModel->insertThisData($priceTable, $postPrice);
                            }
                            $msq++;
                        }
                    }

                    $addl_weight = $this->input->post('addl_weight_' . $ukd);
                    foreach ($addl_weight as $mweight) {
                        $postPrice = array();
                        $postPrice['rate_id'] = $rate_id;
                        $postPrice['is_additional'] = "1";
                        $postPrice['additional_weight'] = $mweight;
                        $postPrice['sequence'] = $msq;
                        $postPrice['colour_id'] = $mcol;
                        foreach ($type_detail as $mk => $mks) {
                            $addlPrice = $this->input->post('addl_price_' . $ukd . '_' . $mk);
                            foreach ($addlPrice as $prd => $pr) {
                                $postPrice['location_id'] = $locId[$mk];
                                $postPrice['price'] = $addlPrice[$prd];
                                $postPrice['sub_sequence'] = $mk;

                                if ($this->input->post('edit_id_addl_price_' . $ukd . '_' . $mk) != "") {
                                    $mcond = array('price_id' => $this->input->post('edit_id_price_' . $ukd . '_' . $mk), 'rate_id' => $rate_id);
                                    $this->UtilityModel->updateThisData($priceTable, $mcond, $postPrice);
                                } else {
                                    $this->UtilityModel->insertThisData($priceTable, $postPrice);
                                }
                            }
                        }
                        $msq++;
                    }
                }
            } else {
                $data['message'] = lang('something_went_wrong_please_try_after_some_time');
            }
        }


        echo $data['status'] . '###' . $data['message'] . "###" . $data['redirect_url'];
    }

    function view() {
        $this->data['message'] = $this->session->flashdata('message');
        $this->data['page_title'] = 'Country';

        $this->data['head_link'] = array(
            array('link' => base_url('rateCard/manage'), 'class' => 'btn editmain mkbtn btn-success', 'name' => '<i class="fa fa-plus icon-size"></i> Add', 'id' => ''),
            array('link' => base_url('rateCard/export_master/rateCard'), 'name' => '<i class="fa fa-file icon-size"></i> Export', 'class' => 'btn mkbtn   btn-primary', 'id' => '', 'blank' => '1')
        );
        $this->data['breadcomb_title'] = 'Home <i class="fa fa-angle-double-right" aria-hidden="true"></i>  Rate Card <i class="fa fa-angle-double-right" aria-hidden="true"></i> <span class="active-breadcomb">View</span>';

        $this->data['main_title'] = "Rate Card";
        $this->data['status_url'] = base_url('rateCard/updateStatus/RC');
        $this->data['main_url'] = base_url('rateCard/getRateCardList');

        $this->load->template('ratecard/view', $this->data);
    }

    function manage($rateId = "") {
        $this->data['message'] = $this->session->flashdata('message');
        $this->data['page_title'] = 'Add Rate Card';
        $this->data['edit'] = array();
        $this->data['edit_weight'] = array();
        $this->data['edit_price'] = array();

        $partner_arr = $this->UtilityModel->getRequiredData('M', $this->db_ext . 'partner', 'partner_code,name');
        $this->data['partner_option'] = $this->generals_func->select_options($partner_arr, 'partner_code', 'name');

        $country_arr = $this->UtilityModel->getRequiredData('M', $this->db_ext . 'country', 'country_code,name');
        $this->data['country_option'] = $this->generals_func->select_options($country_arr, 'country_code', 'name');

        $doc_arr = $this->UtilityModel->getRequiredData('M', $this->db_ext . 'document_type_master', 'code,name');
        $this->data['document_option'] = $this->generals_func->select_options($doc_arr, 'code', 'name', 'M');

        $mode_arr = $this->UtilityModel->getRequiredData('M', $this->db_ext . 'mode_master', 'mode_code,mode_name');
        $this->data['mode_option'] = $this->generals_func->select_options($mode_arr, 'mode_code', 'mode_name');

        $this->data['edit_weight'] = $this->data['edit_location'] = array();
        $this->data['service_option'] = array();
        if ($rateId != "") {
            $this->data['edit'] = $this->UtilityModel->getRequiredData('S', $this->db_ext . 'rate_card', '*', array('rate_id' => $rateId));
            if (empty($this->data['edit'])) {
                echo 'Invalid Rate Card';
                redirect(base_url('rateCard/view'));
            }
            $this->data['edit_weight'] = $this->UtilityModel->getRequiredData('M', $this->db_ext . 'rate_card_weight_range', '*', array('rate_id' => $rateId));
            $this->data['edit_location'] = $this->UtilityModel->getRequiredData('M', $this->db_ext . 'rate_card_location', '*', array('rate_id' => $rateId));

            $service_arr = $this->UtilityModel->getRequiredData('M', $this->db_ext . 'partner_service', 'service_id,name', array('partner_code' => $this->data['edit']['partner_code']));
            $this->data['service_option'] = $this->generals_func->select_options($service_arr, 'service_id', 'name');
            $this->data['page_title'] = 'Edit Rate Card - ' . $this->data['edit']['name'];
            //  $this->data['edit_weight'] = $this->UtilityModel->getRequiredData('M', $this->db_ext . 'rate_card_weight_range', '*', array('rate_id' => $rateId));
        }

        $this->data['head_link'] = array(
            array('link' => base_url('rateCard/view'), 'class' => 'btn editmain mkbtn btn-success', 'name' => '<i class="fa fa-eye icon-size"></i> View', 'id' => ''),
            array('link' => base_url('rateCard/export_master/rateCard'), 'name' => '<i class="fa fa-file icon-size"></i> Export', 'class' => 'btn mkbtn   btn-primary', 'id' => '', 'blank' => '1')
        );
        $this->data['breadcomb_title'] = 'Home <i class="fa fa-angle-double-right" aria-hidden="true"></i>  Rate Card <i class="fa fa-angle-double-right" aria-hidden="true"></i> <span class="active-breadcomb">Manage</span>';

        $this->data['main_title'] = "Rate Card";
        $this->data['status_url'] = base_url('rateCard/updateStatus/RC');
        $this->data['main_url'] = base_url('rateCard/getRateCardList');

        $this->load->template('ratecard/manage', $this->data);
    }

    public function getRateCardList() {
        $perpage = $this->input->get_post('page');
        if (!$perpage)
            $perpage = 10;


        $limit = $this->input->get_post('rows');
        if (!$limit)
            $limit = 10;

        if ($this->input->get('download') == true) {
            $limit = 300000;
        }
        if ($this->input->get('download') == true) {
            $limit = 300000;
        }

        $result = $this->RateCardModel->getRateCardList($limit, $perpage);
        $data['query'] = $this->db->last_query();
        $total_rows = $this->UtilityModel->exeFoundRows();
        $row_data = array();
        $checkedAsset = $this->session->userdata('checked_asset');
        foreach ($result as $key => $row) {


            $row_data[$key]['id'] = $key;
            $row_data[$key]['cell'][] = ($limit * $perpage - $limit) + ($key + 1);
            $row_data[$key]['cell'][] = $row['rate_card_code'];
            $row_data[$key]['cell'][] = $row['name'];
            $row_data[$key]['cell'][] = $this->UtilityModel->getSingColumData($this->db_ext . 'partner', 'name', array('partner_code' => $row['partner_code']));
            $row_data[$key]['cell'][] = $this->UtilityModel->getSingColumData($this->db_ext . 'partner_service', 'name', array('service_id' => $row['service_id']));
            $mkjs = array();
            $mlkd = explode(',',$row['doc_type']);
            foreach($mlkd as $kjf) {
               $mkjs[] =  $this->UtilityModel->getSingColumData($this->db_ext . 'document_type_master', 'name', array('code' => $kjf));
            }
            $row_data[$key]['cell'][] = implode(', ',$mkjs);
            $row_data[$key]['cell'][] = $this->UtilityModel->getSingColumData($this->db_ext . 'mode_master', 'mode_name', array('mode_code' => $row['mode']));
            $row_data[$key]['cell'][] = $this->UtilityModel->getSingColumData($this->db_ext . 'country', 'name', array('country_code' => $row['country_code']));



            if ($row['status'] == '0') {
                $statusClass = "btn-danger";
                $statusHtml = "<i class='fa fa-ban'></i>";
            } else {
                $statusClass = "btn-success";
                $statusHtml = "<i class='fa fa-check'></i>";
            }
            $statusLink = "";
            $passwordLink = "";
            $editLink = "";

            $editLink = "  <a href='" . base_url('rateCard/manage/' . $row['rate_id']) . "' class='btn btn-warning '   main-attr='" . $row['country_code'] . "' name-attr='" . $row['name'] . "' title='" . lang('edit') . "' ><i class='fa fa-edit'></i></a>";

            $statusLink = "  <a href='javascript:;' class='btn " . $statusClass . " status' status-attr='" . $row['status'] . "' main-attr='" . $row['rate_id'] . "' name-attr='" . $row['name'] . "' title='" . lang('change_status') . "' >" . $statusHtml . "</a>";
            $viewLink = "  <a href='javascript:;' class='btn btn-primary main-view' main-attr='" . $row['rate_id'] . "' name-attr='" . $row['name'] . "' title='" . lang('view') . "' ><i class='fa fa-eye'></i></a>";

            if ($this->input->get('disable_action') != "Y") {
                $row_data[$key]['cell'][] = "<div class='text-center'>
        " . $editLink . $statusLink . $viewLink . "
       
        </div>";
            }
        }
        $data['meta']['records'] = $total_rows['count'];
        $data['meta']['total'] = 0;
        if ($total_rows['count'] > 0) {
            $data['meta']['total'] = ceil($total_rows['count'] / $limit);
        }
        $data['meta']['page'] = $perpage;

        $data['data'] = $row_data;
        $data['status'] = TRUE;

        if (!empty($data)) {

            if (isset($data['data'])) {
                $responce['page'] = $data['meta']['page'];
                $responce['total'] = $data['meta']['total'];
                $responce['records'] = $data['meta']['records'];
                $responce['rows'] = $data['data'];
            }
        }

        echo json_encode($responce);
    }

    function getPriceView() {
        $data['message'] = lang('invalid_request');
        $main = array();
        $data['html'] = $this->load->view('ratecard/price_view', $main, true);
        echo json_encode($data);
    }

    function viewAjax() {
        $data['message'] = lang('invalid_request');
        $main = array();
        $data['status'] = true;
        $main['edit'] = $this->UtilityModel->getRequiredData('S', $this->db_ext . 'rate_card', '*', array('rate_id' => $this->input->post('rate_id')));
        $main['edit_weight'] = $this->UtilityModel->getRequiredData('M', $this->db_ext . 'rate_card_weight_range', '*', array('rate_id' => $this->input->post('rate_id')));
        $main['edit_location'] = $this->UtilityModel->getRequiredData('M', $this->db_ext . 'rate_card_location', '*', array('rate_id' => $this->input->post('rate_id')));
        $data['html']['title'] = $main['edit']['name'];
        $data['html'] = $this->load->view('ratecard/rate_card_view', $main, true);
        echo json_encode($data);
    }

    function getMainLocationTypeOptions() {
        $data['html'] = "Select Location Type";
        $type = $this->input->post('type');
        $main_attr = $this->input->post('main_attr');
        if ($type == 'L') {
            $data['html'] = "<input type='hidden' id='main_pos_" . $main_attr . "' name='main_details_" . $main_attr . "[]'>Selected Local";
        } else if ($type == 'Z') {
            $data['html'] = "<select name='main_details_" . $main_attr . "[]' id='main_pos_" . $main_attr . "' multiple='multiple' class='form-control chzo-o'>";
            $mainF = $this->UtilityModel->getRequiredData('M', $this->db_ext . 'zone', 'zone_code,name');
            foreach ($mainF as $mx) {
                $data['html'] .= '<option value="' . $mx['zone_code'] . '">' . $mx['name'] . '</option>';
            }
            $data['html'] .= '</select>';
        } else if ($type == 'S') {
            $data['html'] = "<select name='main_details_" . $main_attr . "[]' id='main_pos_" . $main_attr . "' multiple='multiple' class='form-control chzo-o'>";
            $mainF = $this->UtilityModel->getRequiredData('M', $this->db_ext . 'state', 'state_code,name');
            foreach ($mainF as $mx) {
                $data['html'] .= '<option value="' . $mx['state_code'] . '">' . $mx['name'] . '</option>';
            }
            $data['html'] .= '</select>';
        } else if ($type == 'C') {
            $data['html'] = "<select name='main_details_" . $main_attr . "[]' id='main_pos_" . $main_attr . "' multiple='multiple' class='form-control chzo-o'>";
            $mainF = $this->UtilityModel->getRequiredData('M', $this->db_ext . 'city', 'city_id,name');
            foreach ($mainF as $mx) {
                $data['html'] .= '<option value="' . $mx['city_id'] . '">' . $mx['name'] . '</option>';
            }
            $data['html'] .= '</select>';
        }
        echo json_encode($data);
    }

}
