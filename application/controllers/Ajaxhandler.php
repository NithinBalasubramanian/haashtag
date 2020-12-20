<?php

defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * Admin Authentication Class
 */
class Ajaxhandler extends CI_Controller {
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
        $this->data['date_format'] = $this->session->userdata('date_format');
        $this->data['currency_symbol'] = $this->session->userdata('currency_symbol');

        $this->data['date_time_format'] = $this->session->userdata('date_time_format');
    }

    public function getStateListByCountry() {
        $data['status'] = false;
        $data['message'] = lang('no_state_found');

        $query = $this->db->select('state_code,name')
                ->where(array('country_code' => $this->input->post('country_code')))
               
                ->order_by('name ASC')
                ->get($this->db_ext . 'state');
        $result = $query->result_array();
        $data['html'] = '<option value="">'.lang('select_a_state').'</option>';
        if (!empty($result)) {
            $data['status'] = true;
            $data['messgae'] = lang('state_found_successfully');
            foreach($result as $res){
                $data['html'] .= '<option value="'.$res['state_code'].'">'.$res['name'].'</option>';
            }
        }

        echo json_encode($data);
    }
    
    public function getZoneListByCountry() {
        $data['status'] = false;
        $data['message'] = lang('no_zone_found');

        $query = $this->db->select('zone_code,name')
                ->where(array('country_code' => $this->input->post('country_code')))
               
                ->order_by('name ASC')
                ->get($this->db_ext . 'zone');
        $result = $query->result_array();
        $data['html'] = '<option value="">'.lang('select_a_zone').'</option>';
        if (!empty($result)) {
            $data['status'] = true;
            $data['messgae'] = lang('state_found_successfully');
            foreach($result as $res){
                $data['html'] .= '<option value="'.$res['zone_code'].'">'.$res['name'].'</option>';
            }
        }

        echo json_encode($data);
    }
    
    public function getStateListByZone() {
        $data['status'] = false;
        $data['message'] = lang('no_state_found');

        $query = $this->db->select('state_code,name')
                ->where(array('zone_code' => $this->input->post('zone_code')))
                ->order_by('name ASC')
                ->get($this->db_ext . 'state');
        $result = $query->result_array();
        $data['html'] = '<option value="">'.lang('select_a_zone').'</option>';
        if (!empty($result)) {
            $data['status'] = true;
            $data['messgae'] = lang('state_found_successfully');
            foreach($result as $res){
                $data['html'] .= '<option value="'.$res['state_code'].'">'.$res['name'].'</option>';
            }
        }

        echo json_encode($data);
    }
    
    public function getServiceListByPartner() {
        $data['status'] = false;
        $data['message'] = lang('no_service_found');

        $query = $this->db->select('service_id,name')
                ->where(array('partner_code' => $this->input->post('partner_code')))
                ->order_by('name ASC')
                ->get($this->db_ext . 'partner_service');
        $result = $query->result_array();
        $data['html'] = '<option value="">'.lang('select_a_service').'</option>';
        if (!empty($result)) {
            $data['status'] = true;
            $data['messgae'] = lang('state_found_successfully');
            foreach($result as $res){
                $data['html'] .= '<option value="'.$res['service_id'].'">'.$res['name'].'</option>';
            }
        }

        echo json_encode($data);
    }
    
    
    public function getCityListByState() {
        $data['status'] = false;
        $data['message'] = lang('no_city_found');

        $query = $this->db->select('city_id,name')
                ->where(array('state_code' => $this->input->post('state_code')))
               
                ->order_by('name ASC')
                ->get($this->db_ext . 'city');
        $result = $query->result_array();
        $data['html'] = '<option value="">'.lang('select_a_city').'</option>';
        if (!empty($result)) {
            $data['status'] = true;
            $data['messgae'] = lang('city_found_successfully');
            foreach($result as $res){
                $data['html'] .= '<option value="'.$res['city_id'].'">'.$res['name'].'</option>';
            }
        }

        echo json_encode($data);
    }
    
     

}
