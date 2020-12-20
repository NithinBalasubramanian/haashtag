<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class RateCardModel extends CI_Model {

    public function __construct() {
        parent::__construct();
    }

   public function getRateCardList($limit,$offset)
   {
       if ($limit != '' && $offset != '') {
           $offset = $limit * $offset - $limit;
       }
      $this->db->select('SQL_CALC_FOUND_ROWS a.*', false);
     

      if($this->input->get_post('name') !=""){
          $this->db->like('name', $this->input->get_post('name'), 'both');
      }

       if($this->input->get_post('rate_card_code') !=""){
           $this->db->like('rate_card_code', $this->input->get_post('rate_card_code'));
       }
       if($this->input->get_post('partner_code') !=""){
           $this->db->like('partner_code', $this->input->get_post('partner_code'));
       }
       
       if($this->input->get_post('service_id') !=""){
           $this->db->like('service_id', $this->input->get_post('service_id'));
       }
       if($this->input->get_post('mode') !=""){
           $this->db->like('mode', $this->input->get_post('mode'));
       }
       if($this->input->get_post('doc_type') !=""){
           $this->db->like('doc_type', $this->input->get_post('doc_type'));
       }
       if($this->input->get_post('status') !=""){
           $this->db->like('status', $this->input->get_post('status'));
       }

      
       if($this->input->get_post('entry_date_from') !=""){
           $from_date = date('Y-m-d',strtotime($this->input->get_post('entry_date_from')));
           $this->db->where(array('entry_date_from >='=>$from_date));
       }

       if($this->input->get_post('entry_date_to') !=""){
           $to_date = date('Y-m-d',strtotime($this->input->get_post('entry_date_to')));
           $this->db->where(array('entry_date_from <='=>$to_date));
       }

        if ($limit != '' && $offset == '') {
            $this->db->limit($limit);
        }
        if ($limit != '' && $offset != '') {
            $this->db->limit($limit, $offset);
        }

        $order_by = "rate_id";
        $order_type = "DESC";

        $query = $this->db->order_by($order_by.' '.$order_type)->get($this->db_ext . 'rate_card a');
        return $query->result_array();
   }

}
