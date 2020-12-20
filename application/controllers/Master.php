<?php

defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * Admin Authentication Class
 */
class Master extends CI_Controller {
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

    function country() {
        $this->data['message'] = $this->session->flashdata('message');
        $this->data['page_title'] = 'Country';

        $this->data['head_link'] = array(
            array('link' => 'javascript:;', 'class' => 'btn editmain mkbtn btn-success', 'name' => '<i class="fa fa-plus icon-size"></i> Add', 'id' => ''),
            array('link' => base_url('master/export_master/country'), 'name' => '<i class="fa fa-file icon-size"></i> Export', 'class' => 'btn mkbtn   btn-primary', 'id' => '', 'blank' => '1')
        );
        $this->data['breadcomb_title'] = 'Master <i class="fa fa-angle-double-right" aria-hidden="true"></i>  Country <i class="fa fa-angle-double-right" aria-hidden="true"></i> <span class="active-breadcomb">View</span>';

        $this->data['main_title'] = "Country";
        $this->data['status_url'] = base_url('master/updateStatus/COUNTRY');
        $this->data['main_url'] = base_url('master/getCountryList');
        $this->data['get_view_link'] = base_url('master/getView/COUNTRY');
        $this->data['submit_url'] = base_url('master/saveCountry');

        $this->load->template('master/country/view', $this->data);
    }

    function gst() {
        $this->data['message'] = $this->session->flashdata('message');
        $this->data['page_title'] = 'GST';

        $this->data['head_link'] = array(
            array('link' => 'javascript:;', 'class' => 'btn editmain mkbtn btn-success', 'name' => '<i class="fa fa-plus icon-size"></i> Add', 'id' => ''),
            array('link' => base_url('master/export_master/country'), 'name' => '<i class="fa fa-file icon-size"></i> Export', 'class' => 'btn mkbtn   btn-primary', 'id' => '', 'blank' => '1')
        );
        $this->data['breadcomb_title'] = 'Company <i class="fa fa-angle-double-right" aria-hidden="true"></i>  GST <i class="fa fa-angle-double-right" aria-hidden="true"></i> <span class="active-breadcomb">View</span>';

        $this->data['main_title'] = "GST";
        $this->data['status_url'] = base_url('master/updateStatus/GST');
        $this->data['main_url'] = base_url('master/getGstList');
        $this->data['get_view_link'] = base_url('master/getView/GST');
        $this->data['submit_url'] = base_url('master/saveGST');

        $this->load->template('master/gst/view', $this->data);
    }

    function profile() {
        $this->data['message'] = $this->session->flashdata('message');
        $this->data['page_title'] = 'Profile';
        $this->data['main_title'] = "Profile";
        $this->data['edit'] = array();
        $this->data['breadcomb_title'] = 'Company <i class="fa fa-angle-double-right" aria-hidden="true"></i>  <span class="active-breadcomb">Profile</span>';


        $this->form_validation->set_rules('company_name', lang('company_name'), 'required');
        $this->form_validation->set_rules('phone_no', lang('phone_no'), 'required');
        $this->form_validation->set_rules('email_id', lang('email_id'), 'required');
        $this->form_validation->set_rules('company_code', lang('company_code'), 'required');
        $this->form_validation->set_rules('country_code', lang('country_code'), 'required');
        $this->form_validation->set_rules('zone_code', lang('zone_code'), 'required');
        $this->form_validation->set_rules('state_code', lang('state_code'), 'required');
        $this->form_validation->set_rules('city_id', lang('city'), 'required');
        $this->form_validation->set_rules('pincode', lang('pincode'), 'required');
        $this->form_validation->set_rules('address', lang('address'), 'required');


        if ($this->form_validation->run() == true) {
            $profile_id = $this->input->post('profile_id');
            $post['company_name'] = $this->input->post('company_name');
            $post['phone_no'] = $this->input->post('phone_no');
            $post['email'] = $this->input->post('email_id');
            $post['company_code'] = $this->input->post('company_code');
            if ($this->input->post('enable_gst') == '1') {
                $post['enable_gst'] = '1';
                $post['gst_no'] = $this->input->post('gst_no');
                $post['pan_no'] = $this->input->post('pan_no');
            } else {
                $post['enable_gst'] = '0';
                $post['gst_no'] = "";
                $post['pan_no'] = '';
            }
            $post['country_code'] = $this->input->post('country_code');
            $post['zone_code'] = $this->input->post('zone_code');
            $post['state_code'] = $this->input->post('state_code');
            $post['city_id'] = $this->input->post('city_id');
            $post['pincode'] = $this->input->post('pincode');
            $post['address'] = $this->input->post('address');
            $table = $this->db_ext . "profile";
           
            if ($profile_id != "") {
                $post['last_updated_date_time'] = date('Y-m-d H:i:s');
                $condition = array('profile_id' => $profile_id);
                $insertId = $profile_id;
                $status = $this->UtilityModel->updateThisData($table, $condition, $post);
                $message = lang('updated_successfully');
            } else {
                $post['entry_date_time'] = date('Y-m-d H:i:s');
                $post['profile_id'] = 1;
                $insertId = 1;
                
                $status = $this->UtilityModel->insertThisData($table, $post);
                $message = lang('inserted_successfully');
            }

            $contact_name = $this->input->post('contact_name');
            $contact_designation = $this->input->post('contact_designation');
            $contact_email = $this->input->post('contact_email');
            $contact_mobile_no = $this->input->post('contact_mobile_no');
            $is_default_contact = $this->input->post('is_default_contact');
            $this->UtilityModel->deleteThisData($this->db_ext . "profile_contact", array('profile_id' => $profile_id));

            foreach ($contact_name as $mkey => $contact) {
                if ($contact != "") {
                    $post_contact = array();
                    $post_contact['name'] = $contact;
                    $post_contact['designation'] = $contact_designation[$mkey];
                    $post_contact['email_id'] = $contact_email[$mkey];
                    $post_contact['mobile_no'] = $contact_mobile_no[$mkey];
                    $post_contact['is_default'] = $is_default_contact[$mkey];
                    $post_contact['profile_id'] = $insertId;
                    $post_contact['sequence'] = $mkey;
                    $this->UtilityModel->insertThisData($this->db_ext . "profile_contact", $post_contact);
                }
            }

            $bank_name = $this->input->post('bank_name');
            $bank_bank = $this->input->post('bank_bank');
            $bank_ifsc_code = $this->input->post('bank_ifsc_code');
            $bank_account_no = $this->input->post('bank_account_no');
            $is_default_bank = $this->input->post('is_default_bank');
            $this->UtilityModel->deleteThisData($this->db_ext . "profile_bank", array('profile_id' => $profile_id));
            foreach ($bank_name as $mkey => $bank) {
                if ($bank != "") {
                    $post_bank = array();
                    $post_bank['name'] = $bank;
                    $post_bank['bank'] = $bank_bank[$mkey];
                    $post_bank['ifsc_code'] = $bank_ifsc_code[$mkey];
                    $post_bank['account_no'] = $bank_account_no[$mkey];
                    $post_bank['is_default'] = $is_default_bank[$mkey];
                    $post_bank['profile_id'] = $insertId;
                    $post_bank['sequence'] = $mkey;
                    $this->UtilityModel->insertThisData($this->db_ext . "profile_bank", $post_bank);
                }
            }
            if($status)
        {
             $this->session->set_flashdata('message', $this->generals_func->show_alert('suc', $message));
             redirect(base_url('master/profile'));
        }
        }
        
        

        $country_arr = $this->UtilityModel->getRequiredData('M', $this->db_ext . 'country', 'country_code,name');
        $this->data['country_option'] = $this->generals_func->select_options($country_arr, 'country_code', 'name');
        $this->data['state_option'] = array();
        $this->data['city_option'] = array();
        $this->data['zone_option'] = array();
        $this->data['pincode_option'] = array();

        $this->data['edit'] = $this->UtilityModel->getRequiredData('S', $this->db_ext . 'profile', '*', array('profile_id' => '1'));
        if (!empty($this->data['edit'])) {
            $this->data['edit_contact'] = $this->UtilityModel->getRequiredData('M', $this->db_ext . 'profile_contact', '*', array('profile_id' => '1'), 'sequence');
            $this->data['edit_bank'] = $this->UtilityModel->getRequiredData('M', $this->db_ext . 'profile_bank', '*', array('profile_id' => '1'), 'sequence');
            $country_code = $this->data['edit']['country_code'];
            $zone_arr = $this->UtilityModel->getRequiredData('M', $this->db_ext . 'zone', 'zone_code,name', array('country_code' => $country_code));
            $this->data['zone_option'] = $this->generals_func->select_options($zone_arr, 'zone_code', 'name');

            $zone_code = $this->data['edit']['zone_code'];
            $state_arr = $this->UtilityModel->getRequiredData('M', $this->db_ext . 'state', 'state_code,name', array('zone_code' => $zone_code));
            $this->data['state_option'] = $this->generals_func->select_options($state_arr, 'state_code', 'name');
            $state_code = $this->data['edit']['state_code'];
            $city_arr = $this->UtilityModel->getRequiredData('M', $this->db_ext . 'city', 'city_id,name', array('state_code' => $state_code));
            $this->data['city_option'] = $this->generals_func->select_options($city_arr, 'city_id', 'name');
            $city_id = $this->data['edit']['city_id'];
            $pincode_arr = $this->UtilityModel->getRequiredData('M', $this->db_ext . 'pincode', 'pincode', array('city_id' => $city_id));
            $this->data['pincode_option'] = $this->generals_func->select_options($pincode_arr, 'pincode', 'pincode');
        } else {
            $this->data['edit'] = array();
            $this->data['edit_contact'] = array();
            $this->data['edit_bank'] = array();
        }


        $this->load->template('master/profile', $this->data);
    }

    function partners() {
        $this->data['message'] = $this->session->flashdata('message');
        $this->data['page_title'] = 'Partners';
        $this->data['head_link'] = array(
            array('link' => 'javascript:;', 'class' => 'btn editmain mkbtn btn-success', 'name' => '<i class="fa fa-plus icon-size"></i> Add', 'id' => ''),
            array('link' => base_url('master/export_master/partners'), 'name' => '<i class="fa fa-file icon-size"></i> Export', 'class' => 'btn mkbtn   btn-primary', 'id' => '', 'blank' => '1')
        );
        $this->data['breadcomb_title'] = 'Master <i class="fa fa-angle-double-right" aria-hidden="true"></i>  Partners <i class="fa fa-angle-double-right" aria-hidden="true"></i> <span class="active-breadcomb">View</span>';
        $this->data['main_title'] = "Partners";
        $this->data['status_url'] = base_url('master/updateStatus/PARTNER');
        $this->data['main_url'] = base_url('master/getPartnerList');
        $this->data['get_view_link'] = base_url('master/getView/PARTNER');
        $this->data['submit_url'] = base_url('master/savePartner');
        $this->load->template('master/partner/view', $this->data);
    }

    function zone() {
        $this->data['message'] = $this->session->flashdata('message');
        $this->data['page_title'] = 'Zone';

        $this->data['head_link'] = array(
            array('link' => 'javascript:;', 'class' => 'btn editmain mkbtn btn-success', 'name' => '<i class="fa fa-plus icon-size"></i> Add', 'id' => ''),
            array('link' => base_url('master/export_master/zone'), 'name' => '<i class="fa fa-file icon-size"></i> Export', 'class' => 'btn mkbtn   btn-primary', 'id' => '', 'blank' => '1')
        );
        $this->data['breadcomb_title'] = 'Master <i class="fa fa-angle-double-right" aria-hidden="true"></i>  Zone <i class="fa fa-angle-double-right" aria-hidden="true"></i> <span class="active-breadcomb">View</span>';

        $this->data['main_title'] = "Zone";
        $this->data['status_url'] = base_url('master/updateStatus/ZONE');
        $this->data['main_url'] = base_url('master/getZoneList');
        $this->data['get_view_link'] = base_url('master/getView/ZONE');
        $this->data['submit_url'] = base_url('master/saveZone');

        $this->load->template('master/zone/view', $this->data);
    }

    function state() {
        $this->data['message'] = $this->session->flashdata('message');
        $this->data['page_title'] = 'State';

        $this->data['head_link'] = array(
            array('link' => 'javascript:;', 'class' => 'btn editmain mkbtn btn-success', 'name' => '<i class="fa fa-plus icon-size"></i> Add', 'id' => ''),
            array('link' => base_url('master/export_master/state'), 'name' => '<i class="fa fa-file icon-size"></i> Export', 'class' => 'btn mkbtn   btn-primary', 'id' => '', 'blank' => '1')
        );
        $this->data['breadcomb_title'] = 'Master <i class="fa fa-angle-double-right" aria-hidden="true"></i>  State <i class="fa fa-angle-double-right" aria-hidden="true"></i> <span class="active-breadcomb">View</span>';

        $this->data['main_title'] = "State";
        $this->data['status_url'] = base_url('master/updateStatus/STATE');
        $this->data['main_url'] = base_url('master/getStateList');
        $this->data['get_view_link'] = base_url('master/getView/STATE');
        $this->data['submit_url'] = base_url('master/saveState');

        $this->load->template('master/state/view', $this->data);
    }

    function bookType() {
        $this->data['message'] = $this->session->flashdata('message');
        $this->data['page_title'] = 'Book type';

        $this->data['head_link'] = array(
            array('link' => 'javascript:;', 'class' => 'btn editmain mkbtn btn-success', 'name' => '<i class="fa fa-plus icon-size"></i> Add', 'id' => ''),
            array('link' => base_url('master/export_master/booktype'), 'name' => '<i class="fa fa-file icon-size"></i> Export', 'class' => 'btn mkbtn   btn-primary', 'id' => '', 'blank' => '1')
        );
        $this->data['breadcomb_title'] = 'Service <i class="fa fa-angle-double-right" aria-hidden="true"></i>  Book Type <i class="fa fa-angle-double-right" aria-hidden="true"></i> <span class="active-breadcomb">View</span>';

        $this->data['main_title'] = "Book type";
        $this->data['status_url'] = base_url('master/updateStatus/BOOKTYPE');
        $this->data['main_url'] = base_url('master/getBookTypeList');
        $this->data['get_view_link'] = base_url('master/getView/BOOKTYPE');
        $this->data['submit_url'] = base_url('master/saveBookType');

        $this->load->template('master/booktype/view', $this->data);
    }

    function services() {
        $this->data['message'] = $this->session->flashdata('message');
        $this->data['page_title'] = 'Partner Service';

        $this->data['head_link'] = array(
            array('link' => 'javascript:;', 'class' => 'btn editmain mkbtn btn-success', 'name' => '<i class="fa fa-plus icon-size"></i> Add', 'id' => ''),
            array('link' => base_url('master/export_master/services'), 'name' => '<i class="fa fa-file icon-size"></i> Export', 'class' => 'btn mkbtn   btn-primary', 'id' => '', 'blank' => '1')
        );
        $this->data['breadcomb_title'] = 'Master <i class="fa fa-angle-double-right" aria-hidden="true"></i>  Partner Service <i class="fa fa-angle-double-right" aria-hidden="true"></i> <span class="active-breadcomb">View</span>';

        $this->data['main_title'] = "Partner Service";
        $this->data['status_url'] = base_url('master/updateStatus/SERVICE');
        $this->data['main_url'] = base_url('master/getPartnerServiceList');
        $this->data['get_view_link'] = base_url('master/getView/SERVICE');
        $this->data['submit_url'] = base_url('master/saveService');

        $this->load->template('master/service/view', $this->data);
    }

    function city() {
        $this->data['message'] = $this->session->flashdata('message');
        $this->data['page_title'] = 'City';

        $this->data['head_link'] = array(
            array('link' => 'javascript:;', 'class' => 'btn editmain mkbtn btn-success', 'name' => '<i class="fa fa-plus icon-size"></i> Add', 'id' => ''),
            array('link' => base_url('master/export_master/city'), 'name' => '<i class="fa fa-file icon-size"></i> Export', 'class' => 'btn mkbtn   btn-primary', 'id' => '', 'blank' => '1')
        );
        $this->data['breadcomb_title'] = 'Master <i class="fa fa-angle-double-right" aria-hidden="true"></i>  State <i class="fa fa-angle-double-right" aria-hidden="true"></i> <span class="active-breadcomb">View</span>';

        $this->data['main_title'] = "City";
        $this->data['status_url'] = base_url('master/updateStatus/CITY');
        $this->data['main_url'] = base_url('master/getCityList');
        $this->data['get_view_link'] = base_url('master/getView/CITY');
        $this->data['submit_url'] = base_url('master/saveCity');

        $this->load->template('master/city/view', $this->data);
    }

    function pincode() {
        $this->data['message'] = $this->session->flashdata('message');
        $this->data['page_title'] = 'Pincode';

        $this->data['head_link'] = array(
            array('link' => base_url('master/bulk_pincode'), 'name' => '<i class="fa fa-file icon-size"></i> Bulk Upload', 'class' => 'btn mkbtn   btn-primary', 'id' => '', 'blank' => '1'),
            array('link' => 'javascript:;', 'class' => 'btn editmain mkbtn btn-success', 'name' => '<i class="fa fa-plus icon-size"></i> Add', 'id' => ''),
            array('link' => base_url('master/export_master/pincode'), 'name' => '<i class="fa fa-file icon-size"></i> Export', 'class' => 'btn mkbtn   btn-primary', 'id' => '', 'blank' => '1')
        );
        $this->data['breadcomb_title'] = 'Master <i class="fa fa-angle-double-right" aria-hidden="true"></i>  Pincode <i class="fa fa-angle-double-right" aria-hidden="true"></i> <span class="active-breadcomb">View</span>';

        $this->data['main_title'] = "Pincode";
        $this->data['status_url'] = base_url('master/updateStatus/PINCODE');
        $this->data['main_url'] = base_url('master/getPincodeList');
        $this->data['get_view_link'] = base_url('master/getView/PINCODE');
        $this->data['submit_url'] = base_url('master/savePincode');

        $this->load->template('master/pincode/view', $this->data);
    }

    public function getCountryList() {
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
            $row_data[$key]['cell'][] = ($limit * $perpage - $limit) + ($key + 1);

            $row_data[$key]['cell'][] = $row['country_code'];
            $row_data[$key]['cell'][] = $row['name'];
            $row_data[$key]['cell'][] = $row['phone_code'];
            $type = lang('international');
            if ($row['type'] == 'D') {
                $type = lang('domestic');
            }
            $row_data[$key]['cell'][] = $type;


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

            $editLink = "  <a href='javascript:;' class='btn btn-warning editmain' style='color:#fff'   main-attr='" . $row['country_code'] . "' name-attr='" . $row['name'] . "' title='" . lang('edit') . "' ><i class='fa fa-edit'></i></a>";

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

    public function getGstList() {
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

        $result = $this->CommanModel->getGstList($limit, $perpage);
        $data['query'] = $this->db->last_query();
        $total_rows = $this->UtilityModel->exeFoundRows();
        $row_data = array();

        foreach ($result as $key => $row) {


            $row_data[$key]['id'] = $key;

            $row_data[$key]['cell'][] = $row['name'];
            $row_data[$key]['cell'][] = $row['value'];
            $row_data[$key]['cell'][] = date('d M Y', strtotime($row['effective_date']));

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

            $editLink = "  <a href='javascript:;' class='btn btn-warning editmain'   main-attr='" . $row['gst_id'] . "' name-attr='" . $row['name'] . "' title='" . lang('edit') . "' ><i class='fa fa-edit'></i></a>";

            $statusLink = "  <a href='javascript:;' class='btn " . $statusClass . " status' status-attr='" . $row['status'] . "' main-attr='" . $row['gst_id'] . "' name-attr='" . $row['name'] . "' title='" . lang('change_status') . "' >" . $statusHtml . "</a>";

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

    public function getPartnerList() {


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

        $result = $this->CommanModel->getPartnerList($limit, $perpage);
        $data['query'] = $this->db->last_query();
        $total_rows = $this->UtilityModel->exeFoundRows();
        $row_data = array();
        $checkedAsset = $this->session->userdata('checked_asset');
        foreach ($result as $key => $row) {
            $row_data[$key]['id'] = $key;
            $row_data[$key]['cell'][] = $row['partner_code'];

            $row_data[$key]['cell'][] = $row['name'];
            $row_data[$key]['cell'][] = $row['contact'];
            $row_data[$key]['cell'][] = $row['email_id'];
            $row_data[$key]['cell'][] = $row['description'];
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
            $editLink = "  <a href='javascript:;' class='btn btn-warning editmain'   main-attr='" . $row['partner_code'] . "' name-attr='" . $row['name'] . "' title='" . lang('edit') . "' ><i class='fa fa-edit'></i></a>";
            $statusLink = "  <a href='javascript:;' class='btn " . $statusClass . " status' status-attr='" . $row['status'] . "' main-attr='" . $row['partner_code'] . "' name-attr='" . $row['name'] . "' title='" . lang('change_status') . "' >" . $statusHtml . "</a>";
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

    public function getZoneList() {
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

        $result = $this->CommanModel->getZoneList($limit, $perpage);
        $data['query'] = $this->db->last_query();
        $total_rows = $this->UtilityModel->exeFoundRows();
        $row_data = array();
        $checkedAsset = $this->session->userdata('checked_asset');
        foreach ($result as $key => $row) {


            $row_data[$key]['id'] = $key;
            $row_data[$key]['cell'][] = $row['country_code'];
            $row_data[$key]['cell'][] = $row['country_name'];
            $row_data[$key]['cell'][] = $row['zone_code'];
            $row_data[$key]['cell'][] = $row['name'];


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

            $editLink = "  <a href='javascript:;' class='btn btn-warning editmain'   main-attr='" . $row['zone_code'] . "' name-attr='" . $row['name'] . "' title='" . lang('edit') . "' ><i class='fa fa-edit'></i></a>";

            $statusLink = "  <a href='javascript:;' class='btn " . $statusClass . " status' status-attr='" . $row['status'] . "' main-attr='" . $row['zone_code'] . "' name-attr='" . $row['name'] . "' title='" . lang('change_status') . "' >" . $statusHtml . "</a>";

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

    public function getBookTypeList() {
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

        $result = $this->CommanModel->getBookTypeList($limit, $perpage);
        $data['query'] = $this->db->last_query();
        $total_rows = $this->UtilityModel->exeFoundRows();
        $row_data = array();
        $checkedAsset = $this->session->userdata('checked_asset');
        foreach ($result as $key => $row) {


            $row_data[$key]['id'] = $key;
            $row_data[$key]['cell'][] = $row['partner_code'];
            $row_data[$key]['cell'][] = $row['partner_name'];
            $row_data[$key]['cell'][] = $row['name'];


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

            $editLink = "  <a href='javascript:;' class='btn btn-warning editmain'   main-attr='" . $row['book_type_id'] . "' name-attr='" . $row['name'] . "' title='" . lang('edit') . "' ><i class='fa fa-edit'></i></a>";

            $statusLink = "  <a href='javascript:;' class='btn " . $statusClass . " status' status-attr='" . $row['status'] . "' main-attr='" . $row['book_type_id'] . "' name-attr='" . $row['name'] . "' title='" . lang('change_status') . "' >" . $statusHtml . "</a>";

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

    public function getPartnerServiceList() {
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

        $result = $this->CommanModel->getPartnerServiceList($limit, $perpage);
        $data['query'] = $this->db->last_query();
        $total_rows = $this->UtilityModel->exeFoundRows();
        $row_data = array();
        $checkedAsset = $this->session->userdata('checked_asset');
        foreach ($result as $key => $row) {


            $row_data[$key]['id'] = $key;
            $row_data[$key]['cell'][] = $row['partner_code'];
            $row_data[$key]['cell'][] = $row['partner_name'];

            $row_data[$key]['cell'][] = $row['name'];


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

            $editLink = "  <a href='javascript:;' class='btn btn-warning editmain'   main-attr='" . $row['service_id'] . "' name-attr='" . $row['name'] . "' title='" . lang('edit') . "' ><i class='fa fa-edit'></i></a>";

            $statusLink = "  <a href='javascript:;' class='btn " . $statusClass . " status' status-attr='" . $row['status'] . "' main-attr='" . $row['service_id'] . "' name-attr='" . $row['name'] . "' title='" . lang('change_status') . "' >" . $statusHtml . "</a>";

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

    public function getStateList() {
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

        $result = $this->CommanModel->getStateList($limit, $perpage);
        $data['query'] = $this->db->last_query();
        $total_rows = $this->UtilityModel->exeFoundRows();
        $row_data = array();
        $checkedAsset = $this->session->userdata('checked_asset');
        foreach ($result as $key => $row) {


            $row_data[$key]['id'] = $key;
            $row_data[$key]['cell'][] = $row['country_code'];
            $row_data[$key]['cell'][] = $row['country_name'];
            $row_data[$key]['cell'][] = $row['zone_code'];
            $row_data[$key]['cell'][] = $row['zone_name'];
            $row_data[$key]['cell'][] = $row['state_code'];
            $row_data[$key]['cell'][] = $row['name'];
            $row_data[$key]['cell'][] = $row['gst_code'];

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

            $editLink = "  <a href='javascript:;' class='btn btn-warning editmain'   main-attr='" . $row['state_code'] . "' name-attr='" . $row['name'] . "' title='" . lang('edit') . "' ><i class='fa fa-edit'></i></a>";

            $statusLink = "  <a href='javascript:;' class='btn " . $statusClass . " status' status-attr='" . $row['status'] . "' main-attr='" . $row['state_code'] . "' name-attr='" . $row['name'] . "' title='" . lang('change_status') . "' >" . $statusHtml . "</a>";

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

    public function getCityList() {
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

        $result = $this->CommanModel->getCityList($limit, $perpage);
        $data['query'] = $this->db->last_query();
        $total_rows = $this->UtilityModel->exeFoundRows();
        $row_data = array();
        $checkedAsset = $this->session->userdata('checked_asset');
        foreach ($result as $key => $row) {


            $row_data[$key]['id'] = $key;
            $row_data[$key]['cell'][] = $row['country_code'];
            $row_data[$key]['cell'][] = $row['country_name'];
            $row_data[$key]['cell'][] = $row['zone_code'];
            $row_data[$key]['cell'][] = $row['zone_name'];
            $row_data[$key]['cell'][] = $row['state_code'];
            $row_data[$key]['cell'][] = $row['state_name'];
            $row_data[$key]['cell'][] = $row['name'];


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

            $editLink = "  <a href='javascript:;' class='btn btn-warning editmain'   main-attr='" . $row['city_id'] . "' name-attr='" . $row['name'] . "' title='" . lang('edit') . "' ><i class='fa fa-edit'></i></a>";

            $statusLink = "  <a href='javascript:;' class='btn " . $statusClass . " status' status-attr='" . $row['status'] . "' main-attr='" . $row['city_id'] . "' name-attr='" . $row['name'] . "' title='" . lang('change_status') . "' >" . $statusHtml . "</a>";

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

    public function getPincodeList() {
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

        $result = $this->CommanModel->getPincodeList($limit, $perpage);
        $data['query'] = $this->db->last_query();
        $total_rows = $this->UtilityModel->exeFoundRows();
        $row_data = array();
        $checkedAsset = $this->session->userdata('checked_asset');
        foreach ($result as $key => $row) {


            $row_data[$key]['id'] = $key;
            $row_data[$key]['cell'][] = $row['country_code'];
            $row_data[$key]['cell'][] = $row['country_name'];
            $row_data[$key]['cell'][] = $row['zone_code'];
            $row_data[$key]['cell'][] = $row['zone_name'];
            $row_data[$key]['cell'][] = $row['state_code'];
            $row_data[$key]['cell'][] = $row['state_name'];
            $row_data[$key]['cell'][] = $row['city_name'];
            $row_data[$key]['cell'][] = $row['pincode'];

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

            $editLink = "  <a href='javascript:;' class='btn btn-warning editmain'   main-attr='" . $row['pincode'] . "' name-attr='" . $row['pincode'] . "' title='" . lang('edit') . "' ><i class='fa fa-edit'></i></a>";

            $statusLink = "  <a href='javascript:;' class='btn " . $statusClass . " status' status-attr='" . $row['status'] . "' main-attr='" . $row['pincode'] . "' name-attr='" . $row['pincode'] . "' title='" . lang('change_status') . "' >" . $statusHtml . "</a>";

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
        if ($type == 'COUNTRY') {
            $update['status'] = ($this->input->post('status')) ? 0 : 1;
            $update['update_date_time'] = $this->generals_func->today('DT');
            $condition = array('country_code' => $this->input->post('id'));
            $table = $this->db_ext . 'country';
            $data['status'] = $this->UtilityModel->updateThisData($table, $condition, $update);
        } else if ($type == 'PARTNER') {
            $update['status'] = ($this->input->post('status')) ? 0 : 1;
            $update['update_date_time'] = $this->generals_func->today('DT');
            $condition = array('partner_code' => $this->input->post('id'));
            $table = $this->db_ext . 'partner';
            $data['status'] = $this->UtilityModel->updateThisData($table, $condition, $update);
        } else if ($type == 'BOOKTYPE') {
            $update['status'] = ($this->input->post('status')) ? 0 : 1;
            $update['update_date_time'] = $this->generals_func->today('DT');
            $condition = array('book_type_id' => $this->input->post('id'));
            $table = $this->db_ext . 'book_type';
            $data['status'] = $this->UtilityModel->updateThisData($table, $condition, $update);
        } else if ($type == 'GST') {
            $update['status'] = ($this->input->post('status')) ? 0 : 1;
            $update['update_date_time'] = $this->generals_func->today('DT');
            $condition = array('gst_id' => $this->input->post('id'));
            $table = $this->db_ext . 'gst';
            $data['status'] = $this->UtilityModel->updateThisData($table, $condition, $update);
        } else if ($type == 'SERVICE') {
            $update['status'] = ($this->input->post('status')) ? 0 : 1;
            $update['update_date_time'] = $this->generals_func->today('DT');
            $condition = array('service_id' => $this->input->post('id'));
            $table = $this->db_ext . 'partner_service';
            $data['status'] = $this->UtilityModel->updateThisData($table, $condition, $update);
        } else if ($type == 'ZONE') {
            $update['status'] = ($this->input->post('status')) ? 0 : 1;
            $update['update_date_time'] = $this->generals_func->today('DT');
            $condition = array('zone_code' => $this->input->post('id'));
            $table = $this->db_ext . 'zone';
            $data['status'] = $this->UtilityModel->updateThisData($table, $condition, $update);
        } else if ($type == 'STATE') {
            $update['status'] = ($this->input->post('status')) ? 0 : 1;
            $update['update_date_time'] = $this->generals_func->today('DT');
            $condition = array('state_code' => $this->input->post('id'));
            $table = $this->db_ext . 'state';
            $data['status'] = $this->UtilityModel->updateThisData($table, $condition, $update);
        } else if ($type == 'CITY') {
            $update['status'] = ($this->input->post('status')) ? 0 : 1;
            $update['update_date_time'] = $this->generals_func->today('DT');
            $condition = array('city_id' => $this->input->post('id'));
            $table = $this->db_ext . 'city';
            $data['status'] = $this->UtilityModel->updateThisData($table, $condition, $update);
        } else if ($type == 'PINCODE') {
            $update['status'] = ($this->input->post('status')) ? 0 : 1;
            $update['update_date_time'] = $this->generals_func->today('DT');
            $condition = array('pincode' => $this->input->post('id'));
            $table = $this->db_ext . 'pincode';
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
        } if ($view == 'GST') {
            $data['status'] = true;

            $main['edit'] = array();

            if ($this->input->post('edit') == '0' || $this->input->post('edit') == '' || $this->input->post('edit') == 'undefined') {
                $data['title'] = "Add GST";
            } else {
                $main['edit'] = $this->UtilityModel->getRequiredData('S', $this->db_ext . 'gst', '*', array('gst_id' => $this->input->post('edit')));
                $data['title'] = "Edit GST - " . $main['edit']['name'];
            }
            $data['html'] = $this->load->view('master/gst/manage', $main, true);
        } if ($view == 'PARTNER') {
            $data['status'] = true;

            $main['edit'] = array();

            if ($this->input->post('edit') == '0' || $this->input->post('edit') == '' || $this->input->post('edit') == 'undefined') {
                $data['title'] = "Add Partner";
            } else {
                $main['edit'] = $this->UtilityModel->getRequiredData('S', $this->db_ext . 'partner', '*', array('partner_code' => $this->input->post('edit')));
                $data['title'] = "Edit Partner - " . $main['edit']['name'];
            }
            $data['html'] = $this->load->view('master/partner/manage', $main, true);
        } else if ($view == 'SERVICE') {
            $data['status'] = true;

            $main['edit'] = array();

            if ($this->input->post('edit') == '0' || $this->input->post('edit') == '' || $this->input->post('edit') == 'undefined') {
                $data['title'] = "Add Service";
            } else {

                $main['edit'] = $this->UtilityModel->getRequiredData('S', $this->db_ext . 'partner_service', '*', array('service_id' => $this->input->post('edit')));
                $data['title'] = "Edit Service - " . $main['edit']['name'];
            }
            $partner_arr = $this->UtilityModel->getRequiredData('M', $this->db_ext . 'partner', 'partner_code,name');
            $main['partner_option'] = $this->generals_func->select_options($partner_arr, 'partner_code', 'name');

            $data['html'] = $this->load->view('master/service/manage', $main, true);
        } else if ($view == 'BOOKTYPE') {
            $data['status'] = true;

            $main['edit'] = array();

            if ($this->input->post('edit') == '0' || $this->input->post('edit') == '' || $this->input->post('edit') == 'undefined') {
                $data['title'] = "Add Book Type";
            } else {

                $main['edit'] = $this->UtilityModel->getRequiredData('S', $this->db_ext . 'book_type', '*', array('book_type_id' => $this->input->post('edit')));
                $data['title'] = "Edit Book Type - " . $main['edit']['name'];
            }
            $partner_arr = $this->UtilityModel->getRequiredData('M', $this->db_ext . 'partner', 'partner_code,name');
            $main['partner_option'] = $this->generals_func->select_options($partner_arr, 'partner_code', 'name');

            $data['html'] = $this->load->view('master/booktype/manage', $main, true);
        } else if ($view == 'ZONE') {
            $data['status'] = true;

            $main['edit'] = array();

            if ($this->input->post('edit') == '0' || $this->input->post('edit') == '' || $this->input->post('edit') == 'undefined') {
                $data['title'] = "Add Zone";
            } else {

                $main['edit'] = $this->UtilityModel->getRequiredData('S', $this->db_ext . 'zone', '*', array('zone_code' => $this->input->post('edit')));
                $data['title'] = "Edit Zone - " . $main['edit']['name'];
            }
            $country_arr = $this->UtilityModel->getRequiredData('M', $this->db_ext . 'country', 'country_code,name');
            $main['country_option'] = $this->generals_func->select_options($country_arr, 'country_code', 'name');
            $main['zone_option'] = array();
            $data['html'] = $this->load->view('master/zone/manage', $main, true);
        } else if ($view == 'STATE') {
            $data['status'] = true;

            $main['edit'] = array();
            $main['zone_option'] = array();
            if ($this->input->post('edit') == '0' || $this->input->post('edit') == '' || $this->input->post('edit') == 'undefined') {
                $data['title'] = "Add State";
            } else {

                $main['edit'] = $this->UtilityModel->getRequiredData('S', $this->db_ext . 'state', '*', array('state_code' => $this->input->post('edit')));
                $data['title'] = "Edit State - " . $main['edit']['name'];
                $countryCode = $this->UtilityModel->getSingColumData($this->db_ext . 'zone', 'country_code', array('zone_code' => $main['edit']['zone_code']));
                $main['edit']['country_code'] = $countryCode;
                $zone_arr = $this->UtilityModel->getRequiredData('M', $this->db_ext . 'zone', 'zone_code,name', array('country_code' => $countryCode));
                $main['zone_option'] = $this->generals_func->select_options($zone_arr, 'zone_code', 'name');
            }
            $country_arr = $this->UtilityModel->getRequiredData('M', $this->db_ext . 'country', 'country_code,name');
            $main['country_option'] = $this->generals_func->select_options($country_arr, 'country_code', 'name');

            $data['html'] = $this->load->view('master/state/manage', $main, true);
        } else if ($view == 'CITY') {
            $data['status'] = true;

            $main['edit'] = array();
            $country_arr = $this->UtilityModel->getRequiredData('M', $this->db_ext . 'country', 'country_code,name');
            $main['country_option'] = $this->generals_func->select_options($country_arr, 'country_code', 'name');

            $main['state_option'] = array();
            $main['zone_option'] = array();
            if ($this->input->post('edit') == '0' || $this->input->post('edit') == '' || $this->input->post('edit') == 'undefined') {
                $data['title'] = "Add City";
            } else {

                $main['edit'] = $this->UtilityModel->getRequiredData('S', $this->db_ext . 'city', '*', array('city_id' => $this->input->post('edit')));
                $data['title'] = "Edit City - " . $main['edit']['name'];

                $state_code = $main['edit']['state_code'];
                $zone_code = $this->UtilityModel->getSingColumData($this->db_ext . 'state', 'zone_code', array('state_code' => $state_code));
                $country_code = $this->UtilityModel->getSingColumData($this->db_ext . 'zone', 'country_code', array('zone_code' => $zone_code));

                $zone_arr = $this->UtilityModel->getRequiredData('M', $this->db_ext . 'zone', 'zone_code,name', array('country_code' => $country_code));
                $main['zone_option'] = $this->generals_func->select_options($zone_arr, 'zone_code', 'name');


                $state_arr = $this->UtilityModel->getRequiredData('M', $this->db_ext . 'state', 'state_code,name', array('zone_code' => $zone_code));
                $main['state_option'] = $this->generals_func->select_options($state_arr, 'state_code', 'name');

                $main['edit']['country_code'] = $country_code;
                $main['edit']['zone_code'] = $zone_code;
            }

            $data['html'] = $this->load->view('master/city/manage', $main, true);
        } else if ($view == 'PINCODE') {
            $data['status'] = true;

            $main['edit'] = array();
            $country_arr = $this->UtilityModel->getRequiredData('M', $this->db_ext . 'country', 'country_code,name');
            $main['country_option'] = $this->generals_func->select_options($country_arr, 'country_code', 'name');
            $main['state_option'] = array();
            $main['city_option'] = array();
            $main['zone_option'] = array();
            if ($this->input->post('edit') == '0' || $this->input->post('edit') == '' || $this->input->post('edit') == 'undefined') {
                $data['title'] = "Add Pincode";
            } else {

                $main['edit'] = $this->UtilityModel->getRequiredData('S', $this->db_ext . 'pincode', '*', array('pincode' => $this->input->post('edit')));
                $data['title'] = "Edit Pincode " . $main['edit']['pincode'];
                $state_code = $this->UtilityModel->getSingColumData($this->db_ext . 'city', 'state_code', array('city_id' => $main['edit']['city_id']));

                $zone_code = $this->UtilityModel->getSingColumData($this->db_ext . 'state', 'zone_code', array('state_code' => $state_code));
                $country_code = $this->UtilityModel->getSingColumData($this->db_ext . 'zone', 'country_code', array('zone_code' => $zone_code));

                $zone_arr = $this->UtilityModel->getRequiredData('M', $this->db_ext . 'zone', 'zone_code,name', array('country_code' => $country_code));
                $main['zone_option'] = $this->generals_func->select_options($zone_arr, 'zone_code', 'name');


                $state_arr = $this->UtilityModel->getRequiredData('M', $this->db_ext . 'state', 'state_code,name', array('zone_code' => $zone_code));
                $main['state_option'] = $this->generals_func->select_options($state_arr, 'state_code', 'name');

                $city_arr = $this->UtilityModel->getRequiredData('M', $this->db_ext . 'city', 'city_id,name', array('state_code' => $state_code));
                $main['city_option'] = $this->generals_func->select_options($city_arr, 'city_id', 'name');

                $main['edit']['country_code'] = $country_code;
                $main['edit']['state_code'] = $state_code;
                $main['edit']['zone_code'] = $zone_code;
            }

            $data['html'] = $this->load->view('master/pincode/manage', $main, true);
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
            $post['phone_code'] = $this->input->post('phone_code');
            $post['type'] = $this->input->post('type');
            $moC['name'] = $this->input->post('name');
            $moG['phone_code'] = $this->input->post('phone_code');
            $moCA = array();
            if ($this->input->post('edit_id') == "") {
                $moCA['country_code'] = $this->input->post('country_code');
            }
            if ($this->input->post('edit_id') != "") {
                $moC['country_code !='] = $this->input->post('edit_id');
                $moG['country_code !='] = $this->input->post('edit_id');
            }
            $checkName = $this->UtilityModel->getRequiredData('S', $this->db_ext . 'country', '*', $moC);
            $checkPhone = $this->UtilityModel->getRequiredData('S', $this->db_ext . 'country', '*', $moG);
            if (!empty($moCA)) {
                $checkCode = $this->UtilityModel->getRequiredData('S', $this->db_ext . 'country', '*', $moCA);
            } else {
                $checkCode = array();
            }
            if (empty($checkName) && empty($checkCode) && empty($checkPhone)) {

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
                if (!empty($checkPhone)) {
                    $data['message'] = "Phone code already exists";
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

    public function saveBookType() {

        $data['status'] = false;
        $this->form_validation->set_rules('name', lang('name'), 'required');
        $this->form_validation->set_rules('partner_code', lang('partner_code'), 'required');

        if ($this->form_validation->run() == true) {
            $post['name'] = $this->input->post('name');
            $moC['name'] = $this->input->post('name');
            $moCA = array();

            if ($this->input->post('edit_id') != "") {
                $moC['book_type_id !='] = $this->input->post('edit_id');
            }
            $checkName = $this->UtilityModel->getRequiredData('S', $this->db_ext . 'book_type', '*', $moC);
            if (!empty($moCA)) {
                $checkCode = $this->UtilityModel->getRequiredData('S', $this->db_ext . 'book_type', '*', $moCA);
            } else {
                $checkCode = array();
            }
            if (empty($checkName) && empty($checkCode)) {

                $table = $this->db_ext . "book_type";
                $post['partner_code'] = $this->input->post('partner_code');
                if ($this->input->post('edit_id') != "") {
                    $post['update_date_time'] = date('Y-m-d H:i:s');
                    $condition = array('book_type_id' => $this->input->post('edit_id'));
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
                    $this->UtilityModel->insertThisLog("Book Type", $message, $updatedData);
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
            $moG['gst_code'] = $this->input->post('gst_code');
            $moCA = array();
            if ($this->input->post('edit_id') == "") {
                $moCA['state_code'] = $this->input->post('state_code');
            }
            if ($this->input->post('edit_id') != "") {
                $moC['state_code !='] = $this->input->post('edit_id');
                $moG['state_code !='] = $this->input->post('edit_id');
            }
            $checkName = $this->UtilityModel->getRequiredData('S', $this->db_ext . 'state', '*', $moC);
            $checkGstCode = $this->UtilityModel->getRequiredData('S', $this->db_ext . 'state', '*', $moG);
            if (!empty($moCA)) {
                $checkCode = $this->UtilityModel->getRequiredData('S', $this->db_ext . 'state', '*', $moCA);
            } else {
                $checkCode = array();
            }
            if (empty($checkName) && empty($checkCode) && empty($checkGstCode)) {

                $table = $this->db_ext . "state";
                $post['country_code'] = $this->input->post('country_code');
                $post['gst_code'] = $this->input->post('gst_code');
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
                if (!empty($checkGstCode)) {
                    $data['message'] = "GST code already exists";
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
    function bulk_pincode(){
        $this->data['message'] = $this->session->flashdata('message');
        $this->data['page_title'] = 'Import Bulk Pincode';

        $this->data['head_link'] = array(
            array('link' => base_url('master/pincode'), 'name' => ' View Pincodes', 'id' => '','class' => 'btn btn-info')
        );
        $this->data['breadcomb_title'] = 'Master <i class="fa fa-angle-double-right" aria-hidden="true"></i>  Pincode <i class="fa fa-angle-double-right" aria-hidden="true"></i> <span class="active-breadcomb">Import Bulk</span>';
        
        $this->data['main_title'] = "Import Bulk Pincode";
        $this->data['status_url'] = base_url('master/updateStatus/PINCODE');
        $this->data['submit_url'] = base_url('master/bulkImportSave');

        $this->load->template('master/pincode/bulk_add', $this->data);
    }

    function bulkImportSave(){
        $this->load->library('excel');
        $pinexist_count = 0;
        $data = array();
        $pin_data = array();
        if(isset($_FILES["bulkPincode"]["name"]))
		 {
		 $path = $_FILES["bulkPincode"]["tmp_name"];
		 $object = PHPExcel_IOFactory::load($path);
		 foreach($object->getWorksheetIterator() as $worksheet)
			{
                $highestRow = $worksheet->getHighestRow();
                $data['total'] = $highestRow;
		 	    $highestColumn = $worksheet->getHighestColumn();
		 	for($row=2; $row<=$highestRow; $row++)
		 	{
             $country_code = $worksheet->getCellByColumnAndRow(0, $row)->getValue();
             $country_name = $worksheet->getCellByColumnAndRow(1, $row)->getValue();
             $zone_code = $worksheet->getCellByColumnAndRow(2, $row)->getValue();
             $zone_name = $worksheet->getCellByColumnAndRow(3, $row)->getValue();
             $state_code = $worksheet->getCellByColumnAndRow(4, $row)->getValue();
             $state_name = $worksheet->getCellByColumnAndRow(5, $row)->getValue();
             $city_name = $worksheet->getCellByColumnAndRow(6, $row)->getValue();
             $pin_code = $worksheet->getCellByColumnAndRow(7, $row)->getValue();
             
             $pin_check = $this->UtilityModel->val_check('haashtag_pincode','pincode',$pin_code);
             $count = count($pin_check); 
             
             if($count == 0){
                $country_check = $this->UtilityModel->val_check('haashtag_country','country_code',$country_code,'name',$country_name);
                if(count($country_check) == 0){
                    $country_data = array(
                        'country_code' => $country_code,
                        'name' => $country_name,
                        'code' => 'TS',
                        'status' => '1',
                        'entry_date_time'=> date('Y-m-d H:i:s'),
                    );
                    $this->UtilityModel->insertThisData('haashtag_country',$country_data);
                }
                $zone_check = $this->UtilityModel->val_check('haashtag_zone','zone_code',$zone_code,'name',$zone_name,'country_code',$country_code);
                if(count($zone_check) == 0){
                    $zone_data = array(
                        'country_code' => $country_code,
                        'zone_code' => $zone_code,
                        'name' => $zone_name,
                        'status' => '1',
                        'entry_date_time'=> date('Y-m-d H:i:s'),
                    );
                    $this->UtilityModel->insertThisData('haashtag_zone',$zone_data);
                }
                $state_check = $this->UtilityModel->val_check('haashtag_state','state_code',$state_code,'name',$state_name,'zone_code',$zone_code);
                if(count($state_check)>0){
                    $pin_data['state_code'] = $state_code;
                }else{
                    $state_data = array(
                        'country_code' => $country_code,
                        'zone_code' => $zone_code,
                        'state_code' => $state_code,
                        'name' => $state_name,
                        'status' => '1',
                        'entry_date_time'=> date('Y-m-d H:i:s'),
                    );
                    $pin_data['state_code'] = $state_code;
                    $this->UtilityModel->insertThisData('haashtag_state',$state_data);
                }
                $city_check = $this->UtilityModel->val_check('haashtag_city','state_code',$state_code,'name',$city_name);
                if(count($city_check) > 0){
                    foreach($city_check as $row){
                        $pin_data['city_id'] = $row['city_id'];
                    }
                }else{
                    $state_data = array(
                        'state_code' => $state_code,
                        'name' => $city_name,
                        'status' => '1',
                        'entry_date_time'=> date('Y-m-d H:i:s'),
                    );
                    $city_id_inserted = $this->UtilityModel->insertThisData('haashtag_city',$state_data);
                    $pin_data['city_id'] = $city_id_inserted;
                }
                $pin_data['pincode'] = $pin_code;
                $pin_data['status'] = '1';
                $pin_data['is_deliverable'] = '1';
                $pin_data['entry_date_time'] = date('Y-m-d H:i:s');
                $this->UtilityModel->insertThisData('haashtag_pincode',$pin_data);
             }else{
                $pinexist_count += 1;
                $data['pin_exist'] = $pinexist_count;
             }
             echo json_encode($data);
		 	}
		 }
		 }
    }


}

?>