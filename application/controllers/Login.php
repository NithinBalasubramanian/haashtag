<?php

defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * Admin Authentication Class
 */
class Login extends CI_Controller {
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
        $this->data['head_link'] = array();


        $this->data['languageList']  = $this->UtilityModel->getRequiredData('M',$this->db_ext."language",'*',array('status'=>'1'));
        if($this->session->userdata('current_lang') == ""){
           $defaultLang = $this->UtilityModel->getRequiredData('S',$this->db_ext."language",'*',array('status'=>'1','is_default'=>'1'));
           if(!empty($defaultLang)){
             $this->session->set_userdata(array(
                 'current_lang' => $defaultLang['code'],
                 'current_lang_name' => $defaultLang['display_name'],
                 'current_lang_icon' => $defaultLang['icon'],

             ));
           }
        }

        $this->lang->load($this->session->userdata('current_lang') . '_lang', $this->session->userdata('current_lang'));


    }

    function changeFy($year) {
        $this->session->set_userdata(array(
            'year_dashboard' => $year,
        ));

        redirect(base_url('login/dashboard'));
    }

    /*
     * Email Redirct
     */


    public function index() {

        $redirect = $this->input->get('redirect');
        if ($redirect) {
            $page = $this->input->get('page');
            if ($this->session->userdata('username') != '') {
                $role = $this->session->userdata('role');
                $mid = $this->input->get('mId');
                if ($role != '' && $page != '') {
                    $page = base64_decode($page);
                    $mId = base64_decode($mid);
                    $this->emailRedirect($page, $role, $mId);
                }
            }
        }

        $this->data['message'] = $this->session->flashdata('message');

        $this->load->view('login', $this->data);
    }

    /**
     * Authenticate the user credentials
     */
    public function authenticate() {
        $this->load->helper('cookie');
        $this->form_validation->set_rules('username', 'User name', 'required');
        $this->form_validation->set_rules('password', 'Password', 'required');
        $data['title'] = 'Authentication Failed';
        $data['message']  = lang('username_and_password_is_required');
        $data['success'] = false;
        if ($this->form_validation->run() == true) {

          $checkPass = $this->generals_func->salt_passsword($this->input->post('password'));
          $userData = $this->UtilityModel->getRequiredData('S', $this->db_ext . 'user', '*', "(user_name='".$this->input->post('username')."' OR email_id='".$this->input->post('userame')."') AND password = '".$checkPass."' ");
    //print_r($userData); exit();
            if (!empty($userData)) {

                if ($userData['web_access'] == '1') {

                    if ($userData['web_access'] == '0') {

                      $data['message']  = lang('you_dont_have_access_to_login_to_web_portal');
                      echo json_encode($data);
                      exit();
                    }
                    $mext = 0;
                    if($this->input->post('username') != 'superadmin') {
                        $roleDetail = $this->UtilityModel->getRequiredData('S', $this->db_ext . 'user_group', '*', array('group_id' => $userData['role']));
                    }else{
                        $roleDetail = $this->UtilityModel->getRequiredData('S', $this->db_ext . 'role', '*',array('role_code'=>$userData['role']));
                    }
                     if(empty($roleDetail)){
                      $data['message']  = lang('invalid_role');
                      $mext =1;
                    }
                     if($this->input->post('username') == 'superadmin') {

                    if ($roleDetail['role_staus'] == '0') {
                        $data['message'] = lang('login_has_blocked_for') . ' ' . $roleDetail['role_name'];
                        $mext = 1;
                    }
                    }else{
                         if ($roleDetail['status'] == '0') {
                             $data['message'] = lang('login_has_blocked_for') . ' ' . $roleDetail['role_name'];
                             $mext = 1;
                         }
                     }
                    if($mext == 1){
                      echo json_encode($data);
                      exit();
                    }

                    $mainPage = array();
                    if($this->input->post('username') != 'superadmin') {
                        $mainPage = explode(",",$roleDetail['access_pages']);
                    }
                    $access_key = $userData['user_id'].$this->generals_func->salt_passsword(time() . rand(1000000, 9999999));
                    $this->load->library('user_agent');
                    $loginHistory['user_id'] = $userData['user_id'];
                    $loginHistory['role'] = $userData['role'];
                    $loginHistory['logged_in_date_time'] = date('Y-m-d H:i:s');
                    $loginHistory['logged_in_mode'] = 'WEB';
                    $loginHistory['ip_address'] =  $this->input->ip_address();
                    $loginHistory['browser'] = $this->agent->browser();
                    $loginHistory['browserVersion'] = $this->agent->version();
                    $loginHistory['platform'] = $this->agent->platform();
                    $loginHistory['full_user_agent_string'] = $_SERVER['HTTP_USER_AGENT'];
                    $loginHistory['access_key'] = $access_key;

                    $this->UtilityModel->insertThisData($this->db_ext.'login_history',$loginHistory);

                    $mUpdate['access_key'] =  $access_key;

                    $status = $this->UtilityModel->updateThisData($this->db_ext."user", array('user_id'=>$userData['user_id']), $mUpdate);
                   /* $vendorDetails = $this->UtilityModel->getRequiredData('S', $this->db_ext . 'vendors', '*',array('vendor_id'=>$userData['vendor_id']));
                    if(empty($vendorDetails)){
                      echo 'Invalid Vendor'; exit();
                    }
                    $vendorConfig  = $this->UtilityModel->getRequiredData('S', $this->db_ext."vendor_config",'*', array('vendor_id'=>$userData['vendor_id']));
                   */ if($this->input->post('username') == 'superadmin') {
                        $roleName = $roleDetail['role_name'];
                        

                    }else{
                        $roleName =$roleDetail['name'];
                       
                    }

                   
                  


                    $this->session->set_userdata(array(
                        'username' => $userData['user_name'],
                        'user_id' => $userData['user_id'],
                        
                       
                        'password' => $userData['password'],
                        /*'vendor_name' => $vendorDetails['name'],
                        
                        'vendor_short_name' => $vendorDetails['short_name'],
                        'licence_number' => $vendorDetails['licence_number'],
                        'banner_colour' => $vendorDetails['banner_colour'],
                        'default_title ' => $vendorDetails['default_title'],
                        'config_updated_key' => $vendorDetails['config_updated_key'],
                        'default_language' => $vendorConfig['default_language'],
                        'date_time_format' => $vendorConfig['date_time_format'],
                        'time_format' => $vendorConfig['time_format'],
                        'timezone' => $vendorConfig['timezone'],
                        'currency_code' => $vendorDetails['currency_code'],
                        'allow_multiple_lannguage' => $vendorConfig['allow_multiple_lannguage'],
                        'language_list' => $vendorConfig['language_list'],
                        'single_user_login' => $vendorConfig['language_list'],
                        'records_per_page' => $vendorConfig['records_per_page'],
                        'timezone' => $vendorConfig['timezone'],
                        'date_format' => $vendorConfig['date_format'],*/
                        'role' => $userData['role'],
                        'accessPage' => $mainPage,
                        'role_name' => $roleName,
                        'user_name' => $userData['user_name'],
                        'name' => $userData['name'],
                        'vendor_id' => $userData['vendor_id'],
                        'email_id' => $userData['email_id'],
                        'mobile_number' => $userData['mobile_number'],
                      /*  'logo' => $vendorDetails['logo'],
                        'fav_icon' => $vendorDetails['fav_icon'], */
                        'access_key' => $access_key
                    ));
                    $data['success'] = true;
                    $data['title'] = 'Authentication Success';
                    $data['message']  = 'Logged In Successfully';
                    $data['redirect_url'] = base_url('dashboard');
                } else {
                    $this->session->set_flashdata('message', lang('account_blocked_by_admin'));
                }
            }else{
              $data['message'] = lang('invalid_username_or_password');
            }
        }
        echo json_encode($data);
    }

    function updateLanguage(){
      $langCode = $this->input->post('code');
      $data['success'] = false;
      $data['message'] = lang('invalid_language');
      if($langCode != ""){
        $defaultLang = $this->UtilityModel->getRequiredData('S',$this->db_ext."language",'*',array('status'=>'1','code'=>$langCode));
        if(!empty($defaultLang)){
          $data['success'] = true;
          $data['message'] = lang('language_updated_successfully');
          $this->session->set_userdata(array(
              'current_lang' => $defaultLang['code'],
              'default_lang' => $defaultLang['code'],
              'current_lang_name' => $defaultLang['display_name'],
              'current_lang_icon' => $defaultLang['icon'],
          ));
        }
      }
      echo json_encode($data);
    }

    public function error() {
        $this->load->view('error', $this->data);
    }




}

?>
