<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class UserModel extends CI_Model {

    public function __construct() {
        parent::__construct();
    }

   public function getReportDetail($limit,$offset)
   {
       if ($limit != '' && $offset != '') {
           $offset = $limit * $offset - $limit;
       }
      $this->db->select('SQL_CALC_FOUND_ROWS a.*', false);
      $this->db->where(array('user_name !='=>'superadmin'));

      if($this->input->get_post('search_name') !=""){
          $this->db->like('name', $this->input->get_post('search_name'), 'both');
      }

       if($this->input->get_post('search_username') !=""){
           $this->db->like('user_name', $this->input->get_post('search_username'), 'both');
       }

       if($this->input->get_post('search_email_id') !=""){
           $this->db->like('email_id', $this->input->get_post('search_email_id'), 'both');
       }

       if($this->input->get_post('search_mobile_no') !=""){
           $this->db->like('mobile_number', $this->input->get_post('search_mobile_no'), 'both');
       }

       if($this->input->get_post('from_entry_date') !=""){
           $from_date = date('Y-m-d',strtotime($this->input->get_post('from_entry_date')));
           $this->db->where(array('entry_date_time >='=>$from_date));
       }

       if($this->input->get_post('to_entry_date') !=""){
           $to_date = date('Y-m-d',strtotime($this->input->get_post('to_entry_date')));
           $this->db->where(array('entry_date_time <='=>$to_date));
       }

        if ($limit != '' && $offset == '') {
            $this->db->limit($limit);
        }
        if ($limit != '' && $offset != '') {
            $this->db->limit($limit, $offset);
        }

        $order_by = "name";
        $order_type = "ASC";

        $query = $this->db->order_by($order_by.' '.$order_type)->get($this->db_ext . 'user a');
        return $query->result_array();
   }

}
