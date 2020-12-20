<?php

defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * Admin Authentication Class
 */
class Book extends CI_Controller {
    /*
     * Constructor, initializing the required things
     */

    public function __construct() {
        parent::__construct();
        $this->load->library('form_validation');
        $this->load->library('generals_func');
        $this->form_validation->set_error_delimiters('<p class="text-danger">', '</p>');
        $this->db_ext = $this->config->item('db_priffix');
        $this->load->library('table');
        $this->data['master_date_format'] = $this->config->item('date_format');
        $this->data['master_date_time_format'] = $this->config->item('date_time_format');
        $this->data['head_link'] = array();
    }

    function purchaseBook() {
        $this->data['message'] = $this->session->flashdata('message');
        $this->data['page_title'] = 'Country';

        $this->data['head_link'] = array(
            array('link' => base_url('book/managePurchaseBook'), 'class' => 'btn editmain mkbtn btn-success', 'name' => '<i class="fa fa-plus icon-size"></i> Add', 'id' => ''),
            array('link' => base_url('master/export_master/country'), 'name' => '<i class="fa fa-file icon-size"></i> Export', 'class' => 'btn mkbtn   btn-primary', 'id' => '', 'blank' => '1')
        );
        $this->data['breadcomb_title'] = 'Home <i class="fa fa-angle-double-right" aria-hidden="true"></i>  Customer <i class="fa fa-angle-double-right" aria-hidden="true"></i> <span class="active-breadcomb">View</span>';

        $this->data['main_title'] = "Customer";
        $this->data['status_url'] = base_url('customer/updateStatus/CUST');


        $this->load->template('book/view', $this->data);
    }

    function managePurchaseBook($purchaceId = "") {
        $this->data['message'] = $this->session->flashdata('message');
        $this->data['page_title'] = 'Manage Prchase Book';
        $this->data['edit'] = array();
        $this->data['head_link'] = array(
            array('link' => base_url('customer/view'), 'class' => 'btn editmain mkbtn btn-success', 'name' => '<i class="fa fa-eye icon-size"></i> View', 'id' => ''),
            array('link' => base_url('master/export_master/country'), 'name' => '<i class="fa fa-file icon-size"></i> Export', 'class' => 'btn mkbtn   btn-primary', 'id' => '', 'blank' => '1')
        );
        $this->data['breadcomb_title'] = 'Home <i class="fa fa-angle-double-right" aria-hidden="true"></i>  Service <i class="fa fa-angle-double-right" aria-hidden="true"></i> <span class="active-breadcomb">Purchase Book</span>';

        $this->data['main_title'] = "Manage Purchase Book";
        $partner_arr = $this->UtilityModel->getRequiredData('M', $this->db_ext . 'partner', 'partner_code,name');
        $this->data['partner_option'] = $this->generals_func->select_options($partner_arr, 'partner_code', 'name');
        $this->data['service_option'] = array();
        $this->load->template('book/manage', $this->data);
    }

    public function getPurchaseBookList() {
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

        $result = $this->CommanModel->getCountryList($limit, $perpage);
        $data['query'] = $this->db->last_query();
        $total_rows = $this->UtilityModel->exeFoundRows();
        $row_data = array();
        $checkedAsset = $this->session->userdata('checked_asset');
        foreach ($result as $key => $row) {


            $row_data[$key]['id'] = $key;

            $row_data[$key]['cell'][] = "DTDC";
            $row_data[$key]['cell'][] = "EPOD";
            $row_data[$key]['cell'][] = "10000001 - 19999999";
            $row_data[$key]['cell'][] = "100000";
            $row_data[$key]['cell'][] = "Rs. 4";
            $row_data[$key]['cell'][] = "400000";
            //$row_data[$key]['cell'][] = "  <a href='javascript:;' class='btn btn-info viewcontact'   main-attr='" . $row['country_code'] . "' name-attr='" . $row['name'] . "' title='" . lang('edit') . "' >View All</a>";
//$row_data[$key]['cell'][] = "  <a href='javascript:;' class='btn btn-info viewbank'   main-attr='" . $row['country_code'] . "' name-attr='" . $row['name'] . "' title='" . lang('edit') . "' >View All</a>";

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

            $editLink = "  <a href='" . base_url('book/managePurchaseBook/1') . "' class='btn btn-warning editmain'   main-attr='" . $row['country_code'] . "' name-attr='" . $row['name'] . "' title='" . lang('edit') . "' ><i class='fa fa-edit'></i></a>";

            $statusLink = "  <a href='javascript:;' class='btn " . $statusClass . " status' status-attr='" . $row['status'] . "' main-attr='" . $row['country_code'] . "' name-attr='" . $row['name'] . "' title='" . lang('change_status') . "' >" . $statusHtml . "</a>";

            if ($this->input->get('disable_action') != "Y") {
                $row_data[$key]['cell'][] = "<div class='text-center'>
        " . $editLink . $statusLink . "
       
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

    function updateStatus($type) {
        $data['status'] = false;
        $data['messgae'] = 'Invalid Request';
        if ($type == 'CUST') {
            $update['status'] = ($this->input->post('status')) ? 0 : 1;
            $update['update_date_time'] = $this->generals_func->today('DT');
            $condition = array('customer_id' => $this->input->post('id'));
            $table = $this->db_ext . 'customer';
            $data['status'] = $this->UtilityModel->updateThisData($table, $condition, $update);
        }

        if ($data['status']) {
            $data['messgae'] = 'Updated Successfully';
        }

        echo json_encode($data);
    }

    public function getView($view = "") {
        $data['status'] = false;
        $data['message'] = 'Invalid View';
        if ($view == 'COUNTRY') {
            $data['status'] = true;

            $main['edit'] = array();

            if ($this->input->post('edit') == '0' || $this->input->post('edit') == '' || $this->input->post('edit') == 'undefined') {
                $data['title'] = "Add Country";
            } else {
                $main['edit'] = $this->UtilityModel->getRequiredData('S', $this->db_ext . 'country', '*', array('country_code' => $this->input->post('edit')));
                $data['title'] = "Edit Country - " . $main['edit']['name'];
            }
            $data['html'] = $this->load->view('master/country/manage', $main, true);
        }
        echo json_encode($data);
    }

    public function savePartner() {

        $data['status'] = false;
        $this->form_validation->set_rules('name', lang('name'), 'required');
        if ($this->input->post('edit_id') == "") {
            $this->form_validation->set_rules('partner_code', lang('country_code'), 'required');
        }
        if ($this->form_validation->run() == true) {
            $post['name'] = $this->input->post('name');
            $post['contact'] = $this->input->post('contact');
            $post['email_id'] = $this->input->post('email_id');
            $post['description'] = $this->input->post('description');
            $moC['name'] = $this->input->post('name');
            $moCA = array();
            if ($this->input->post('edit_id') == "") {
                $moCA['partner_code'] = $this->input->post('partner_code');
            }
            if ($this->input->post('edit_id') != "") {
                $moC['partner_code !='] = $this->input->post('edit_id');
            }
            $checkName = $this->UtilityModel->getRequiredData('S', $this->db_ext . 'partner', '*', $moC);
            if (!empty($moCA)) {
                $checkCode = $this->UtilityModel->getRequiredData('S', $this->db_ext . 'partner', '*', $moCA);
            } else {
                $checkCode = array();
            }
            if (empty($checkName) && empty($checkCode)) {

                $table = $this->db_ext . "partner";
                if ($this->input->post('edit_id') != "") {
                    $post['update_date_time'] = date('Y-m-d H:i:s');
                    $condition = array('partner_code' => $this->input->post('edit_id'));
                    $status = $this->UtilityModel->updateThisData($table, $condition, $post);
                    $message = lang('updated_successfully');
                } else {
                    $post['partner_code'] = $this->input->post('partner_code');
                    $post['entry_date_time'] = date('Y-m-d H:i:s');
                    $post['status'] = '1';
                    $status = $this->UtilityModel->insertThisData($table, $post);
                    $message = lang('inserted_successfully');
                }

                if ($status) {
                    $updatedData = json_encode($post);
                    $data['status'] = true;
                    $this->UtilityModel->insertThisLog("Partner", $message, $updatedData);
                    // $this->session->set_flashdata('message', $this->generals_func->show_alert('suc', lang('updated_successfully')));
                } else {
                    $data['message'] = lang('something_went_wrong');
                }
            } else {
                if (!empty($checkName)) {
                    $data['message'] = "Partner name already exists";
                }
                if (!empty($checkCode)) {
                    $data['message'] = "Partner code already exists";
                }
            }
        } else {
            $data['message'] = 'All fields are required';
        }

        echo json_encode($data);
    }

    public function saveGST() {

        $data['status'] = false;
        $this->form_validation->set_rules('name', lang('name'), 'required');
        $this->form_validation->set_rules('value', lang('value'), 'required');

        $this->form_validation->set_rules('effective_date', lang('effective_date'), 'required');

        if ($this->form_validation->run() == true) {
            $post['name'] = $this->input->post('name');
            $post['value'] = $this->input->post('value');

            $post['effective_date'] = date("Y-m-d", strtotime($this->input->post('effective_date')));
            $moC['name'] = $this->input->post('name');
            $moCA = array();

            if ($this->input->post('edit_id') != "") {
                $moC['gst_id !='] = $this->input->post('edit_id');
            }
            $checkName = $this->UtilityModel->getRequiredData('S', $this->db_ext . 'gst', '*', $moC);

            if (empty($checkName)) {

                $table = $this->db_ext . "gst";
                if ($this->input->post('edit_id') != "") {
                    $post['update_date_time'] = date('Y-m-d H:i:s');
                    $condition = array('gst_id' => $this->input->post('edit_id'));
                    $status = $this->UtilityModel->updateThisData($table, $condition, $post);
                    $message = lang('updated_successfully');
                } else {

                    $post['entry_date_time'] = date('Y-m-d H:i:s');
                    $post['status'] = '1';
                    $status = $this->UtilityModel->insertThisData($table, $post);
                    $message = lang('inserted_successfully');
                }

                if ($status) {
                    $updatedData = json_encode($post);
                    $data['status'] = true;
                    $this->UtilityModel->insertThisLog("GST", $message, $updatedData);
                    // $this->session->set_flashdata('message', $this->generals_func->show_alert('suc', lang('updated_successfully')));
                } else {
                    $data['message'] = lang('something_went_wrong');
                }
            } else {

                $data['message'] = "GST name already exists";
            }
        } else {
            $data['message'] = 'All fields are required';
        }

        echo json_encode($data);
    }

    public function saveCountry() {

        $data['status'] = false;
        $this->form_validation->set_rules('name', lang('name'), 'required');
        if ($this->input->post('edit_id') == "") {
            $this->form_validation->set_rules('country_code', lang('country_code'), 'required');
        }
        if ($this->form_validation->run() == true) {
            $post['name'] = $this->input->post('name');
            $moC['name'] = $this->input->post('name');
            $moCA = array();
            if ($this->input->post('edit_id') == "") {
                $moCA['country_code'] = $this->input->post('country_code');
            }
            if ($this->input->post('edit_id') != "") {
                $moC['country_code !='] = $this->input->post('edit_id');
            }
            $checkName = $this->UtilityModel->getRequiredData('S', $this->db_ext . 'country', '*', $moC);
            if (!empty($moCA)) {
                $checkCode = $this->UtilityModel->getRequiredData('S', $this->db_ext . 'country', '*', $moCA);
            } else {
                $checkCode = array();
            }
            if (empty($checkName) && empty($checkCode)) {

                $table = $this->db_ext . "country";
                if ($this->input->post('edit_id') != "") {
                    $post['update_date_time'] = date('Y-m-d H:i:s');
                    $condition = array('country_code' => $this->input->post('edit_id'));
                    $status = $this->UtilityModel->updateThisData($table, $condition, $post);
                    $message = lang('updated_successfully');
                } else {
                    $post['country_code'] = $this->input->post('country_code');
                    $post['entry_date_time'] = date('Y-m-d H:i:s');
                    $post['status'] = '1';
                    $status = $this->UtilityModel->insertThisData($table, $post);
                    $message = lang('inserted_successfully');
                }

                if ($status) {
                    $updatedData = json_encode($post);
                    $data['status'] = true;
                    $this->UtilityModel->insertThisLog("Country", $message, $updatedData);
                    // $this->session->set_flashdata('message', $this->generals_func->show_alert('suc', lang('updated_successfully')));
                } else {
                    $data['message'] = lang('something_went_wrong');
                }
            } else {
                if (!empty($checkName)) {
                    $data['message'] = "Country name already exists";
                }
                if (!empty($checkCode)) {
                    $data['message'] = "Country code already exists";
                }
            }
        } else {
            $data['message'] = 'All fields are required';
        }

        echo json_encode($data);
    }

    public function saveZone() {

        $data['status'] = false;
        $this->form_validation->set_rules('name', lang('name'), 'required');
        $this->form_validation->set_rules('country_code', lang('country_code'), 'required');
        if ($this->input->post('edit_id') == "") {
            $this->form_validation->set_rules('zone_code', lang('zone_code'), 'required');
        }
        if ($this->form_validation->run() == true) {
            $post['name'] = $this->input->post('name');
            $moC['name'] = $this->input->post('name');
            $moCA = array();
            if ($this->input->post('edit_id') == "") {
                $moCA['zone_code'] = $this->input->post('zone_code');
            }
            if ($this->input->post('edit_id') != "") {
                $moC['zone_code !='] = $this->input->post('edit_id');
            }
            $checkName = $this->UtilityModel->getRequiredData('S', $this->db_ext . 'zone', '*', $moC);
            if (!empty($moCA)) {
                $checkCode = $this->UtilityModel->getRequiredData('S', $this->db_ext . 'zone', '*', $moCA);
            } else {
                $checkCode = array();
            }
            if (empty($checkName) && empty($checkCode)) {

                $table = $this->db_ext . "zone";
                $post['country_code'] = $this->input->post('country_code');
                if ($this->input->post('edit_id') != "") {
                    $post['update_date_time'] = date('Y-m-d H:i:s');
                    $condition = array('zone_code' => $this->input->post('edit_id'));
                    $status = $this->UtilityModel->updateThisData($table, $condition, $post);
                    $message = lang('updated_successfully');
                } else {
                    $post['zone_code'] = $this->input->post('zone_code');
                    $post['entry_date_time'] = date('Y-m-d H:i:s');
                    $post['status'] = '1';
                    $status = $this->UtilityModel->insertThisData($table, $post);
                    $message = lang('inserted_successfully');
                }

                if ($status) {
                    $updatedData = json_encode($post);
                    $data['status'] = true;
                    $this->UtilityModel->insertThisLog("Zone", $message, $updatedData);
                    // $this->session->set_flashdata('message', $this->generals_func->show_alert('suc', lang('updated_successfully')));
                } else {
                    $data['message'] = lang('something_went_wrong');
                }
            } else {
                if (!empty($checkName)) {
                    $data['message'] = "Zone name already exists";
                }
                if (!empty($checkCode)) {
                    $data['message'] = "Zone code already exists";
                }
            }
        } else {
            $data['message'] = 'All fields are required';
        }

        echo json_encode($data);
    }

    public function saveService() {

        $data['status'] = false;
        $this->form_validation->set_rules('name', lang('name'), 'required');
        $this->form_validation->set_rules('partner_code', lang('partner_code'), 'required');

        if ($this->form_validation->run() == true) {
            $post['name'] = $this->input->post('name');
            $moC['name'] = $this->input->post('name');
            $moCA = array();

            if ($this->input->post('edit_id') != "") {
                $moC['service_id !='] = $this->input->post('edit_id');
            }
            $checkName = $this->UtilityModel->getRequiredData('S', $this->db_ext . 'partner_service', '*', $moC);
            if (!empty($moCA)) {
                $checkCode = $this->UtilityModel->getRequiredData('S', $this->db_ext . 'partner_service', '*', $moCA);
            } else {
                $checkCode = array();
            }
            if (empty($checkName) && empty($checkCode)) {

                $table = $this->db_ext . "partner_service";
                $post['partner_code'] = $this->input->post('partner_code');
                if ($this->input->post('edit_id') != "") {
                    $post['update_date_time'] = date('Y-m-d H:i:s');
                    $condition = array('service_id' => $this->input->post('edit_id'));
                    $status = $this->UtilityModel->updateThisData($table, $condition, $post);
                    $message = lang('updated_successfully');
                } else {

                    $post['entry_date_time'] = date('Y-m-d H:i:s');
                    $post['status'] = '1';
                    $status = $this->UtilityModel->insertThisData($table, $post);
                    $message = lang('inserted_successfully');
                }

                if ($status) {
                    $updatedData = json_encode($post);
                    $data['status'] = true;
                    $this->UtilityModel->insertThisLog("Service", $message, $updatedData);
                    // $this->session->set_flashdata('message', $this->generals_func->show_alert('suc', lang('updated_successfully')));
                } else {
                    $data['message'] = lang('something_went_wrong');
                }
            } else {
                if (!empty($checkName)) {
                    $data['message'] = "Service name already exists";
                }
                if (!empty($checkCode)) {
                    $data['message'] = "Service code already exists";
                }
            }
        } else {
            $data['message'] = 'All fields are required';
        }

        echo json_encode($data);
    }

    public function saveState() {

        $data['status'] = false;
        $this->form_validation->set_rules('name', lang('name'), 'required');
        $this->form_validation->set_rules('country_code', lang('country_code'), 'required');
        $this->form_validation->set_rules('zone_code', lang('zone_code'), 'required');
        if ($this->input->post('edit_id') == "") {
            $this->form_validation->set_rules('state_code', lang('state_code'), 'required');
        }
        if ($this->form_validation->run() == true) {
            $post['name'] = $this->input->post('name');
            $post['zone_code'] = $this->input->post('zone_code');
            $moC['name'] = $this->input->post('name');
            $moCA = array();
            if ($this->input->post('edit_id') == "") {
                $moCA['state_code'] = $this->input->post('state_code');
            }
            if ($this->input->post('edit_id') != "") {
                $moC['state_code !='] = $this->input->post('edit_id');
            }
            $checkName = $this->UtilityModel->getRequiredData('S', $this->db_ext . 'state', '*', $moC);
            if (!empty($moCA)) {
                $checkCode = $this->UtilityModel->getRequiredData('S', $this->db_ext . 'state', '*', $moCA);
            } else {
                $checkCode = array();
            }
            if (empty($checkName) && empty($checkCode)) {

                $table = $this->db_ext . "state";
                $post['country_code'] = $this->input->post('country_code');
                if ($this->input->post('edit_id') != "") {
                    $post['update_date_time'] = date('Y-m-d H:i:s');
                    $condition = array('state_code' => $this->input->post('edit_id'));
                    $status = $this->UtilityModel->updateThisData($table, $condition, $post);
                    $message = lang('updated_successfully');
                } else {
                    $post['state_code'] = $this->input->post('state_code');
                    $post['entry_date_time'] = date('Y-m-d H:i:s');
                    $post['status'] = '1';
                    $status = $this->UtilityModel->insertThisData($table, $post);
                    $message = lang('inserted_successfully');
                }

                if ($status) {
                    $updatedData = json_encode($post);
                    $data['status'] = true;
                    $this->UtilityModel->insertThisLog("State", $message, $updatedData);
                    // $this->session->set_flashdata('message', $this->generals_func->show_alert('suc', lang('updated_successfully')));
                } else {
                    $data['message'] = lang('something_went_wrong');
                }
            } else {
                if (!empty($checkName)) {
                    $data['message'] = "State name already exists";
                }
                if (!empty($checkCode)) {
                    $data['message'] = "State code already exists";
                }
            }
        } else {
            $data['message'] = 'All fields are required';
        }

        echo json_encode($data);
    }

    public function saveCity() {

        $data['status'] = false;
        $this->form_validation->set_rules('name', lang('name'), 'required');
        $this->form_validation->set_rules('country_code', lang('country_code'), 'required');

        $this->form_validation->set_rules('state_code', lang('state_code'), 'required');
        $this->form_validation->set_rules('zone_code', lang('zone_code'), 'required');
        if ($this->form_validation->run() == true) {
            $post['name'] = $this->input->post('name');
            $moC['name'] = $this->input->post('name');
            $moCA = array();
            if ($this->input->post('edit_id') == "") {
                // $moCA['state_code'] = $this->input->post('country_code');
            }
            if ($this->input->post('edit_id') != "") {
                // $moC['state_code !='] = $this->input->post('edit_id');
            }
            // $checkName = $this->UtilityModel->getRequiredData('S', $this->db_ext . 'state', '*', $moC);
            if (!empty($moCA)) {
                // $checkCode = $this->UtilityModel->getRequiredData('S', $this->db_ext . 'state', '*', $moCA);
            } else {
                //  $checkCode = array();
            }
            // if (empty($checkName) && empty($checkCode)) 
            {

                $table = $this->db_ext . "city";
                //$post['country_code'] = $this->input->post('country_code');
                $post['state_code'] = $this->input->post('state_code');
                if ($this->input->post('edit_id') != "") {
                    $post['update_date_time'] = date('Y-m-d H:i:s');
                    $condition = array('city_id' => $this->input->post('edit_id'));
                    $status = $this->UtilityModel->updateThisData($table, $condition, $post);
                    $message = lang('updated_successfully');
                } else {

                    $post['entry_date_time'] = date('Y-m-d H:i:s');
                    $post['status'] = '1';
                    $status = $this->UtilityModel->insertThisData($table, $post);
                    $message = lang('inserted_successfully');
                }

                if ($status) {
                    $updatedData = json_encode($post);
                    $data['status'] = true;
                    $this->UtilityModel->insertThisLog("City", $message, $updatedData);
                    // $this->session->set_flashdata('message', $this->generals_func->show_alert('suc', lang('updated_successfully')));
                } else {
                    $data['message'] = lang('something_went_wrong');
                }
            }
            //else {
            //   if (!empty($checkName)) {
            //       $data['message'] = "State name already exists";
            //   }
            //  if (!empty($checkCode)) {
            //      $data['message'] = "State code already exists";
            //  }
            // }
        } else {
            $data['message'] = 'All fields are required';
        }

        echo json_encode($data);
    }

    public function savePincode() {

        $data['status'] = false;
        $this->form_validation->set_rules('pincode', lang('pincode'), 'required');
        $this->form_validation->set_rules('country_code', lang('country_code'), 'required');

        $this->form_validation->set_rules('state_code', lang('state_code'), 'required');
        $this->form_validation->set_rules('zone_code', lang('zone_code'), 'required');
        $this->form_validation->set_rules('city_id', lang('city'), 'required');

        if ($this->form_validation->run() == true) {
            $post['pincode'] = $this->input->post('pincode');
            $moC['pincode'] = $this->input->post('pincode');
            $moCA = array();
            if ($this->input->post('edit_id') == "") {
                $moCA['pincode'] = $this->input->post('pincode');
            }
            if ($this->input->post('edit_id') != "") {
                $moC['pincode !='] = $this->input->post('edit_id');
            }
            $checkName = $this->UtilityModel->getRequiredData('S', $this->db_ext . 'pincode', '*', $moC);
            if (!empty($moCA)) {
                $checkCode = $this->UtilityModel->getRequiredData('S', $this->db_ext . 'pincode', '*', $moCA);
            } else {
                $checkCode = array();
            }
            if (empty($checkName) && empty($checkCode)) {

                $table = $this->db_ext . "pincode";
                $post['city_id'] = $this->input->post('city_id');
                $post['state_code'] = $this->input->post('state_code');
                if ($this->input->post('edit_id') != "") {
                    $post['update_date_time'] = date('Y-m-d H:i:s');
                    $condition = array('pincode' => $this->input->post('edit_id'));
                    $status = $this->UtilityModel->updateThisData($table, $condition, $post);
                    $message = lang('updated_successfully');
                } else {

                    $post['entry_date_time'] = date('Y-m-d H:i:s');
                    $post['status'] = '1';
                    $status = $this->UtilityModel->insertThisData($table, $post);
                    $message = lang('inserted_successfully');
                }

                if ($status) {
                    $updatedData = json_encode($post);
                    $data['status'] = true;
                    $this->UtilityModel->insertThisLog("Pincode", $message, $updatedData);
                    // $this->session->set_flashdata('message', $this->generals_func->show_alert('suc', lang('updated_successfully')));
                } else {
                    $data['message'] = lang('something_went_wrong');
                }
            } else {
                if (!empty($checkName)) {
                    $data['message'] = "pin name already exists";
                }
                if (!empty($checkCode)) {
                    $data['message'] = "pin code already exists";
                }
            }
        } else {
            $data['message'] = 'All fields are required';
        }

        echo json_encode($data);
    }

}

?>