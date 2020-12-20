<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class CommanModel extends CI_Model {

    public function __construct() {
        parent::__construct();
    }

    public function getCountryList($limit, $offset) {
        if ($limit != '' && $offset != '') {
            $offset = $limit * $offset - $limit;
        }
        $this->db->select('SQL_CALC_FOUND_ROWS a.*', false);


        if ($this->input->get_post('name') != "") {
            $this->db->like('name', $this->input->get_post('name'), 'both');
        }

        if ($this->input->get_post('country_code') != "") {
            $this->db->like('country_code', $this->input->get_post('country_code'), 'both');
        }

        if ($limit != '' && $offset == '') {
            $this->db->limit($limit);
        }
        if ($limit != '' && $offset != '') {
            $this->db->limit($limit, $offset);
        }

        $order_by = "entry_date_time";
        $order_type = "DESC";

        $query = $this->db->order_by($order_by . ' ' . $order_type)->get($this->db_ext . 'country a');
        return $query->result_array();
    }

    // Get countries without limit
    public function getCountries() {
        $this->db->select ( '*' );
		// $this->db->where ( 'is_active', 1 );
		$query = $this->db->get ( 'haashtag_country' );
		return $query->result_array ();
    }

    public function getStates($countryCode) {
        $this->db->select ( '*' );
		$this->db->where ( 'country_code', $countryCode );
		$query = $this->db->get ( 'haashtag_state' );
		return $query->result_array ();
    }

    public function getCities($state) {
        $this->db->select ( '*' );
		$this->db->where ( 'state_code', $state );
		$query = $this->db->get ( 'haashtag_city' );
		return $query->result_array ();
    }

    public function getPinCodes($city) {
        $this->db->select ( '*' );
		$this->db->where ( 'city_id', $city );
		$query = $this->db->get ( 'haashtag_pincode' );
		return $query->result_array ();
    }

    public function getCustomerList($limit, $offset) {
        if ($limit != '' && $offset != '') {
            $offset = $limit * $offset - $limit;
        }
        $this->db->select('SQL_CALC_FOUND_ROWS a.*', false);


        if ($this->input->get_post('name') != "") {
            $this->db->like('name', $this->input->get_post('name'), 'both');
        }

        if ($this->input->get_post('country_code') != "") {
            $this->db->like('country_code', $this->input->get_post('country_code'), 'both');
        }

        if ($limit != '' && $offset == '') {
            $this->db->limit($limit);
        }
        if ($limit != '' && $offset != '') {
            $this->db->limit($limit, $offset);
        }

        $order_by = "entry_date_time";
        $order_type = "DESC";

        $query = $this->db->order_by($order_by . ' ' . $order_type)->get($this->db_ext . 'customer a');
        return $query->result_array();
    }


    public function getVendorList($limit, $offset) {
        if ($limit != '' && $offset != '') {
            $offset = $limit * $offset - $limit;
        }
        $this->db->select('SQL_CALC_FOUND_ROWS a.*', false);


        if ($this->input->get_post('name') != "") {
            $this->db->like('name', $this->input->get_post('name'), 'both');
        }

        if ($this->input->get_post('country_code') != "") {
            $this->db->like('country_code', $this->input->get_post('country_code'), 'both');
        }

        if ($limit != '' && $offset == '') {
            $this->db->limit($limit);
        }
        if ($limit != '' && $offset != '') {
            $this->db->limit($limit, $offset);
        }

        $order_by = "entry_date_time";
        $order_type = "DESC";

        $query = $this->db->order_by($order_by . ' ' . $order_type)->get($this->db_ext . 'vendor a');
        return $query->result_array();
    }



    public function getGstList($limit, $offset) {
        if ($limit != '' && $offset != '') {
            $offset = $limit * $offset - $limit;
        }
        $this->db->select('SQL_CALC_FOUND_ROWS a.*', false);


        if ($this->input->get_post('name') != "") {
            $this->db->like('name', $this->input->get_post('name'), 'both');
        }

        if ($this->input->get_post('value') != "") {
            $this->db->like('value', $this->input->get_post('value'), 'both');
        }
        if ($this->input->get_post('effective_date_from') != "") {
            $this->db->like('DATE(effective_date)', $this->input->get_post('effective_date_from'));
        }
        if ($this->input->get_post('effective_date_to') != "") {
            $this->db->like('DATE(effective_date)', $this->input->get_post('effective_date_to'));
        }

        if ($limit != '' && $offset == '') {
            $this->db->limit($limit);
        }
        if ($limit != '' && $offset != '') {
            $this->db->limit($limit, $offset);
        }

        $order_by = "entry_date_time";
        $order_type = "DESC";

        $query = $this->db->order_by($order_by . ' ' . $order_type)->get($this->db_ext . 'gst a');
        return $query->result_array();
    }

    public function createProfile($postImage) {
        $profileData = array(
            'billing_name' => $_POST['company_name'],
            'phone_number' => $_POST['phone_no'],
            'profile_email' => $_POST['email_id'],
            'gst_number' => $_POST['gst_no'],
            'pan_number' =>  $_POST['pan_no'],
            'logo' => $postImage,
            'address' => $_POST['area_address'],
            'country' => $_POST['country'],
            'state' => $_POST['state'],
            'city' => $_POST['city'],
            'pincode' => $_POST['pincode'],
        );

        $this->db->insert('haashtag_company_profile', $profileData);
        $insertId = $this->db->insert_id();
        return $insertId;
    }

    public function createProfileContact($profileContact) {
        $this->db->insert('haashtag_company_profile_contact', $profileContact);
    }

    public function createProfileBankDetails($profileBank) {
        $this->db->insert('haashtag_company_profile_banks', $profileBank);
    }


    public function getPartnerList($limit, $offset) {
        if ($limit != '' && $offset != '') {
            $offset = $limit * $offset - $limit;
        }
        $this->db->select('SQL_CALC_FOUND_ROWS a.*', false);


        if ($this->input->get_post('name') != "") {
            $this->db->like('name', $this->input->get_post('name'), 'both');
        }

        if ($this->input->get_post('partner_code') != "") {
            $this->db->like('partner_code', $this->input->get_post('partner_code'));
        }

        if ($limit != '' && $offset == '') {
            $this->db->limit($limit);
        }
        if ($limit != '' && $offset != '') {
            $this->db->limit($limit, $offset);
        }

        $order_by = "entry_date_time";
        $order_type = "DESC";

        $query = $this->db->order_by($order_by . ' ' . $order_type)->get($this->db_ext . 'partner a');
        return $query->result_array();
    }

    public function getStateList($limit, $offset) {
        if ($limit != '' && $offset != '') {
            $offset = $limit * $offset - $limit;
        }
        $this->db->select('SQL_CALC_FOUND_ROWS a.*,b.name as country_name,z.zone_code as zone_code,z.name as zone_name', false);
        $this->db->join($this->db_ext . 'zone z', 'z.zone_code = a.zone_code');
        $this->db->join($this->db_ext . 'country b', 'z.country_code = b.country_code');

        if ($this->input->get_post('name') != "") {
            $this->db->like('name', $this->input->get_post('name'), 'both');
        }

        if ($this->input->get_post('country_code') != "") {
            $this->db->like('country_code', $this->input->get_post('country_code'), 'both');
        }
        if ($this->input->get_post('state_code') != "") {
            $this->db->like('state_code', $this->input->get_post('state_code'), 'both');
        }

        if ($limit != '' && $offset == '') {
            $this->db->limit($limit);
        }
        if ($limit != '' && $offset != '') {
            $this->db->limit($limit, $offset);
        }

        $order_by = "entry_date_time";
        $order_type = "DESC";

        $query = $this->db->order_by($order_by . ' ' . $order_type)->get($this->db_ext . 'state a');
        return $query->result_array();
    }

    public function getZoneList($limit, $offset) {
        if ($limit != '' && $offset != '') {
            $offset = $limit * $offset - $limit;
        }
        $this->db->select('SQL_CALC_FOUND_ROWS a.*,b.name as country_name', false);
        $this->db->join($this->db_ext . 'country b', 'a.country_code = b.country_code');

        if ($this->input->get_post('name') != "") {
            $this->db->like('name', $this->input->get_post('name'), 'both');
        }

        if ($this->input->get_post('country_code') != "") {
            $this->db->like('country_code', $this->input->get_post('country_code'), 'both');
        }
        if ($this->input->get_post('zone_code') != "") {
            $this->db->like('state_code', $this->input->get_post('zone_code'), 'both');
        }

        if ($limit != '' && $offset == '') {
            $this->db->limit($limit);
        }
        if ($limit != '' && $offset != '') {
            $this->db->limit($limit, $offset);
        }

        $order_by = "entry_date_time";
        $order_type = "DESC";

        $query = $this->db->order_by($order_by . ' ' . $order_type)->get($this->db_ext . 'zone a');
        return $query->result_array();
    }


public function getPartnerServiceList($limit, $offset) {
        if ($limit != '' && $offset != '') {
            $offset = $limit * $offset - $limit;
        }
        $this->db->select('SQL_CALC_FOUND_ROWS a.*,b.name as partner_name', false);
        $this->db->join($this->db_ext . 'partner b', 'a.partner_code = b.partner_code');

        if ($this->input->get_post('name') != "") {
            $this->db->like('name', $this->input->get_post('name'), 'both');
        }

        if ($this->input->get_post('partner_code') != "") {
            $this->db->like('country_code', $this->input->get_post('partner_code'), 'both');
        }


        if ($limit != '' && $offset == '') {
            $this->db->limit($limit);
        }
        if ($limit != '' && $offset != '') {
            $this->db->limit($limit, $offset);
        }

        $order_by = "entry_date_time";
        $order_type = "DESC";

        $query = $this->db->order_by($order_by . ' ' . $order_type)->get($this->db_ext . 'partner_service a');
        return $query->result_array();
    }
    public function getCityList($limit, $offset) {
        if ($limit != '' && $offset != '') {
            $offset = $limit * $offset - $limit;
        }
        $this->db->select('SQL_CALC_FOUND_ROWS a.*,b.name as country_name,c.name as state_name,c.country_code,z.zone_code as zone_code,z.name as zone_name', false);
        $this->db->join($this->db_ext . 'state c', 'a.state_code = c.state_code');
        $this->db->join($this->db_ext . 'zone z', 'z.zone_code = c.zone_code');
        $this->db->join($this->db_ext . 'country b', 'c.country_code = b.country_code');

        if ($this->input->get_post('name') != "") {
            $this->db->like('name', $this->input->get_post('name'), 'both');
        }

        if ($this->input->get_post('country_code') != "") {
            $this->db->like('country_code', $this->input->get_post('country_code'), 'both');
        }
        if ($this->input->get_post('state_code') != "") {
            $this->db->like('state_code', $this->input->get_post('state_code'), 'both');
        }

        if ($limit != '' && $offset == '') {
            $this->db->limit($limit);
        }
        if ($limit != '' && $offset != '') {
            $this->db->limit($limit, $offset);
        }

        $order_by = "entry_date_time";
        $order_type = "DESC";

        $query = $this->db->order_by($order_by . ' ' . $order_type)->get($this->db_ext . 'city a');
        return $query->result_array();
    }


     public function getPincodeList($limit, $offset) {
        if ($limit != '' && $offset != '') {
            $offset = $limit * $offset - $limit;
        }
        $this->db->select('SQL_CALC_FOUND_ROWS a.*,z.zone_code as zone_code,z.name as zone_name,d.name as city_name,b.name as country_name,c.name as state_name,c.country_code', false);
        $this->db->join($this->db_ext . 'city d', 'd.city_id = a.city_id');
        $this->db->join($this->db_ext . 'state c', 'd.state_code = c.state_code');
        $this->db->join($this->db_ext . 'zone z', 'z.zone_code = c.zone_code');
        $this->db->join($this->db_ext . 'country b', 'c.country_code = b.country_code');

        if ($this->input->get_post('name') != "") {
            $this->db->like('name', $this->input->get_post('name'), 'both');
        }

        if ($this->input->get_post('country_code') != "") {
            $this->db->like('country_code', $this->input->get_post('country_code'), 'both');
        }
        if ($this->input->get_post('state_code') != "") {
            $this->db->like('state_code', $this->input->get_post('state_code'), 'both');
        }
if ($this->input->get_post('city_id') != "") {
            $this->db->like('city_id', $this->input->get_post('city_id'));
        }
        if ($limit != '' && $offset == '') {
            $this->db->limit($limit);
        }
        if ($limit != '' && $offset != '') {
            $this->db->limit($limit, $offset);
        }

        $order_by = "entry_date_time";
        $order_type = "DESC";

        $query = $this->db->order_by($order_by . ' ' . $order_type)->get($this->db_ext . 'pincode a');
        return $query->result_array();
    }


public function getBookTypeList($limit, $offset) {
        if ($limit != '' && $offset != '') {
            $offset = $limit * $offset - $limit;
        }
        $this->db->select('SQL_CALC_FOUND_ROWS a.*,b.name as partner_name', false);
        $this->db->join($this->db_ext . 'partner b', 'a.partner_code = b.partner_code');

        if ($this->input->get_post('name') != "") {
            $this->db->like('name', $this->input->get_post('name'), 'both');
        }

        if ($this->input->get_post('partner_code') != "") {
            $this->db->like('country_code', $this->input->get_post('partner_code'), 'both');
        }


        if ($limit != '' && $offset == '') {
            $this->db->limit($limit);
        }
        if ($limit != '' && $offset != '') {
            $this->db->limit($limit, $offset);
        }

        $order_by = "book_type_id";
        $order_type = "DESC";

        $query = $this->db->order_by($order_by . ' ' . $order_type)->get($this->db_ext . 'book_type a');
        return $query->result_array();
    }
}
