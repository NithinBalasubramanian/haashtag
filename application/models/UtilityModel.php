<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class UtilityModel extends CI_Model {

    public function record_count_all($table) {
        return $this->db->count_all($table);
    }

    public function exeFoundRows() {
        $query = $this->db->query("SELECT FOUND_ROWS() as count");
        return $query->row_array();
    }

    public function get_autoin($tablename) {
        $tablename = $tablename;
        $next_increment = 0;
        $query = $this->db->query("SHOW TABLE STATUS LIKE '$tablename'");
        $row_auto = $query->row_array();
        $next_increment = $row_auto['Auto_increment'];
        return $next_increment;
    }

    /**
     *
     * @param type $type  S - Single Row, M - Multiple Row
     * @param type $table Table Name
     * @param type $select Select values from table
     * @param type $condition general condition
     * @param type $orderBy  order by column name
     * @param type $groupBy group by column name
     * @param type $limit  Max records to be fetched
     * @param type $offset Start point of the record fetch
     * @return type  array
     */
    public function getRequiredData($type = 'M', $table, $select = '*', $condition = array(), $orderBy = '', $groupBy = '', $limit = '', $offset = '', $whereInCol = '', $whereIn = '') {
        $this->db->select($select);
        if (!empty($condition)) {
            $this->db->where($condition);
        }

        if (($whereInCol != '')) {

            if (!empty($whereIn)) {

                $this->db->where_in($whereInCol, $whereIn, false);
            }
        }

        if ($orderBy != '') {
            $this->db->order_by($orderBy);
        }
        if ($groupBy != '') {
            $this->db->group_by($groupBy);
        }
        if ($limit != '' && $offset == '') {
            $this->db->limit($limit);
        }
        if ($limit != '' && $offset != '') {
            $this->db->limit($limit, $offset);
        }

        $query = $this->db->get($table);

        if ($type == 'S') {
            return $query->row_array();
        } else {
            return $query->result_array();
        }
    }

    public function updateThisData($table, $condition = array(), $update = array()) {
        return $this->db->where($condition)->update($table, $update);
    }

    public function insertThisData($table, $post = array()) {
        $this->db->insert($table, $post);
        return $this->db->insert_id();
    }

    public function insertThisLog($type, $message, $updateData, $mainId = "",$secId = "",$thirdId="") {
        $post['update_data'] = $updateData;
        $post['updated_user'] = $this->session->userdata('user_id');
        $post['vendor_id'] = $this->session->userdata('vendor_id');
        $post['entry_date_time'] = date('Y-m-d H:i:s');
        $post['message'] = $message;
        $post['type'] = $type;
        $post['main_id'] = $mainId;
        if($secId != "") {
           $post['sec_id'] = $secId; 
        }
        if($thirdId != "") {
           $post['third_id'] = $thirdId; 
        }
        $post['ip_address'] = $this->input->ip_address();
        
        $post['access_key'] = $this->session->userdata('access_key');

        return $this->db->insert($this->db_ext . 'log', $post);
    }

    public function insertBatchData($table, $insert) {
        return $this->db->insert_batch($table, $insert);
    }

    public function deleteThisData($table, $condition = array()) {
        return $this->db->where($condition)->delete($table);
    }

    public function getSingColumData($table, $column, $condition) {
        $this->db->select($column);
        if (!empty($condition)) {
            $this->db->where($condition);
        }
        $query = $this->db->get($table);
        $row = $query->row_array();
        if (empty($row)) {
            return '';
        } else {
            return $row[$column];
        }
    }

    function get_all_category($limit, $start, $table) {
        $replace = array();
        $additional = '';
        if ($this->input->get('keyword') != '') {
            $additional = ' WHERE cat_name LIKE  ?';
            $replace[] = '%' . $this->input->get('keyword') . '%';


            $query1 = $this->db->query("SELECT group_concat(a.cat_id) as level1,group_concat(b.cat_id) as  level2 "
                    . " FROM $table a LEFT JOIN $table b ON a.cat_id  = b.parent_id WHERE a.parent_id   IN(
				   SELECT cat_id FROM $table $additional ORDER BY cat_id)", $replace);
            if ($query1->num_rows()) {
                $row1 = $query1->row_array();
                $cat_arra = array();
                $cat_arra1 = array();
                if ($row1['level1'] != '') {
                    $cat_arra = explode(',', $row1['level1']);
                }
                if ($row1['level2'] != '') {
                    $cat_arra1 = explode(',', $row1['level2']);
                }
                $cat_arra = array_merge($cat_arra, $cat_arra1);
                $unique = implode(',', array_unique($cat_arra));
                if (!empty($unique)) {
                    $additional .= ' OR cat_id IN(' . $unique . ')';
                }
            }
        }
        $replace[] = $limit;
        $replace[] = $start;
        $query = $this->db->query("SELECT  SQL_CALC_FOUND_ROWS * FROM  $table  $additional
					   ORDER BY cat_id,parent_id DESC LIMIT ? OFFSET ? ", $replace);
        return $query->result_array();
    }

    function get_parent_tree($cat_id, $table) {
        $return = array();
        $query = $this->db->select('a.cat_name as level1,b.cat_name as level2,c.cat_name as level3')
                ->join($table . ' b', 'b.cat_id  = a.parent_id', 'left')
                ->join($table . ' c', 'c.cat_id  = b.parent_id', 'left')
                ->where(array('a.cat_id' => $cat_id))
                ->get($table . ' a');
        if ($query->num_rows()) {
            $row = $query->row();
            if ($row->level1 != '') {
                $return[] = $row->level1;
            }
            if ($row->level2 != '') {
                $return[] = $row->level2;
            }
            if ($row->level3 != '') {
                $return[] = $row->level3;
            }
            $return = array_reverse($return);
        }
        return implode(' => ', $return);
    }

    public function get_parent_option($level = 3, $root = true, $table) {

        $select = array('' => 'select');

        $query1 = $this->db->select("cat_name,cat_id")
                ->where(array('parent_id' => 0))
                ->get($table);
        $result1 = $query1->result();
        foreach ($result1 as $key => $row1) {
            $select[$row1->cat_id] = $row1->cat_name . ' => ';
            if ($level >= 2) {

                $query2 = $this->db->select("cat_name,cat_id")
                        ->where(array('parent_id' => $row1->cat_id))
                        ->get($table);
                $result2 = $query2->result();
                if ($root == false && !empty($result2)) {
                    // unset($select[$row1->cat_id]);
                }
                foreach ($result2 as $key => $row2) {

                    $select[$row2->cat_id] = $row1->cat_name . ' => ' . $row2->cat_name . ' => ';
                    if ($level >= 3) {

                        $query3 = $this->db->select("cat_name_en,cat_id")
                                ->where(array('parent_id' => $row2->cat_id, 'parent_id !=' => 0))
                                ->get($table);
                        $result3 = $query3->result();
                        if ($root == false && !empty($result3)) {
                            // unset($select[$row2->cat_id]);
                        }
                        foreach ($result3 as $key => $row3) {
                            $select[$row3->cat_id] = $row1->cat_name . ' => ' . $row2->cat_name . ' => ' . $row3->cat_name;
                        }
                    }
                }
            }
        }
        return $select;
    }

    function update_category_order($table) {
        foreach ($this->input->post('item_id') as $index => $id) {
            $this->db->where('cat_id', $id)
                    ->update($table, array('sort_order' => $index));
        }
        return true;
    }

    function update_cadre_order($table) {
        foreach ($this->input->post('item_id') as $index => $id) {
            $this->db->where('cadre_id', $id)
                    ->update($table, array('sort_order' => $index));
        }
        return true;
    }

    function update_subcontracor_order($table) {
        foreach ($this->input->post('item_id') as $index => $id) {
            $this->db->where('subcontractor_id', $id)
                    ->update($table, array('sort_order' => $index));
        }
        return true;
    }

    function update_subcontractor_attribute_order($table) {
        foreach ($this->input->post('item_id') as $index => $id) {
            $this->db->where('attribute_id', $id)
                    ->update($table, array('sort_order' => $index));
        }
        return true;
    }

    function update_sort_order($table) {
        foreach ($this->input->post('item_id') as $index => $id) {
            $this->db->where('slide_id', $id)
                    ->update($table, array('sort_order' => $index));
        }
        return true;
    }

    function update_question_order($table) {
        foreach ($this->input->post('item_id') as $index => $id) {
            $this->db->where('question_id', $id)
                    ->update($table, array('sort_order' => $index));
        }
        return true;
    }

    function update_incident_checklist_order($table) {
        foreach ($this->input->post('item_id') as $index => $id) {
            $this->db->where('checklist_id', $id)
                    ->update($table, array('sort_order' => $index));
        }
        return true;
    }

    // Upload file/image method
    public function uploadAjaxFile($path, $table, $type) {
        $this->load->library('upload');
        $json = array();
        $data['message'] = lang('upload_failed');
        // Define file rules
        $config['overwrite'] = true;
        $fileName = time() . rand(1000, 9999);
        $post['status'] = false;
        $post['file_size'] = $_FILES['uploadImage']['size'];
        $post['image_name'] = $_FILES['uploadImage']['name'];
        $initialize = $this->upload->initialize(array(
            "upload_path" => $path,
            "allowed_types" => "*",
            "remove_spaces" => TRUE,
            "file_name" => $fileName,
            "overwrite" => true
        ));
        if (!$this->upload->do_upload('uploadImage')) {
            $error = array('error' => $this->upload->display_errors());
            $post['message'] = $this->upload->display_errors();
        } else {
            $data = $this->upload->data();
            $imagename = $data['file_name'];
            $post['status'] = true;
        }

        if ($post['status']) {

            $post['file'] = $imagename;
        }
        return $post;
    }

    function getAssetMappedTouser($userId) {
        $departmentList = $this->session->userdata('department');
        $companyList = $this->session->userdata('company');
        $this->db->select('*');
        if ($this->session->userdata('user_type') != "") {
            $this->db->where(array('asset_admin' => $this->session->userdata('user_id')));
            $this->db->where_in("department_id", $departmentList, false);
            $this->db->where_in("company_id", $companyList, false);
        }
        $this->db->where(array('vendor_id' => $this->session->userdata('vendor_id')));
        $this->db->order_by('name ASC');
        $query = $this->db->get($this->db_ext . "asset");
        return $query->result_array();
    }
    
    
    function getUserMappedTouser($userId) {
        $departmentList = $this->session->userdata('department');
        $companyList = $this->session->userdata('company');
        $this->db->select('*');
        if ($this->session->userdata('user_type') != "") {
            $this->db->where(array('asset_admin' => $this->session->userdata('user_id')));
            $this->db->where_in("department_id", $departmentList, false);
             $mCond = "";
            foreach ($companyList as $kd => $comp) {
                if ($kd == 0) {
                    $orfs = "";
                } else {
                    $orfs = "OR";
                }
                $mCond .= " " . $orfs . " (FIND_IN_SET( " . $comp . ",company_id))";
            }
        }
        $this->db->where(array('vendor_id' => $this->session->userdata('vendor_id')));
        $this->db->order_by('name ASC');
        $query = $this->db->get($this->db_ext . "user");
        return $query->result_array();
    }

    function getLocationsByCompanyId($compId) {
        $query = $this->db->select('b.location_id,b.name')
                ->join($this->db_ext . 'locations b', 'a.location_id = b.location_id')
                ->where(array('a.company_id' => $compId, 'a.is_warehouse' => '0', 'b.vendor_id' => $this->session->userdata('vendor_id'), 'b.is_deleted' => '0', 'b.status' => '1', 'b.is_warehouse' => '0'))
                ->group_by('b.location_id')
                ->order_by('b.name ASC')
                ->get($this->db_ext . 'company_location a');
        return $query->result_array();
    }

    function getMappedUserByComanyDepartment($companyId = '', $depaermentId = '') {
        $this->db->select('a.*');
        if ($companyId != "") {
            $this->db->where("FIND_IN_SET(".$companyId.", a.company_id)");
        }
        if ($depaermentId != "") {
            $this->db->where("FIND_IN_SET(".$depaermentId.", a.department_id)");
            
        }
        if($this->input->get_post('asset_user') == '1') {
             $this->db->where(array('a.asset_user' => "1"));
        }else if($this->input->get_post('asset_user') == '0') {
             $this->db->where(array('a.asset_user' => "0"));
        }else{
              $this->db->where(array('a.asset_user' => "0"));
        }
        $departmentList = $this->session->userdata('department');
        $companyList = $this->session->userdata('company');
        if (!empty($departmentList)) {
            $this->db->where_in('department_id', $departmentList);
        }
        if (!empty($companyList)) {
            $mCond = "";
            foreach ($companyList as $kd => $comp) {
                if ($kd == 0) {
                    $orfs = "";
                } else {
                    $orfs = "OR";
                }
                $mCond .= " " . $orfs . " (FIND_IN_SET( " . $comp . ",company_id))";
            }
            if ($mCond != "") {
                $this->db->where("(".$mCond.")");
            }
        }
        
          
        $query = $this->db->where(array('a.vendor_id' => $this->session->userdata('vendor_id'), 'a.is_deleted' => '0', 'a.status' => '1'));
                
              
                $query = $this->db->group_by('a.user_id')
                ->order_by('a.name ASC')
                ->get($this->db_ext . 'user a');
        return $query->result_array();
    }

    function getAssetLocationHistory($assetId) {
        $query = $this->db->where(array('a.vendor_id' => $this->session->userdata('vendor_id'), 'a.is_deleted' => '0', 'a.asset_id' => $assetId))
                ->get($this->db_ext . 'asset a');
        $currentDetail = $query->row_array();
        $currentArr = array();
        $mkey = 0;
        if (!empty($currentDetail)) {


            if ($currentDetail['location_id'] == "0" || $currentDetail['location_id'] == "" || $currentDetail['location_id'] == null) {
                $currentArr[$mkey]['location_type'] = "W";
                $current_location = $this->UtilityModel->getSingColumData($this->db_ext . 'company_location', 'location_id', array('is_warehouse' => '1', 'company_id' => $currentDetail['company_id']));
                $locationDetails = $this->getRequiredData('S', $this->db_ext . 'locations', '*', array('location_id' => $current_location));
                $currentArr[$mkey]['location_name'] = $locationDetails['name'];
                $currentArr[$mkey]['location_id'] = $locationDetails['location_id'];
                $currentArr[$mkey]['address'] = $locationDetails['address'];
                $currentArr[$mkey]['latitude'] = $locationDetails['latitude'];
                $currentArr[$mkey]['longitude'] = $locationDetails['longitude'];
            } else {
                $currentArr[$mkey]['current_location'] = $currentDetail['location_id'];
                $currentArr[$mkey]['location_type'] = 'L';
                $locationDetails = $this->getRequiredData('S', $this->db_ext . 'locations', '*', array('location_id' => $currentDetail['location_id']));
                $currentArr[$mkey]['location_id'] = $locationDetails['location_id'];
                $currentArr[$mkey]['location_name'] = $locationDetails['name'];
                $currentArr[$mkey]['address'] = $locationDetails['address'];
                $currentArr[$mkey]['latitude'] = $locationDetails['latitude'];
                $currentArr[$mkey]['longitude'] = $locationDetails['longitude'];
            }
            $mkey++;
        }

        $currentDetailA = $this->db->where(array('a.vendor_id' => $this->session->userdata('vendor_id'), 'a.is_deleted' => '0', 'b.asset_id' => $assetId))
                ->join($this->db_ext . 'check_asset_list b', "b.asset_id = " . $assetId . "  AND b.check_in_id = a.check_in_id")
                
                ->order_by('a.check_in_id ASC')
                ->get($this->db_ext . 'asset_check_in_out a');
        $result = $currentDetailA->result_array();
        foreach ($result as $res) {
          
            if ($res['main_type'] == 'O') {
                $currentArr[$mkey]['main_type'] = lang('check_out');
            } else {
                $currentArr[$mkey]['main_type'] = lang('check_in');
            }
            if ($res['check_type'] == 'P') {
                $currentArr[$mkey]['check_type'] = "P";
                $currentArr[$mkey]['user_detail'] = $this->getRequiredData('S', $this->db_ext . 'user', '*', array('user_id' => $res['to_person_id']));
                 
            } else {
                $currentArr[$mkey]['check_type'] = "L";
                if ($res['to_location_id'] == "0" || $res['to_location_id'] == "" || $res['to_location_id'] == null) {
                    $currentArr[$mkey]['location_type'] = "W";
                    $current_location = $this->UtilityModel->getSingColumData($this->db_ext . 'company_location', 'location_id', array('is_warehouse' => '1', 'company_id' => $res['to_company_id']));
                    $locationDetails = $this->getRequiredData('S', $this->db_ext . 'locations', '*', array('location_id' => $current_location));
                    $currentArr[$mkey]['location_name'] = $locationDetails['name'];
                    $currentArr[$mkey]['location_id'] = $locationDetails['location_id'];
                    $currentArr[$mkey]['address'] = $locationDetails['address'];
                    $currentArr[$mkey]['latitude'] = $locationDetails['latitude'];
                    $currentArr[$mkey]['longitude'] = $locationDetails['longitude'];
                } else {
                    $currentArr[$mkey]['location_type'] = 'L';
                    $locationDetails = $this->getRequiredData('S', $this->db_ext . 'locations', '*', array('location_id' => $res['to_location_id']));
                    $currentArr[$mkey]['location_id'] = $locationDetails['location_id'];
                    $currentArr[$mkey]['location_name'] = $locationDetails['name'];
                    $currentArr[$mkey]['address'] = $locationDetails['address'];
                    $currentArr[$mkey]['latitude'] = $locationDetails['latitude'];
                    $currentArr[$mkey]['longitude'] = $locationDetails['longitude'];
                }
            }
             
            $currentArr[$mkey]['current_location'] = $res['to_company_id'];

            if ($res['check_type'] == 'P') {
                $currentArr[$mkey]['location_type'] = 'C';
            } else {
                $currentArr[$mkey]['location_type'] = 'L';
            }
            $mkey++;
        }
        return $currentArr;
    }
    
    function getMainPreviewAuditOptions($scheduleId,$asset_id) {
        $query = $this->db->select('a.option_id,a.checklist_id,a.question,b.type,a.marks,b.schedule_id')
                ->join($this->db_ext . 'audit_response b', 'b.option_id = a.option_id AND b.schedule_id = '.$scheduleId.' AND asset_id =  '.$asset_id.' ','left')
                
                ->group_by('a.option_id')
                ->order_by('a.option_id ASC')
                ->get($this->db_ext . 'checklist_options a');
        return $query->result_array();
    }


    function val_check($tablename , $column = FALSE , $val =FALSE , $column1 = FALSE , $val1 =FALSE , $column2 = FALSE , $val2 = FALSE)
    {
        $this->db->select('*');
        $this->db->from($tablename);
        if($column != FALSE){
            $this->db->where($column , $val);
        }
        if($column1 != FALSE){
            $this->db->where($column1 , $val1);
        }
        if($column2 != FALSE){
            $this->db->where($column2 , $val2);
        }
        $result = $this->db->get();
        return $result->result_array();
    }


    function update_where($tablename,$data = array(), $where = array()) 
    {
        if (count($where)) {
            if ($this->db->update($tablename , $data, $where)) {
                $id = get_array_value($where, "id");
                if ($id) {
                    return $id;
                } else {
                    return true;
                }
            }
        }
    }

    function truncate($tablename)
    {
        $this->db->truncate($tablename);
    }
}

?>
