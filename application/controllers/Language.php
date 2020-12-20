<?php

defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * Admin Authentication Class
 */
class Language extends CI_Controller {
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
        $this->data['breadcomb'] = array();

        if($this->session->userdata('role') != 'SUP') {
          redirect(base_url());
        }

        


    }



    public function index() {
        $this->data['message'] = $this->session->flashdata('message');
        $tmpl = array('table_open' => '<table id="big_table" class="table table-hover dataTable">');
        $this->table->set_template($tmpl);
        $this->table->set_heading(lang('sl_no'), lang('language'), lang('name'), lang('set_default'), lang('action'));

        $this->data['breadcomb'] = array(array('link'=>base_url('setting/general'),'name'=>lang('settings'),'is_last'=>false),
                                        array('link'=>'javascript:;','name'=>lang('language'),'is_last'=>true));
        $this->data['page_title'] = 'Language';
        $this->data['head_link'] = array(array('link'=>'javascript:;','icon'=>'<i class="fa fa-plus"></i>','name'=>lang('add_language'),'id'=>'addLanguage','class'=>'btn btn-warning'),
                                        array('link'=>'javascript:;','icon'=>'<i class="fa fa-language"></i>','name'=>lang('add_translation'),'id'=>'addTranslation','class'=>'btn btn-primary'),
                                      array('link'=>base_url("language/syncLanguage"),'icon'=>'<i class="fa fa-sync"></i>','name'=>lang('sync_language'),'id'=>'','class'=>'btn btn-success'));
        $this->load->template('setting/language/main', $this->data);
    }

    function checkLanguageCodeExists(){
      $code = $this->input->post('code');
      $data['success'] = false;
      $data['message'] = 'Code is required';
      if($code != ""){
      $Check = $this->UtilityModel->getRequiredData('S', $this->db_ext . 'language', '*', array('code' =>  $code));
      if(empty($Check)){
        $data['success'] = true;
        $data['message'] = lang('code_is_available');
      }else{
        $data['message'] = lang('code_is_not_available');
      }
    }
    echo json_encode($data);
    }

    public function saveLanguage()
    {
       $this->form_validation->set_rules('name', 'Language name', 'required');
       $this->form_validation->set_rules('code', 'Language Code', 'required');
      if ($this->form_validation->run() == true) {
        $code = $this->input->post('code');
        $checkCode = $this->UtilityModel->getRequiredData('S', $this->db_ext . 'language', '*', array('code' =>  $code));

        $image = "";
        if (isset($_FILES['image']) && $_FILES['image']['name'] != '') {
                $this->load->library('upload');
                $config['upload_path'] = dirname($_SERVER["SCRIPT_FILENAME"]) . '/assets/uploads/language/';
                $config['allowed_types'] = '*';
                $config['max_size'] = '8096';
                $config['overwrite'] = true;
                $config['file_name'] = time() . rand(1000, 9999);
                $this->upload->initialize($config);
                // echo $_FILES['image']['name'];
                if ($this->upload->do_upload('image')) {
                    if ($image != '') {
                        $this->generals_func->fileDelete($config['upload_path'], $image);
                    }
                    $data = array('upload_data' => $this->upload->data());
                    $image = $data['upload_data']['file_name'];
                } else {

                    $this->session->set_flashdata('message', $this->generals_func->show_alert('err', 'Error!' . $this->upload->display_errors()));
                    redirect(base_url('language'));
                }
            }

            $post['code'] = $code;
            $post['name'] = $this->input->post('name');
            $post['display_name'] = $this->input->post('name');
            $post['icon'] = $image;
            $post['is_default']  =  '0';
            $post['status']  = '0';
            $status = $this->UtilityModel->insertThisData($this->db_ext."language",$post);
            if($status) {
              $type = 'suc';
              $message = $post['name'].'- '.lang('language_added_successfully');
            }else{
              $type = 'err';
                $message = lang('something_went_wrong');
            }
            $this->session->set_flashdata('message', $this->generals_func->show_alert($type, $message));
            redirect(base_url('language'));
      }

    }


    function translation($lang)
    {

        $this->data['languageDetail'] = $this->UtilityModel->getRequiredData('S', $this->db_ext . 'language', '*', array('code' => $lang));

        if (empty($this->data['languageDetail'])) {
            echo 'Invalid Language';
            exit();
        }
        $this->data['page_title'] = 'Translation - '.$this->data['languageDetail']['name'];
        $this->data['message'] = $this->session->flashdata('message');

        $this->data['breadcomb'] = array(array('link'=>base_url('setting/general'),'name'=>lang('settings'),'is_last'=>false),
                                        array('link'=>base_url('language'),'name'=>lang('language'),'is_last'=>false),
                                        array('link'=>base_url('language'),'name'=>$this->data['languageDetail']['name'],'is_last'=>true));

        $tmpl = array('table_open' => '<table id="big_table" class="table table-hover dataTable">');
        $this->table->set_template($tmpl);
        $this->table->set_heading(lang('sl_no'), lang('type'), lang('detail'), lang('set_transition'));

        $this->load->template('setting/language/translate', $this->data);

    }


    function updateStatus($type)
    {
        $data['status'] = false;
        $data['messgae'] = lang('invalid_request');
        if ($type == 'LS') {
            $update['status'] = ($this->input->post('status')) ? 0 : 1;

            $condition = array('code' => $this->input->post('id'));
            $table = $this->db_ext . 'language';
            $data['status'] = $this->UtilityModel->updateThisData($table, $condition, $update);
        }else if ($type == 'LD') {
            $update['is_default'] = 0;
            $table = $this->db_ext . 'language';
            $data['status'] = $this->UtilityModel->updateThisData($table, array(), $update);
            //----
            $update['is_default'] = 1;
            $condition = array('code' => $this->input->post('id'));
            $table = $this->db_ext . 'language';
            $data['status'] = $this->UtilityModel->updateThisData($table, $condition, $update);
        } else if ($type == 'TL') {
            $language = $this->input->post('lang');
            $keyword = $this->input->post('keyword');
            $value = $this->input->post('value');
            $checkExists = $this->UtilityModel->getRequiredData('S', $this->db_ext . 'language_detail', '*', array('language' => $language, 'conversion_type' => $keyword));
            $post['language'] = $language;
            $post['conversion_type'] = $keyword;
            $post['detail'] = $value;
            $table = $this->db_ext . 'language_detail';
            if (empty($checkExists)) {
                $post['entry_date_time'] = date('Y-m-d H:i:s');
                $data['status'] = $this->UtilityModel->insertThisData($table, $post);
            } else {
                $condition = array('language' => $language, 'conversion_type' => $keyword);
                $post['update_date_time'] = date('Y-m-d H:i:s');
                $data['status'] = $this->UtilityModel->updateThisData($table, $condition, $post);
            }
        }
        if ($data['status']) {
            $data['messgae'] = lang('updated_successfully');
        }
        echo json_encode($data);
    }

    function syncLanguage()
    {
        $language = $this->UtilityModel->getRequiredData('M', $this->db_ext . 'language', '*', array());
        $langstr = "<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');\n";
        foreach ($language as $lang) {
            $post_array[$lang['code']] = $langstr;
            $converstion = $this->UtilityModel->getRequiredData('M', $this->db_ext . 'language_detail', '*', array('language' => $lang['code']));

            foreach ($converstion as $con) {
                $post_array[$lang['code']] .= "\$lang['" . $con['conversion_type'] . "'] = \"" . str_replace('"', '', $con["detail"]) . "\";" . "\n";
            }
            if (!file_exists('./application/language/'.$lang['code'])) {
    mkdir('./application/language/'.$lang['code'], 0777, true);
}
            $fileName = $lang['code'] . '_lang.php';
            $fp = fopen('./application/language/'.$lang['code'].'/' . $fileName, 'w');
            fwrite($fp, $post_array[$lang['code']]);
            fclose($fp);
        }
        redirect(base_url("language"));

    }

    public function insertThisTranslation()
    {
      $keyword = $this->input->post('code');
      $title = $this->input->post('name');
      $data['message'] = lang('all_fields_are_required');
      $data['success'] = false;
      if($keyword != "" && $title != ""){

        $checkKeyword  = $this->UtilityModel->getRequiredData('S', $this->db_ext . 'lang_conversion', '*', array('keyword' => $keyword));
        if(empty($checkKeyword)){
          $checkName  = $this->UtilityModel->getRequiredData('S', $this->db_ext . 'lang_conversion', '*', array('title' => $title));
          if(empty($checkKeyword)){

            $post['keyword'] = $keyword;
            $post['title'] = $title;

            $status = $this->UtilityModel->insertThisData($this->db_ext."lang_conversion", $post);
            if($status){
              $data['success'] = true;
              $data['message'] = lang('translation_added_successfully');
            }else{
              $data['message'] = lang('something_went_wrong');
            }

          }else{
            $data['message'] = lang('name_already_exists');
          }
        }else{
          $data['message'] = lang('code_already_exists');
        }

      }
      echo json_encode($data);
    }

  }
