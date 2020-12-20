<?php

defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * Admin Authentication Class
 */
class Customer extends CI_Controller {
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

    function view() {
        $this->data['message'] = $this->session->flashdata('message');
        $this->data['page_title'] = 'Country';

        $this->data['head_link'] = array(
            array('link' => base_url('customer/manage'), 'class' => 'btn editmain mkbtn btn-success', 'name' => '<i class="fa fa-plus icon-size"></i> Add', 'id' => ''),
            array('link' => base_url('master/export_master/country'), 'name' => '<i class="fa fa-file icon-size"></i> Export', 'class' => 'btn mkbtn   btn-primary', 'id' => '', 'blank' => '1')
        );
        $this->data['breadcomb_title'] = 'Home <i class="fa fa-angle-double-right" aria-hidden="true"></i>  Customer <i class="fa fa-angle-double-right" aria-hidden="true"></i> <span class="active-breadcomb">View</span>';

        $this->data['main_title'] = "Customer";
        $this->data['status_url'] = base_url('customer/updateStatus/CUST');


        $this->load->template('customer/view', $this->data);
    }

    function viewAjax() {
        $data['message'] = lang('invalid_request');
        $main = array();
        $data['status'] = true;
        $main['edit'] = $this->UtilityModel->getRequiredData('S', $this->db_ext . 'customer', '*', array('customer_id' => $this->input->post('customer_id')));
        $data['html']['title'] = $main['edit']['name'];
        $data['html'] = $this->load->view('customer/ajax_view', $main, true);
        echo json_encode($data);
    }

    function manage($customerId = "") {
        $this->data['message'] = $this->session->flashdata('message');
        $this->data['page_title'] = 'Customer';
        $this->data['edit'] = array();
        $this->data['head_link'] = array(
            array('link' => base_url('customer/view'), 'class' => 'btn editmain mkbtn btn-success', 'name' => '<i class="fa fa-eye icon-size"></i> View', 'id' => ''),
            array('link' => base_url('master/export_master/country'), 'name' => '<i class="fa fa-file icon-size"></i> Export', 'class' => 'btn mkbtn   btn-primary', 'id' => '', 'blank' => '1')
        );
        $this->data['breadcomb_title'] = 'Home <i class="fa fa-angle-double-right" aria-hidden="true"></i>  Customer <i class="fa fa-angle-double-right" aria-hidden="true"></i> <span class="active-breadcomb">Manage</span>';

        $this->data['main_title'] = "Manage Customer";

        if ($customerId != "") {
            $this->data['edit'] = $this->UtilityModel->getRequiredData('S', $this->db_ext . 'customer', '*', array('customer_id' => $customerId));
            if (empty($this->data['edit'])) {
                echo 'invalid customer';
                exit();
            }
        }

        $country_arr = $this->UtilityModel->getRequiredData('M', $this->db_ext . 'country', 'country_code,name');
        $this->data['country_option'] = $this->generals_func->select_options($country_arr, 'country_code', 'name');
        $this->data['state_option'] = $this->data['city_option'] = array();

        $this->load->template('customer/manage', $this->data);
    }

    public function getCustomerList() {
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

        $result = $this->CommanModel->getCustomerList($limit, $perpage);
        $data['query'] = $this->db->last_query();
        $total_rows = $this->UtilityModel->exeFoundRows();
        $row_data = array();
        $checkedAsset = $this->session->userdata('checked_asset');
        foreach ($result as $key => $row) {


            $row_data[$key]['id'] = $key;
            $row_data[$key]['cell'][] = ($limit * $perpage - $limit) + ($key + 1);
            $row_data[$key]['cell'][] = $row['customer_code'];
            $row_data[$key]['cell'][] = $row['name'] . ' (' . $row['billing_name'] . ')';
            $row_data[$key]['cell'][] = $row['email_id'];
            $gstHtml = lang('NA');
            if ($row['enable_gst'] == "1") {
                $gstHtml = lang('GST') . " : " . $row['gst_no'] . '<br/>' . lang('PAN') . " : " . $row['pan_no'];
            }
            $row_data[$key]['cell'][] = $row['phone_no'];
            $row_data[$key]['cell'][] = $gstHtml;
//  $row_data[$key]['cell'][] = "  <a href='javascript:;' class='btn btn-info viewcontact'   main-attr='" . $row['country_code'] . "' name-attr='" . $row['name'] . "' title='" . lang('edit') . "' >View All</a>";
// $row_data[$key]['cell'][] = "  <a href='javascript:;' class='btn btn-info viewbank'   main-attr='" . $row['country_code'] . "' name-attr='" . $row['name'] . "' title='" . lang('edit') . "' >View All</a>";

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

            $editLink = "  <a href='" . base_url('customer/manage/' . $row['customer_id']) . "' class='btn btn-warning editmain'  name-attr='" . $row['name'] . "' title='" . lang('edit') . "' ><i class='fa fa-edit'></i></a>";

            $statusLink = "  <a href='javascript:;' class='btn " . $statusClass . " status' main-attr='" . $row['customer_id'] . "' status-attr='" . $row['status'] . "'  name-attr='" . $row['name'] . "' title='" . lang('change_status') . "' >" . $statusHtml . "</a>";
            $viewLink = "  <a href='javascript:;' class='btn btn-primary view-dtls' main-attr='" . $row['customer_id'] . "'  name-attr='" . $row['name'] . "' title='" . lang('view') . "' ><i class='fa fa-eye'></i></a>";

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

    function checkCustomerCode() {
        $data['status'] = false;
        $data['message'] = 'Customer Code is Required';

        $condition['customer_code'] = $this->input->get_post('customer_code');
        if ($this->input->get_post('edit_id') != "") {
            $condition['customer_id !='] = $this->input->get_post('edit_id');
        }

        $table = $this->db_ext . 'customer';
        $customerDtls = $this->UtilityModel->getRequiredData('S', $table, '*', $condition);

        if (empty($customerDtls)) {
            $data['message'] = 'Customer code is available';
            $data['status'] = true;
        } else {
            $data['message'] = 'Customer code already exists';
        }

        echo json_encode($data);
    }

    public function manageCustomer() {
        $data['status'] = "0";
        $procced = 1;
        $data['redirect_url'] = "";
        $table = $this->db_ext . 'customer';
        $data['message'] = lang('all_fields_with_star_is_required');
        $post['name'] = $this->input->post('name');
        if ($procced == 1) {
            if ($post['name'] == "") {
                $procced = 0;
                $data['message'] = lang('name_is_required');
            }
        }
        if ($procced == 1) {
            $post['customer_code'] = $this->input->post('customer_code');
            if ($post['customer_code'] == "") {
                $procced = 0;
                $data['message'] = lang('customer_code_is_required');
            } else {
                $condition['customer_code'] = $post['customer_code'];
                if ($this->input->post('edit_id') != "") {
                    $condition['customer_id !='] = $this->input->post('edit_id');
                }
                $customerDtls = $this->UtilityModel->getRequiredData('S', $table, '*', $condition);
                if (!empty($customerDtls)) {
                    $procced = 0;
                    $data['message'] = lang('customer_code_already_assigned');
                }
            }
        }
        if ($procced == 1) {
            $post['billing_name'] = $this->input->post('billing_name');
            if ($post['billing_name'] == "") {
                $procced = 0;
                $data['message'] = lang('billing_name_is_required');
            }
        }
        if ($procced == 1) {
            $post['billing_name'] = $this->input->post('billing_name');
            if ($post['billing_name'] == "") {
                $procced = 0;
                $data['message'] = lang('billing_name_is_required');
            }
        }

        if ($procced == 1) {
            $post['phone_no'] = $this->input->post('phone_no');
            if ($post['phone_no'] == "") {
                $procced = 0;
                $data['message'] = lang('phone_no_is_required');
            }
        }

        if ($procced == 1) {
            $post['email_id'] = $this->input->post('email_id_main');
            if ($post['email_id'] == "") {
                $procced = 0;
                $data['message'] = lang('email_id_is_required');
            }
        }
        if ($procced == 1) {
            $post['active_from'] = $this->input->post('active_from');
            if ($post['active_from'] == "") {
                $procced = 0;
                $data['message'] = lang('active_from_is_required');
            } else {
                $post['active_from'] = date('Y-m-d', strtotime($post['active_from']));
            }
        }
        if ($procced == 1) {
            $post['notes'] = $this->input->post('notes');
            if ($this->input->post('enable_gst') == "1") {
                $post['enable_gst'] = "1";
                $post['gst_no'] = $this->input->post('gst_no');
                if ($post['gst_no'] == "") {
                    $procced = 0;
                    $data['message'] = lang('gst_no_is_required');
                }
                $post['pan_no'] = $this->input->post('pan_no');
                if ($post['pan_no'] == "") {
                    $procced = 0;
                    $data['message'] = lang('pan_no_is_required');
                }
            } else {
                $post['enable_gst'] = "0";
            }
        }
        if ($procced == 1) {
            $image = $this->input->post('old_image');
            if (isset($_FILES['image']) && $_FILES['image']['name'] != '') {
                $this->load->library('upload');
                $config['upload_path'] = dirname($_SERVER["SCRIPT_FILENAME"]) . '/assets/uploads/customer/';
                $config['allowed_types'] = '*';
                $config['max_size'] = '4096';
                $config['overwrite'] = true;
                $config['file_name'] = time() . rand(1000, 9999);
                $this->upload->initialize($config);
                if ($this->upload->do_upload('image')) {
                    $data = array('upload_data' => $this->upload->data());
                    $image = $data['upload_data']['file_name'];
                } else {
                    $data['message'] = $this->generals_func->show_alert('err', 'Error!' . $this->upload->display_errors());
                    $procced = 0;
                }
            }
        }
        if ($procced == 1) {
            $post['logo'] = $image;
            if ($this->input->post('edit_id') != "") {
                $post['update_date_time'] = date('Y-m-d H:i:s');
                $condition = array('customer_id' => $this->input->post('edit_id'));
                $status = $this->UtilityModel->updateThisData($table, $condition, $post);
                $message = lang('updated_successfully');
                $customer_id = $this->input->post('edit_id');
            } else {
                //  $post['partner_code'] = $this->input->post('partner_code');
                $post['entry_date_time'] = date('Y-m-d H:i:s');
                $post['status'] = '1';
                $status = $this->UtilityModel->insertThisData($table, $post);
                $message = lang('inserted_successfully');
                $customer_id = $this->db->insert_id();
            }

            if ($status) {
                $mainJ['customer'] = $post;
                $insertedContact = $insertedAddress = $insertedBank = array();
                $contactTable = $this->db_ext . "customer_contact";
                $addressTable = $this->db_ext . "customer_address";
                $bankTable = $this->db_ext . "customer_bank";
                //Insert Contact
                $name = $this->input->post('contact_name');
                $designation = $this->input->post('designation');
                $designation = $this->input->post('designation');
                $emailid = $this->input->post('email_id_contact');
                $mobile_no = $this->input->post('mobile_no');
                $contact_default = $this->input->post('is_default_contact');
                $this->UtilityModel->deleteThisData($contactTable, array('customer_id' => $customer_id));
                foreach ($name as $mk => $n) {
                    $contactPost['name'] = $n;
                    $contactPost['designation'] = $designation[$mk];
                    $contactPost['mobile_no'] = $mobile_no[$mk];
                    $contactPost['email_id'] = $emailid[$mk];
                    $contactPost['customer_id'] = $customer_id;
                    $contactPost['sequence'] = $mk;
                    $contactPost['is_default'] = "0";
                    if (isset($contact_default[$mk])) {
                        if ($contact_default[$mk] == "1") {
                            $contactPost['is_default'] = "1";
                        }
                    }
                    $this->UtilityModel->insertThisData($contactTable, $contactPost);
                    $insertedContact[] = $contactPost;
                }

                //Insert Address
                $country_code = $this->input->post('country_code');
                $state_code = $this->input->post('state_code');
                $city_id = $this->input->post('city_id');
                $address = $this->input->post('address');
                $pincode = $this->input->post('pincode');
                $address_default = $this->input->post('is_default_contact');
                $this->UtilityModel->deleteThisData($addressTable, array('customer_id' => $customer_id));
                foreach ($country_code as $mk => $n) {
                    $addressPost['country_code'] = $n;
                    $addressPost['state_code'] = $state_code[$mk];
                    $addressPost['city_id'] = $city_id[$mk];
                    $addressPost['address'] = $address[$mk];
                    $addressPost['pincode'] = $pincode[$mk];
                    $addressPost['customer_id'] = $customer_id;
                    $addressPost['sequence'] = $mk;
                    $addressPost['is_default'] = "0";
                    if (isset($address_default[$mk])) {
                        if ($address_default[$mk] == "1") {
                            $addressPost['is_default'] = "1";
                        }
                    }
                    $this->UtilityModel->insertThisData($addressTable, $addressPost);
                    $insertedAddress[] = $contactPost;
                }


                //Insert Bank
                $name = $this->input->post('bank_name');
                $bank = $this->input->post('bank');
                $ifsc_code = $this->input->post('ifsc_code');
                $account_no = $this->input->post('account_no');

                $bank_default = $this->input->post('is_default_contact');
                $this->UtilityModel->deleteThisData($bankTable, array('customer_id' => $customer_id));
                foreach ($name as $mk => $n) {
                    $bankPost['name'] = $n;
                    $bankPost['bank'] = $bank[$mk];
                    $bankPost['account_number'] = $account_no[$mk];
                    $bankPost['ifsc_code'] = $ifsc_code[$mk];
                    $bankPost['customer_id'] = $customer_id;
                    $bankPost['sequence'] = $mk;
                    $bankPost['is_default'] = "0";
                    if (isset($bank_default[$mk])) {
                        if ($bank_default[$mk] == "1") {
                            $bankPost['is_default'] = "1";
                        }
                    }
                    $this->UtilityModel->insertThisData($bankTable, $bankPost);
                    $insertedBank[] = $bankPost;
                }

                $mainJ['contact'] = $insertedContact;
                $mainJ['address'] = $insertedAddress;
                $mainJ['bank'] = $insertedBank;
                $updatedData = json_encode($mainJ);
                $data['status'] = "1";
                $data['redirect_url'] = base_url('customer/view');
                $data['message'] = $message;
                $this->UtilityModel->insertThisLog("Customer", $message, $updatedData, $customer_id);
            } else {
                $data['message'] = lang('something_went_wrong_please_try_after_some_time');
            }
        }
        echo $data['status'] . '###' . $data['message'] . "###" . $data['redirect_url'];
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