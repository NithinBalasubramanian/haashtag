<?php

defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * Admin Authentication Class
 */
class Dashboard extends CI_Controller {
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
$this->data['breadcomb_title'] = 'Home';

        $this->data['main_title'] = "Dashboard";
        $this->data['breadcomb'] = array(
            array('link' => 'javascript:;', 'name' => lang('dashboard'), 'is_last' => true));
        $this->load->template('dashboard/dashboard', $this->data);
    }

  }
