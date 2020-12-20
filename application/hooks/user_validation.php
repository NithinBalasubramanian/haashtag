<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class User_validation {

    var $CI;

    function __construct() {
        $this->CI = & get_instance();
        if (!isset($this->CI->session))  //Check if session lib is loaded or not
            $this->CI->load->library('session');  //If not loaded, then load it here

        $this->CI->config->load('user_rights');
        if($this->CI->session->userdata('current_lang') == ""){
           $defaultLang = $this->CI->UtilityModel->getRequiredData('S',$this->CI->db_ext."language",'*',array('status'=>'1','is_default'=>'1'));
           if(!empty($defaultLang)){
             $this->CI->session->set_userdata(array(
                 'current_lang' => $defaultLang['code'],
                 'current_lang_name' => $defaultLang['display_name'],
                 'current_lang_icon' => $defaultLang['icon'],

             ));
           }
        }

        $this->CI->lang->load($this->CI->session->userdata('current_lang') . '_lang', $this->CI->session->userdata('current_lang'));


//$this->CI->config->load('user_rights');

        $this->CI->load->helper('url');
        $this->CI->load->helper('auth');
    }

    public function session_check() {



        $allowed_url = array('', 'login/sendPasswordLink', 'login', 'login/nomap', 'login/index', 'login/newUser', 'login/forgotPassword/', 'login/privacy_policy/', 'privacy_policy', 'login/authenticate', 'login/error', 'login/forgotPassword', 'login/updatePassword', 'login/passwordResseted');
        if (in_array(uri_string(), $allowed_url) === false) {
            $url = explode('/', uri_string());

            if ($url[0] == 'api' || $url[0] == 'appApi' || $url[0] == 'AppApi' || $url[0] == 'AppClusterApi' || $url[0] == 'clusterApi' || $url[0] == 'cron' || $url[0] == 'clusterCron' || (isset($url[1]) && $url[1] == 'downloadApk') || (isset($url[1]) && $url[1] == 'updatePassword')) {
                return;
            }
            if ($this->CI->session->userdata('username') == false) {
                redirect(base_url());
            }

            $this->check_user_permission();
        }
    }

    public function check_user_permission() {

        if($this->CI->session->userdata('role') == "SUP"){
          return true;
        }else{
          $user_rights  = true;
          $url_array = explode('/', uri_string());

          if ($user_rights == false) {
              redirect(base_url() . 'login/error');
          }else{
            return true;
          }
        }

    }

}
