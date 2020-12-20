<?php

defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * Admin Authentication Class
 */
class CustomField extends CI_Controller {
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


    }



    public function index() {
        $this->data['message'] = $this->session->flashdata('message');
        $this->load->template('custom_field/general', $this->data);
    }

    public function view($view) {
      if($view == "assets" || $view == "user" || $view == "licence" )
      {

      }else{
        $this->session->set_flashdata('message', $this->generals_func->show_alert('err',lang('invalid_type')));
        redirect(base_url('customField'));
      }
      $this->data['view_type'] = $view;
      $this->data['breadcomb'] = array(array('link'=>base_url('setting/general'),'name'=>lang('settings'),'is_last'=>false),
      array('link'=>base_url('customField'),'name'=>lang('custom_field'),'is_last'=>false),
                                      array('link'=>'javascript:;','name'=>lang($view),'is_last'=>true));

      $tmpl = array('table_open' => '<table id="big_table" class="table table-hover dataTable">');
      $this->table->set_template($tmpl);
      $this->table->set_heading(lang('sl_no'),lang('name'),lang('input_type'),lang('options'), lang('action'));

      $this->data['head_link'] = array(array('link'=>base_url('customField/manage/'.$view),'icon'=>'<i class="fa fa-plus"></i>','name'=>lang('add'),'id'=>'','class'=>'btn btn-warning'),
                                      array('link'=>base_url('customField/view/'.$view),'icon'=>'<i class="fa fa-eye"></i>','name'=>lang('view'),'id'=>'','class'=>'btn btn-primary'));

        $this->data['message'] = $this->session->flashdata('message');
        $this->load->template('custom_field/view', $this->data);
    }

    public function manage($view) {
      if($view == "assets" || $view == "user" || $view == "licence" )
      {

      }else{
        $this->session->set_flashdata('message', $this->generals_func->show_alert('err',lang('invalid_type')));
        redirect(base_url('customField'));
      }

      if($view == "assets"){
          $mtype = "A";
      }else if($view == "user"){
        $mtype = "U";
      }else if($view == "licence"){
        $mtype = "L";
      }



      $this->form_validation->set_rules('name', lang('name'), 'required');
      $this->form_validation->set_rules('input_type', lang('input_type'), 'required');
     if ($this->form_validation->run() == true) {
       $post['name'] = $this->input->post('name');
       $post['section'] = $mtype;
       $post['vendor_id'] = $this->session->userdata('vendor_id');
       $post['input_type'] = $this->input->post('input_type');
       $post['description'] = $this->input->post('description');
       $inputTypeDetails = $this->UtilityModel->getRequiredData('S', $this->db_ext . 'input_type', '*',array('type_code'=>$post['input_type']));
       if(empty($inputTypeDetails)){
         $this->session->set_flashdata('message', $this->generals_func->show_alert('err',lang('invalid_input_type')));
         redirect(base_url('customField/manage/'.$view));
       }else{
         if($this->input->post('required') == "1"){
           $post['required'] = "1";
         }else{
           $post['required'] = "0";
         }
         $post['minlength'] =$this->input->post('minlength');
         $post['maxlength'] =$this->input->post('maxlength');
         if($this->input->post('is_child') == "1"){
           $post['is_child'] = "1";
           $post['parent_id'] = $this->input->post('parent_id');
           $post['option_length'] = count($this->input->post('parent_options'));
           $post['parent_option_id'] = implode(',',$this->input->post('parent_options'));
         }else{
           $post['is_child'] = "0";
         }
         if($this->input->post('edit_id') != ""){
           $field_id = $this->input->post('edit_id');
           $post['update_date_time'] = date('Y-m-d H:i:s');
           $status = $this->UtilityModel->updateThisData($this->db_ext.'custom_fields',array('vendor_id'=>$this->session->userdata('vendor_id'),'field_id'=>$field_id),$post);
         }else{
           $post['entry_date_time'] = date('Y-m-d H:i:s');
           $status = $this->UtilityModel->insertThisData($this->db_ext.'custom_fields',$post);
           $field_id = $this->db->insert_id();
         }
         if($inputTypeDetails['is_multi'] == '1'){
           if(empty($this->input->post('options'))){
             $this->session->set_flashdata('message', $this->generals_func->show_alert('err',lang('altleast_one_option_is_required')));
             redirect(base_url('customField/manage/'.$view));
           }else{
             $options = $this->input->post('options');
             $editm_id = $this->input->post('opt_id');
             foreach($options as $key => $opt){
               $mpost = array();
               $mpost['option_value'] = $opt;
               $mpost['field_id'] = $field_id;
               $update = 0;
               if(isset($editm_id[$key])){
                 if($editm_id[$key] != ""){
                   $update = 1;
                 }
               }

               if($update == 1){
                 $status = $this->UtilityModel->updateThisData($this->db_ext.'custom_field_option',array('option_id'=>$editm_id[$key],'field_id'=>$field_id),$post);

               }else{
                  $status = $this->UtilityModel->insertThisData($this->db_ext.'custom_field_option',$mpost);
               }
             }

           }
         }
       }
       if($status){
         $updatedData = json_encode($post);
         $this->UtilityModel->insertThisLog("Custom Field - ".$view,lang("updated_successfully"),$updatedData);
         $this->session->set_flashdata('message', $this->generals_func->show_alert('suc',lang('updated_successfully')));
       }else{
         $this->session->set_flashdata('message', $this->generals_func->show_alert('err',lang('something_went_wrong')));
       }
       redirect(base_url('customField/view/'.$view));
     }


      $type_arr = $this->UtilityModel->getRequiredData('M', $this->db_ext . 'input_type', 'type_code,type_name');
      $this->data['input_type_option'] = $this->generals_func->select_options($type_arr, 'type_code', 'type_name');

      $condition = " vendor_id = ".$this->session->userdata('vendor_id')." AND input_type IN ('radio','checkbox','select') AND section = '".$mtype."' ";

      $this->data['custom_field_arr'] = $this->UtilityModel->getRequiredData('M', $this->db_ext . 'custom_fields', 'field_id,name',$condition);
      $this->data['parent_option'] = $this->generals_func->select_options($this->data['custom_field_arr'], 'field_id', 'name');

      $this->data['view_type'] = $view;
      $this->data['breadcomb'] = array(array('link'=>base_url('setting/general'),'name'=>lang('settings'),'is_last'=>false),
      array('link'=>base_url('customField'),'name'=>lang('custom_field'),'is_last'=>false),
        array('link'=>base_url('customField/'.$view),'name'=>lang($view),'is_last'=>false),
                                      array('link'=>'javascript:;','name'=>lang("add"),'is_last'=>true));
                                      $this->data['head_link'] = array(array('link'=>base_url('customField/manage/'.$view),'icon'=>'<i class="fa fa-plus"></i>','name'=>lang('add'),'id'=>'','class'=>'btn btn-warning'),
                                                                      array('link'=>base_url('customField/view/'.$view),'icon'=>'<i class="fa fa-eye"></i>','name'=>lang('view'),'id'=>'','class'=>'btn btn-primary'));

      $this->data['edit'] = array();
      if($this->input->get('edit') != ""){
        $condition = " vendor_id = ".$this->session->userdata('vendor_id')." AND section = '".$mtype."' AND field_id= ".$this->input->get('edit')." ";

        $this->data['edit'] = $this->UtilityModel->getRequiredData('S', $this->db_ext . 'custom_fields', '*',$condition);

      }
        $this->data['message'] = $this->session->flashdata('message');
        $this->load->template('custom_field/manage', $this->data);
    }

    function getData($type){

      $data['status'] = false;
      $data['message'] = lang('invalid_type');
      $view = $this->input->post('type');
      if($type == 'parentOptions')
      {
        $field_id = $this->input->post('field_id');
        $data['status'] = true;
        $data['html'] = "";
        if($field_id != ""){
          $type = $this->input->post('type');
          if($view == "assets"){
              $mtype = "A";
          }else if($view == "user"){
            $mtype = "U";
          }else if($view == "licence"){
            $mtype = "L";
          }

            $fieldDetails = $this->UtilityModel->getRequiredData('S', $this->db_ext . 'custom_fields', '*',array('vendor_id'=>$this->session->userdata('vendor_id'),'section'=>$mtype,'field_id'=>$this->input->post('field_id')));
            if(!empty($fieldDetails)){
              $options = $this->UtilityModel->getRequiredData('M', $this->db_ext . 'custom_field_option', '*',array('field_id'=>$fieldDetails['field_id']));
              $data["html"] = "<div style='margin-top:15px' class='alert alert-warning'>".lang('on_select_of_this_option_above_details_will_be_displayed')."</div><div style='margin:10px 15px' class='row'>";
              $mopt = explode(',',$fieldDetails['parent_option_id']);
              foreach($options as $opt){
                $checked = false;

                if(in_array($opt['option_id'],$mopt)){
                    $checked = true;

                 }
                $data["html"] .=  '<div class="col-sm-3 custom-control custom-checkbox checkbox-info">'.


                   form_checkbox('parent_options[]', $opt['option_id'], $checked, "class='custom-control-input' id='is_child_".$opt['option_id']."' ").'
                    <label class="custom-control-label" for="is_child_'.$opt['option_id'].'">'.$opt['option_value'].'</label>
                </div>';


              }
              $data["html"] .= "</div>";
            }else{
              $data['status'] = false;
              $data['message'] = lang('invalid_custom_field');
            }


        }
      }else if($type == "checkisMulti"){
        $data['status'] = true;
        $input_type = $this->input->post('input_type');
        $inputdetails = $this->UtilityModel->getRequiredData('S', $this->db_ext . 'input_type', '*',array('type_code'=>$input_type));
        if(!empty($inputdetails)){
          if($inputdetails['is_multi'] == '1'){
            $data['mutioption'] = $inputdetails['is_multi'];
          }else{
            $data['mutioption'] = $inputdetails['is_multi'];
          }
        }else{
          $data['status'] = false;
          $data['message'] = lang('invalid_input_type');
        }
      }

      echo json_encode($data);

    }



    function updateStatus($type)
    {
        $data['status'] = false;
        $data['messgae'] = lang('invalid_request');
        if ($type == 'CF') {
            $update['status'] = ($this->input->post('status')) ? 0 : 1;
            $condition = array('field_id' => $this->input->post('id'));
            $table = $this->db_ext . 'custom_fields';
            $data['status'] = $this->UtilityModel->updateThisData($table, $condition, $update);
        }
        if ($data['status']) {
            $data['messgae'] = lang('updated_successfully');
        }
        echo json_encode($data);
    }


  }
