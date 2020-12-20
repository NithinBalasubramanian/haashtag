<?php

defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * Admin Authentication Class
 */
class Users extends CI_Controller {
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
        $this->load->model('UserModel');
        $this->data['head_link'] = array();
    }

    public function index() {
        if (!$this->checkaccess->check(array('view_user'))) {
            redirect(base_url("noAccess"));
        }
        $this->data['edit'] = $_REQUEST;
        $this->data['message'] = $this->session->flashdata('message');
        if ($this->checkaccess->check(array('view_user'))) {
            $linkArr[] = array('link' => base_url('users/manage'), 'icon' => '<i class="fa fa-plus"></i>', 'name' => lang('add_user'), 'id' => '', 'class' => 'btn btn-warning');
        }
        if ($this->checkaccess->check(array('add_user'))) {
            $linkArr[] = array('link' => base_url('users'), 'icon' => '<i class="fa fa-eye"></i>', 'name' => lang('view_user'), 'id' => '', 'class' => 'btn btn-primary');
        }
        if ($this->checkaccess->check(array('export_user'))) {
            $linkArr[] = array('link' => base_url('users/export'), 'icon' => '<i class="fa fa-file-excel"></i>', 'name' => lang('export_user'), 'id' => '', 'class' => 'btn btn-info', 'blank' => true);
        }
        $this->data['head_link'] = $linkArr;
        $this->data['google_api_key'] = $this->UtilityModel->getSingColumData($this->db_ext . 'vendor_config', 'google_location_api', array('vendor_id' => $this->session->userdata('vendor_id')));

        $this->load->template('users/view', $this->data);
    }

    public function manage($user_id = '') {
        if (!$this->checkaccess->check(array('add_user'))) {
            redirect(base_url("noAccess"));
        }
        $this->data['message'] = $this->session->flashdata('message');
        if ($this->checkaccess->check(array('view_user'))) {
            $linkArr[] = array('link' => base_url('users/manage'), 'icon' => '<i class="fa fa-plus"></i>', 'name' => lang('add_user'), 'id' => '', 'class' => 'btn btn-warning');
        }
        if ($this->checkaccess->check(array('add_user'))) {
            $linkArr[] = array('link' => base_url('users'), 'icon' => '<i class="fa fa-eye"></i>', 'name' => lang('view_user'), 'id' => '', 'class' => 'btn btn-primary');
        }
        if ($this->checkaccess->check(array('export_user'))) {
            $linkArr[] = array('link' => base_url('users/export'), 'icon' => '<i class="fa fa-file-excel"></i>', 'name' => lang('export_user'), 'id' => '', 'class' => 'btn btn-info', 'blank' => true);
        }
        $this->data['head_link'] = $linkArr;

        $this->data['edit'] = array();
        if ($user_id != "") {
            $this->data['edit'] = $this->UtilityModel->getRequiredData('S', $this->db_ext . 'user', '*', array('vendor_id' => $this->session->userdata('vendor_id'), 'user_id' => $user_id));
            if (empty($this->data['edit'])) {
                $this->session->set_flashdata('message', $this->generals_func->show_alert('err', lang('invalid_user')));
                redirect(base_url("users"));
            }
        }

        $country_arr = $this->UtilityModel->getRequiredData('M', $this->db_ext . 'country', 'country_code,name');
        $this->data['country_option'] = $this->generals_func->select_options($country_arr, 'country_code', 'name');

        $role_arr = $this->UtilityModel->getRequiredData('M', $this->db_ext . 'user_group', 'group_id,name', array('is_deleted' => '0'));
        $this->data['role_option'] = $this->generals_func->select_options($role_arr, 'group_id', 'name');

        $this->data['custom_fiels'] = $this->UtilityModel->getRequiredData('M', $this->db_ext . 'custom_fields', '*', array('is_deleted' => '0', 'vendor_id' => $this->session->userdata('vendor_id'), 'is_deleted' => '0', 'is_child' => '0', 'section' => 'U'));
        foreach ($this->data['custom_fiels'] as $key => $customs) {
            $this->data['custom_fiels'][$key]['options'] = array();
            $inputType = $this->UtilityModel->getRequiredData('S', $this->db_ext . 'input_type', 'is_multi', array('type_code' => $customs['input_type']));
            $this->data['custom_fiels'][$key]['is_multi'] = $inputType['is_multi'];
            if ($inputType['is_multi'] == '1') {
                $this->data['custom_fiels'][$key]['options'] = $this->UtilityModel->getRequiredData('M', $this->db_ext . 'custom_field_option', 'option_id,option_value', array('field_id' => $customs['field_id']));
            }
        }
        $role_arr = $this->UtilityModel->getRequiredData('M', $this->db_ext . 'user_group', 'group_id,name', array('is_deleted' => '0'));
        $this->data['role_option'] = $this->generals_func->select_options($role_arr, 'group_id', 'name');

        $departmentList = $this->session->userdata('department');
        $companyList = $this->session->userdata('company');
        if (empty($departmentList)) {
            $department_arr = array();
        } else {
            $department_arr = $this->UtilityModel->getRequiredData('M', $this->db_ext . 'department', 'department_id,name', array('is_deleted' => '0'), 'name', '', '', '', 'department_id', $departmentList);
        }
        $this->data['department_option'] = $this->generals_func->select_options($department_arr, 'department_id', 'name', 'M');


        if (empty($companyList)) {
            $company_arr = array();
        } else {
            $company_arr = $this->UtilityModel->getRequiredData('M', $this->db_ext . 'company', 'company_id,name', array('is_deleted' => '0'), 'name', '', '', '', 'company_id', $companyList);
        }


        $this->data['company_option'] = $this->generals_func->select_options($company_arr, 'company_id', 'name', 'M');

        $this->data['google_api_key'] = $this->UtilityModel->getSingColumData($this->db_ext . 'vendor_config', 'google_location_api', array('vendor_id' => $this->session->userdata('vendor_id')));
        $this->data['is_email'] = $this->UtilityModel->getSingColumData($this->db_ext . 'communication_config', 'status', array('vendor_id' => $this->session->userdata('vendor_id'), 'type' => 'M'));

        $this->data['is_sms'] = $this->UtilityModel->getSingColumData($this->db_ext . 'communication_config', 'status', array('vendor_id' => $this->session->userdata('vendor_id'), 'type' => 'S'));

        $this->form_validation->set_rules('name', lang('name'), 'required');
        $this->form_validation->set_rules('user_name', lang('user_name'), 'required');
        if ($this->input->post('edit_id') == "") {
            $this->form_validation->set_rules('password', lang('password'), 'required');
        }
        $this->form_validation->set_rules('job_title', lang('job_title'), 'required');
        $this->form_validation->set_rules('employee_code', lang('employee_code'), 'required');
        $this->form_validation->set_rules('attend_tickets', lang('attend_tickets'), 'required');

        $this->form_validation->set_rules('mobile_number', lang('mobile_number'), 'required');
        $this->form_validation->set_rules('email_id', lang('email_id'), 'required');
        if ($this->form_validation->run() == true) {

            $editId = $this->input->post('edit_id');
            if ($editId != "") {
                $condition['user_id !='] = $this->input->post('edit_id');
                $mcondition['user_id !='] = $this->input->post('edit_id');
            }
            $condition['user_name'] = $this->input->post('user_name');
            $mcondition['emp_code'] = $this->input->post('employee_code');
            $checkUsername = $this->UtilityModel->getRequiredData('S', $this->db_ext . 'user', 'user_id', $condition);
            if (!empty($checkUsername)) {
                $this->session->set_flashdata('message', $this->generals_func->show_alert('err', lang('username_already_exists')));
                redirect(base_url('users/manage/' . $this->input->post('edit_id')));
            }
            $checkEmployeeCode = $this->UtilityModel->getRequiredData('S', $this->db_ext . 'user', 'user_id', $mcondition);
            if (!empty($checkEmployeeCode)) {
                $this->session->set_flashdata('message', $this->generals_func->show_alert('err', lang('employee_code_already_exists')));
                redirect(base_url('users/manage/' . $this->input->post('edit_id')));
            }
            $post['emp_code'] = $this->input->post('employee_code');
            $post['user_name'] = $this->input->post('user_name');
            $post['attend_tickets'] = $this->input->post('attend_tickets');
            $post['vendor_id'] = $this->session->userdata('vendor_id');
            $post['name'] = $this->input->post('name');
            $post['job_title'] = $this->input->post('job_title');
            $post['mobile_number'] = $this->input->post('mobile_number');
            $post['email_id'] = $this->input->post('email_id');
            $post['role'] = $this->input->post('role');
            if ($this->input->post('allow_login') == '1') {
                $post['web_access'] = '1';
            } else {
                $post['web_access'] = '0';
            }
            if ($this->input->post('password') != "") {
                $post['password'] = $this->generals_func->salt_passsword($this->input->post('password'));
            }

            $asset_user = "0";
            if ($this->input->post('asset_user') == '1') {
                $asset_user = "1";
            }
            $post['asset_user'] = $asset_user;
            $profile_pic = $this->input->post('old_profile_pic');
            if (isset($_FILES['profile_pic']) && $_FILES['profile_pic']['name'] != '') {
                $this->load->library('upload');
                $config['upload_path'] = dirname($_SERVER["SCRIPT_FILENAME"]) . '/assets/uploads/users/profile_pic/';
                $config['allowed_types'] = '*';
                $config['max_size'] = '4096';
                $config['overwrite'] = true;
                $config['file_name'] = time() . rand(1000, 9999);
                $this->upload->initialize($config);
                if ($this->upload->do_upload('profile_pic')) {
                    $data = array('upload_data' => $this->upload->data());
                    $profile_pic = $data['upload_data']['file_name'];
                } else {
                    $this->data['message'] = $this->generals_func->show_alert('err', 'Error!' . $this->upload->display_errors());
                    $this->session->set_flashdata('message', $this->generals_func->show_alert('err', $this->data['message']));
                    redirect(base_url('users/manage'));
                }
            }

            $post['profile_pic'] = $profile_pic;
            $post['country_code'] = $this->input->post('country_code');
            $post['address'] = $this->input->post('address');
            $post['city'] = $this->input->post('city');
            $post['state'] = $this->input->post('state');
            $post['zip_code'] = $this->input->post('zip_code');
            $post['role'] = $this->input->post('role');
            $post['department_id'] = implode(',', $this->input->post('department'));
            $post['company_id'] = implode(',', $this->input->post('company'));
            $post['vendor_id'] = $this->session->userdata('vendor_id');
            $post['description'] = $this->input->post('description');
            if ($editId != "") {
                $post['update_date_time'] = date('Y-m-d H:i:s');
                $status = $this->UtilityModel->updateThisData($this->db_ext . 'user', array('vendor_id' => $this->session->userdata('vendor_id'), 'user_id' => $editId), $post);
                $insertId = $editId;
                $message = lang('updated_successfully');
            } else {
                $post['entry_date_time'] = date('Y-m-d H:i:s');
                $status = $this->UtilityModel->insertThisData($this->db_ext . 'user', $post);
                $insertId = $this->db->insert_id();
                $message = lang('inserted_successfully');
            }


            if ($status) {
                $message = lang('inserted_successfully');
                $updatedData = json_encode($post);
                $this->UtilityModel->insertThisLog('User', $message, $updatedData, $insertId);
                $this->UtilityModel->deleteThisData($this->db_ext . "user_custom_fields", array('vendor_id' => $this->session->userdata('vendor_id'), 'user_id' => $editId));
                $this->session->set_flashdata('message', $this->generals_func->show_alert('suc', lang('updated_successfully')));

                $custom_fiels = $this->input->post('custom_fiels');

                foreach ($custom_fiels as $key => $cus) {

                    $customs = $this->UtilityModel->getRequiredData('S', $this->db_ext . 'custom_fields', '*', array('is_deleted' => '0', 'vendor_id' => $this->session->userdata('vendor_id'), 'is_deleted' => '0', 'field_id' => $cus));

                    if (!empty($customs)) {
                        $customPost = array();
                        $customPost['field_id'] = $customs['field_id'];
                        $customPost['user_id'] = $insertId;
                        $customPost['vendor_id'] = $this->session->userdata('vendor_id');
                        $input = $this->input->post('custom_field_' . $customs['field_id']);
                        if ($customs['input_type'] != 'file') {
                            if ($input != "") {
                                if ($customs['input_type'] == 'date') {
                                    $customPost['value'] = date('Y-m-d', strtotime($input));
                                } else if ($customs['input_type'] == 'text' || $customs['input_type'] == 'color') {
                                    $customPost['value'] = $input;
                                } else {
                                    if (is_array($input)) {
                                        $customPost['value'] = implode(",", $input);
                                    } else {
                                        $customPost['value'] = $input;
                                    }
                                }
                            }
                        } else {
                            $image = $this->input->post('old_custom_field_' . $customs['field_id']);
                            $customPost = array();
                            if ($this->input->post('old_custom_field_' . $customs['field_id']) != "") {
                                $customPost['value'] = $this->input->post('old_custom_field_' . $customs['field_id']);
                                $customPost['file_name'] = $this->input->post('old_custom_field_image_name_' . $customs['field_id']);
                                $customPost['file_size'] = $this->input->post('old_custom_field_image_size_' . $customs['field_id']);
                            }
                            if (isset($_FILES['custom_field_' . $customs['field_id']]) && $_FILES['custom_field_' . $customs['field_id']]['name'] != '') {
                                $this->load->library('upload');
                                $config['upload_path'] = dirname($_SERVER["SCRIPT_FILENAME"]) . '/assets/uploads/users/custom/';
                                $config['allowed_types'] = '*';
                                $config['max_size'] = '4096';
                                $config['overwrite'] = true;
                                $config['file_name'] = time() . rand(1000, 9999);
                                $this->upload->initialize($config);
                                if ($this->upload->do_upload('custom_field_' . $customs['field_id'])) {
                                    $data = array('upload_data' => $this->upload->data());
                                    $image = $data['upload_data']['file_name'];
                                } else {
                                    $this->data['message'] = $this->generals_func->show_alert('err', 'Error!' . $this->upload->display_errors());
                                    $this->session->set_flashdata('message', $this->generals_func->show_alert('err', $this->data['message']));
                                    redirect(base_url('users/manage'));
                                }
                                $customPost['value'] = $image;
                                $customPost['field_id'] = $customs['field_id'];
                                $customPost['vendor_id'] = $this->session->userdata('vendor_id');
                                $customPost['user_id'] = $insertId;
                                $customPost['file_name'] = $_FILES['custom_field_' . $customs['field_id']]['name'];
                                $customPost['file_size'] = $_FILES['custom_field_' . $customs['field_id']]['size'];
                            }
                        }

                        if (!empty($customPost)) {

                            $this->UtilityModel->insertThisData($this->db_ext . 'user_custom_fields', $customPost);
                        }
                    }
                }

                if ($this->data['is_sms'] == '1') {


                    if ($this->input->post('send_sms') == '1') {
                        $smsMesssage = "Welcome to " . $this->session->userdata('vendor_name') . ', Your username is : ' . $this->input->post('user_name') . " and password is " . $this->input->post('password');

                        $this->load->library('alerts');
                        $this->alerts->send_sms($this->input->post('mobile_number'), $smsMesssage, $insertId);
                    }
                }
                if ($this->data['is_email'] == '1') {

                    if ($this->input->post('send_email') == '1') {
                        $this->load->library('alerts');
                        $main = $_POST;
                        $message = $this->load->view('email/new_employee', $main, true);
                        $this->alerts->send_mail(lang('welcome_to') . "  " . $this->session->userdata('vendor_name'), $message, $this->input->post('email_id'), $insertId, "", "");
                    }
                }
            } else {
                $this->session->set_flashdata('message', $this->generals_func->show_alert('err', lang('something_went_wrong')));
            }
            redirect(base_url('users'));
        }
        $this->load->template('users/manage', $this->data);
    }

    public function getData($type = "") {
        $data['status'] = false;
        $data['message'] = lang('invalid_type');

        if ($type == "checkEmpCode") {
            $id = $this->input->get_post('id');
            $condition['emp_code'] = $this->input->get_post('employee_code');
            if ($id != "") {
                $condition['user_id !='] = $id;
            }

            $table = $this->db_ext . "user";
            $select = "*";

            $user_dtls = $this->UtilityModel->getRequiredData('S', $table, $select, $condition);
            if (empty($user_dtls)) {
                $data['status'] = true;
                $data['message'] = '<div class="m-success">' . lang('emp_code_available') . '</div>';
            } else {
                $data['message'] = '<div class="m-danger">' . $this->input->get_post('employee_code') . ' :: ' . lang('emp_code_already_assigned') . '</div>';
            }
        } else if ($type == "checkUsername") {
            $id = $this->input->get_post('id');
            $condition['user_name'] = $this->input->get_post('user_name');
            if ($id != "") {
                $condition['user_id !='] = $id;
            }

            $table = $this->db_ext . "user";
            $select = "*";
            $user_dtls = $this->UtilityModel->getRequiredData('S', $table, $select, $condition);
            if (empty($user_dtls)) {
                $data['status'] = true;
                $data['message'] = '<div class="m-success">' . lang('user_name_available') . '</div>';
            } else {
                $data['message'] = '<div class="m-danger">' . $this->input->get_post('user_name') . ' :: ' . lang('user_name_already_assigned') . '</div>';
            }
        } else if ($type == 'getCustumFieldChildData') {

            $fieldId = $this->input->post('field_id');
            $data['html'] = "";
            $data['status'] = true;
            $data['message'] = "data found successfully";
            $childFields = $this->UtilityModel->getRequiredData('M', $this->db_ext . 'custom_fields', '*', "parent_id= '" . $this->input->post('field_id') . "' AND  FIND_IN_SET(parent_option_id,'" . $this->input->post('selectedVal') . "') ");
            if (!empty($childFields)) {
                $main['custom_fiels'] = $childFields;

                foreach ($main['custom_fiels'] as $key => $customs) {
                    $main['custom_fiels'][$key]['options'] = array();
                    $inputType = $this->UtilityModel->getRequiredData('S', $this->db_ext . 'input_type', 'is_multi', array('type_code' => $customs['input_type']));
                    $main['custom_fiels'][$key]['is_multi'] = $inputType['is_multi'];
                    if ($inputType['is_multi'] == '1') {
                        $main['custom_fiels'][$key]['options'] = $this->UtilityModel->getRequiredData('M', $this->db_ext . 'custom_field_option', 'option_id,option_value', array('field_id' => $customs['field_id']));
                    }
                }

                $data['html'] = $this->load->view('users/custom_child', $main, true);
            }
        }

        echo json_encode($data);
    }

    public function getDetailedReport() {
        $perpage = $this->input->get_post('page');
        if (!$perpage)
            $perpage = 10;
        $limit = $this->input->get_post('rows');
        if ($this->input->get('download') == true) {
            $limit = 300000;
        }

        $result = $this->UserModel->getReportDetail($limit, $perpage);
        $data['query'] = $this->db->last_query();
        $total_rows = $this->UtilityModel->exeFoundRows();
        $row_data = array();

        foreach ($result as $key => $row) {
            $row_data[$key]['id'] = $key;
            $row_data[$key]['cell'][] = ($row['user_name']);
            $row_data[$key]['cell'][] = ($row['name']);
            $row_data[$key]['cell'][] = ($row['email_id']);
            $row_data[$key]['cell'][] = ($row['mobile_number']);
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
            if ($this->checkaccess->check(array('add_user'))) {
                $editLink = "  <a href='" . base_url('users/manage/' . $row['user_id']) . "' class='btn btn-warning' title='edit' ><i class='fa fa-edit'></i></a>";
            }
            if ($this->checkaccess->check(array('password_user'))) {
                $passwordLink = "  <a href='javascript:;' class='btn btn-danger change-password' main-attr='" . $row['user_id'] . "' name-attr='" . $row['name'] . "' title='" . lang('change_password') . "' ><i class='fa fa-key'></i></a>";
            }

            if ($this->checkaccess->check(array('status_user'))) {
                $statusLink = "  <a href='javascript:;' class='btn " . $statusClass . " status' status-attr='" . $row['status'] . "' main-attr='" . $row['user_id'] . "' name-attr='" . $row['name'] . "' title='" . lang('change_password') . "' >" . $statusHtml . "</a>";
            }
            $row_data[$key]['cell'][] = "<div class='text-center' style='width:100%'>
        " . $editLink . $passwordLink . $statusLink . "
        
        </div>";
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

    public function getView($view = "") {
        $data['status'] = false;
        $data['message'] = 'Invalid View';
        if ($view == 'changePasword') {
            $data['status'] = true;

            $main['user_details'] = $this->UtilityModel->getRequiredData('S', $this->db_ext . 'user', '*', array('vendor_id' => $this->session->userdata('vendor_id'), 'user_id' => $this->input->post('edit')));
            $data['title'] = lang('change_password') . " :: " . $main['user_details']['name'];

            $data['html'] = $this->load->view('users/change_password', $main, true);
        }

        echo json_encode($data);
    }

    public function updatePassword() {
        $data['success'] = false;
        $data['message'] = lang('invalid_user');
        if (!$this->checkaccess->check(array('password_user'))) {
            $data['message'] = lang('no_access');
            echo json_encode($data);
            exit();
        }
        $condition = array('vendor_id' => $this->session->userdata('vendor_id'), 'user_id' => $this->input->post('user_id'));
        $user_details = $this->UtilityModel->getRequiredData('S', $this->db_ext . 'user', '*', $condition);
        if (!empty($user_details)) {
            $post['password'] = $this->generals_func->salt_passsword($this->input->post('password'));
            $status = $this->UtilityModel->updateThisData($this->db_ext . 'user', $condition, $post);
            if ($status) {
                $updatedData = "";
                $message = lang('updated_successfully');
                $this->UtilityModel->insertThisLog('User Password', $message, $updatedData, $user_details['user_id']);
                $data['message'] = lang('password_updated_successfuly');
                $data['success'] = true;
                if ($this->input->post('send_mail') == '1') {
                    $is_email = $this->UtilityModel->getSingColumData($this->db_ext . 'communication_config', 'status', array('vendor_id' => $this->session->userdata('vendor_id'), 'type' => 'M'));
                    // $is_sms =  $this->UtilityModel->getSingColumData($this->db_ext . 'communication_config', 'status', array('vendor_id'=>$this->session->userdata('vendor_id'),'type'=>'S'));
                    if ($is_email == '1') {
                        $main = $_POST;
                        $main['user'] = $user_details;
                        $message = $this->load->view('email/reset_password', $main, true);
                        file_put_contents("reset_password.html", $message);
                        $this->load->library('alerts');
                        $this->alerts->send_mail(lang('password_reset') . " :: " . $this->session->userdata('vendor_name'), $message, $user_details['email_id'], $user_details['user_id'], "", "");
                    }
                }
            } else {
                $data['message'] = lang('something_went_wrong');
            }
        }
        echo json_encode($data);
    }

    function updateStatus($type) {
        $data['status'] = false;
        $data['messgae'] = lang('invalid_request');
        if ($type == 'USR') {
            if (!$this->checkaccess->check(array('status_user'))) {
                $data['message'] = lang('no_access');
                echo json_encode($data);
                exit();
            }
            $update['status'] = ($this->input->post('status')) ? 0 : 1;
            $condition = array('user_id' => $this->input->post('id'), 'vendor_id' => $this->session->userdata('vendor_id'));
            $table = $this->db_ext . 'user';
            $data['status'] = $this->UtilityModel->updateThisData($table, $condition, $update);
            if ($update['status'] == '0') {
                $data['html'] = '<i class="fa fa-ban"></i>';
                $data['remove_class'] = "btn-success";
                $data['add_class'] = "btn-danger";
            } else {
                $data['html'] = '<i class="fa fa-check"></i>';
                $data['add_class'] = "btn-success";
                $data['remove_class'] = "btn-danger";
            }
        }

        if ($data['status']) {
            $data['message'] = lang('updated_successfully');
        }
        echo json_encode($data);
    }

    function export() {
        if (!$this->checkaccess->check(array('export_user'))) {
            echo lang('no_access');
            exit();
        }
        $this->load->library('excel');

        // create file name
        $fileName = 'data-' . time() . '.xlsx';
        // load excel library
        $this->load->library('excel');
        $result = $this->UserModel->getReportDetail("", "");

        $objPHPExcel = new PHPExcel();
        $objPHPExcel->setActiveSheetIndex(0);
        // set Header
        $objPHPExcel->getActiveSheet()->SetCellValue('A1', lang('name'));
        $objPHPExcel->getActiveSheet()->SetCellValue('B1', lang('username'));
        $objPHPExcel->getActiveSheet()->SetCellValue('C1', lang('names'));
        $objPHPExcel->getActiveSheet()->SetCellValue('D1', lang('email_id'));
        $objPHPExcel->getActiveSheet()->SetCellValue('E1', lang('mobile_number'));
        $objPHPExcel->getActiveSheet()->SetCellValue('F1', lang('status'));
        // set Row
        $rowCount = 2;
        foreach ($result as $element) {
            $objPHPExcel->getActiveSheet()->SetCellValue('A' . $rowCount, $element['name']);
            $objPHPExcel->getActiveSheet()->SetCellValue('B' . $rowCount, $element['user_name']);
            $objPHPExcel->getActiveSheet()->SetCellValue('C' . $rowCount, $element['email_id']);
            $objPHPExcel->getActiveSheet()->SetCellValue('D' . $rowCount, $element['mobile_number']);
            $objPHPExcel->getActiveSheet()->SetCellValue('E' . $rowCount, $element['status']);
            $rowCount++;
        }
        $objWriter = new PHPExcel_Writer_Excel2007($objPHPExcel);
        $uploadPath = "./assets/uploads/userexcel";
        $objWriter->save($uploadPath . $fileName);
        // download file
        header("Content-Type: application/vnd.ms-excel");
        redirect(base_url($uploadPath . $fileName));
    }

}
