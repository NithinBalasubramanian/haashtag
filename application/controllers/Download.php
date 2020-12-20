<?php

defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * Admin Authentication Class
 */
class Download extends CI_Controller {
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
        $this->load->model('AssetModel');
        $this->data['head_link'] = array();
        $this->data['date_format'] = $this->session->userdata('date_format');
        $this->data['currency_symbol'] = $this->session->userdata('currency_symbol');

        $this->data['date_time_format'] = $this->session->userdata('date_time_format');
    }

    public function assetCategory() {

        $this->load->dbutil();
        $this->load->helper('file');
        $this->load->helper('download');
        $query = $this->db->query("SELECT a.name as Name FROM " . $this->db_ext . "asset_category a  WHERE a.is_deleted = '0' AND status = '1' AND vendor_id = " . $this->session->userdata('vendor_id') . " ");
        $delimiter = ",";
        $newline = "\r\n";
        $data = $this->dbutil->csv_from_result($query, $delimiter, $newline);
        force_download('asset_category_' . date('d-M-Y') . '.csv', $data);
    }

    public function assetProperty($cat_id) {
        $categoryDetails = $this->UtilityModel->getRequiredData('S', $this->db_ext . 'asset_category', '*', array('cat_id' => $cat_id, 'vendor_id' => $this->session->userdata('vendor_id')));
        $this->load->dbutil();
        $this->load->helper('file');
        $this->load->helper('download');
        $query = $this->db->query("SELECT a.property_name as Name FROM " . $this->db_ext . "asset_category_property a  WHERE a.cat_id  = " . $cat_id . " ");
        $delimiter = ",";
        $newline = "\r\n";
        $data = $this->dbutil->csv_from_result($query, $delimiter, $newline);
        force_download('asset_property_' . $categoryDetails['name'] . "_" . date('d-M-Y') . '.csv', $data);
    }

    public function model() {

        $this->load->dbutil();
        $this->load->helper('file');
        $this->load->helper('download');
        $query = $this->db->query("SELECT a.name as Name FROM " . $this->db_ext . "model a  WHERE a.is_deleted = '0' AND status = '1' AND vendor_id = " . $this->session->userdata('vendor_id') . " ");
        $delimiter = ",";
        $newline = "\r\n";
        $data = $this->dbutil->csv_from_result($query, $delimiter, $newline);
        force_download('models_' . date('d-M-Y') . '.csv', $data);
    }

    public function customFieldA() {

        $this->load->library('excel');

        // create file name
        $fileName = '-' . time() . '.xlsx';
        // load excel library
        $this->load->library('excel');
        $result = $this->UtilityModel->getRequiredData('M', $this->db_ext . 'custom_fields', '*', array('is_deleted' => '0', 'section' => 'A', 'vendor_id' => $this->session->userdata('vendor_id')));


        $objPHPExcel = new PHPExcel();
        $objPHPExcel->setActiveSheetIndex(0);
        // set Header
        $objPHPExcel->getActiveSheet()->SetCellValue('A1', lang('name'));
        $objPHPExcel->getActiveSheet()->SetCellValue('B1', lang('type'));
        $objPHPExcel->getActiveSheet()->SetCellValue('C1', lang('required'));
        $objPHPExcel->getActiveSheet()->SetCellValue('D1', lang('parent'));
        $objPHPExcel->getActiveSheet()->SetCellValue('E1', lang('description'));

        // set Row
        $rowCount = 2;
        foreach ($result as $element) {
            $objPHPExcel->getActiveSheet()->SetCellValue('A' . $rowCount, $element['name']);
            $objPHPExcel->getActiveSheet()->SetCellValue('B' . $rowCount, $element['input_type']);
            $required = 'No';
            if ($element['required'] == "1") {
                $required = 'Yes';
            }
            $parentName = "";
            if ($element['parent_id'] != '') {
                $parentDtls = $this->UtilityModel->getRequiredData('S', $this->db_ext . 'custom_fields', '*', array('field_id' => $element['parent_id'], 'vendor_id' => $this->session->userdata('vendor_id')));
                if (!empty($parentDtls)) {
                    $parentName = $parentDtls['name'];
                }
            }
            $objPHPExcel->getActiveSheet()->SetCellValue('C' . $rowCount, $required);
            $objPHPExcel->getActiveSheet()->SetCellValue('D' . $rowCount, $parentName);
            $objPHPExcel->getActiveSheet()->SetCellValue('E' . $rowCount, $element['description']);
            $rowCount++;
        }
        $objWriter = new PHPExcel_Writer_Excel2007($objPHPExcel);
        $uploadPath = "./assets/uploads/custom_fields";
        $objWriter->save($uploadPath . $fileName);
        // download file
        header("Content-Type: application/vnd.ms-excel");
        redirect(base_url($uploadPath . $fileName));
    }

    public function existingTagId() {

        $this->load->library('excel');

        // create file name
        $fileName = '-' . time() . '.xlsx';
        // load excel library
        $this->load->library('excel');
        $result = $this->UtilityModel->getRequiredData('M', $this->db_ext . 'asset', '*', array('is_deleted' => '0', 'vendor_id' => $this->session->userdata('vendor_id')));


        $objPHPExcel = new PHPExcel();
        $objPHPExcel->setActiveSheetIndex(0);
        // set Header
        $objPHPExcel->getActiveSheet()->SetCellValue('A1', lang('tag_id'));
        $objPHPExcel->getActiveSheet()->SetCellValue('B1', lang('name'));


        // set Row
        $rowCount = 2;
        foreach ($result as $element) {
            $objPHPExcel->getActiveSheet()->SetCellValue('A' . $rowCount, $element['tag_id']);
            $objPHPExcel->getActiveSheet()->SetCellValue('B' . $rowCount, $element['name']);

            $rowCount++;
        }
        $objWriter = new PHPExcel_Writer_Excel2007($objPHPExcel);
        $uploadPath = "./assets/uploads/tag_list";
        $objWriter->save($uploadPath . $fileName);
        // download file
        header("Content-Type: application/vnd.ms-excel");
        redirect(base_url($uploadPath . $fileName));
    }

    public function users() {

        $this->load->library('excel');

        // create file name
        $fileName = '-' . time() . '.xlsx';
        // load excel library
        $this->load->library('excel');
        $result = $this->UtilityModel->getRequiredData('M', $this->db_ext . 'user', '*', array('is_deleted' => '0', 'user_name !=' => 'superadmin', 'vendor_id' => $this->session->userdata('vendor_id')));


        $objPHPExcel = new PHPExcel();
        $objPHPExcel->setActiveSheetIndex(0);
        // set Header
        $objPHPExcel->getActiveSheet()->SetCellValue('A1', lang('user_name'));
        $objPHPExcel->getActiveSheet()->SetCellValue('B1', lang('name'));


        // set Row
        $rowCount = 2;
        foreach ($result as $element) {
            $objPHPExcel->getActiveSheet()->SetCellValue('A' . $rowCount, $element['user_name']);
            $objPHPExcel->getActiveSheet()->SetCellValue('B' . $rowCount, $element['name']);

            $rowCount++;
        }
        $objWriter = new PHPExcel_Writer_Excel2007($objPHPExcel);
        $uploadPath = "./assets/uploads/user_list";
        $objWriter->save($uploadPath . $fileName);
        // download file
        header("Content-Type: application/vnd.ms-excel");
        redirect(base_url($uploadPath . $fileName));
    }

    public function suppliers() {

        $this->load->library('excel');

        // create file name
        $fileName = '.xlsx';
        // load excel library
        $this->load->library('excel');
        $result = $this->UtilityModel->getRequiredData('M', $this->db_ext . 'supplier', '*', array('is_deleted' => '0', 'status' => '1', 'vendor_id' => $this->session->userdata('vendor_id')));


        $objPHPExcel = new PHPExcel();
        $objPHPExcel->setActiveSheetIndex(0);
        // set Header

        $objPHPExcel->getActiveSheet()->SetCellValue('A1', lang('name'));


        // set Row
        $rowCount = 2;
        foreach ($result as $element) {

            $objPHPExcel->getActiveSheet()->SetCellValue('A' . $rowCount, $element['name']);

            $rowCount++;
        }
        $objWriter = new PHPExcel_Writer_Excel2007($objPHPExcel);
        $uploadPath = "./assets/uploads/suppliers";
        $objWriter->save($uploadPath . $fileName);
        // download file
        header("Content-Type: application/vnd.ms-excel");
        redirect(base_url($uploadPath . $fileName));
    }

    public function manufacturer() {



        // create file name
        $fileName = '.xlsx';
        // load excel library
        $this->load->library('excel');
        $result = $this->UtilityModel->getRequiredData('M', $this->db_ext . 'manufacturer', '*', array('is_deleted' => '0', 'status' => '1', 'vendor_id' => $this->session->userdata('vendor_id')));


        $objPHPExcel = new PHPExcel();
        $objPHPExcel->setActiveSheetIndex(0);
        // set Header

        $objPHPExcel->getActiveSheet()->SetCellValue('A1', lang('name'));


        // set Row
        $rowCount = 2;
        foreach ($result as $element) {

            $objPHPExcel->getActiveSheet()->SetCellValue('A' . $rowCount, $element['name']);

            $rowCount++;
        }
        $objWriter = new PHPExcel_Writer_Excel2007($objPHPExcel);
        $uploadPath = "./assets/uploads/manufacturer";
        $objWriter->save($uploadPath . $fileName);
        // download file
        header("Content-Type: application/vnd.ms-excel");
        redirect(base_url($uploadPath . $fileName));
    }

    public function status() {



        // create file name
        $fileName = '.xlsx';
        // load excel library
        $this->load->library('excel');
        $result = $this->UtilityModel->getRequiredData('M', $this->db_ext . 'status', '*', array('is_deleted' => '0', 'status' => '1', 'vendor_id' => $this->session->userdata('vendor_id')));


        $objPHPExcel = new PHPExcel();
        $objPHPExcel->setActiveSheetIndex(0);
        // set Header

        $objPHPExcel->getActiveSheet()->SetCellValue('A1', lang('name'));


        // set Row
        $rowCount = 2;
        foreach ($result as $element) {

            $objPHPExcel->getActiveSheet()->SetCellValue('A' . $rowCount, $element['name']);

            $rowCount++;
        }
        $objWriter = new PHPExcel_Writer_Excel2007($objPHPExcel);
        $uploadPath = "./assets/uploads/status";
        $objWriter->save($uploadPath . $fileName);
        // download file
        header("Content-Type: application/vnd.ms-excel");
        redirect(base_url($uploadPath . $fileName));
    }

    public function department() {



        // create file name
        $fileName = '.xlsx';
        // load excel library
        $this->load->library('excel');
        $result = $this->UtilityModel->getRequiredData('M', $this->db_ext . 'department', '*', array('is_deleted' => '0', 'status' => '1', 'vendor_id' => $this->session->userdata('vendor_id')));


        $objPHPExcel = new PHPExcel();
        $objPHPExcel->setActiveSheetIndex(0);
        // set Header

        $objPHPExcel->getActiveSheet()->SetCellValue('A1', lang('name'));


        // set Row
        $rowCount = 2;
        foreach ($result as $element) {

            $objPHPExcel->getActiveSheet()->SetCellValue('A' . $rowCount, $element['name']);

            $rowCount++;
        }
        $objWriter = new PHPExcel_Writer_Excel2007($objPHPExcel);
        $uploadPath = "./assets/uploads/department";
        $objWriter->save($uploadPath . $fileName);
        // download file
        header("Content-Type: application/vnd.ms-excel");
        redirect(base_url($uploadPath . $fileName));
    }

    public function company() {



        // create file name
        $fileName = '.xlsx';
        // load excel library
        $this->load->library('excel');
        $companyList = $this->session->userdata('company');


        if (empty($companyList)) {
            $result = array();
        } else {
            $result = $this->UtilityModel->getRequiredData('M', $this->db_ext . 'company', 'company_id,name', array('is_deleted' => '0'), 'name', '', '', '', 'company_id', $companyList);
        }

        $objPHPExcel = new PHPExcel();
        $objPHPExcel->setActiveSheetIndex(0);
        // set Header

        $objPHPExcel->getActiveSheet()->SetCellValue('A1', lang('name'));


        // set Row
        $rowCount = 2;
        foreach ($result as $element) {

            $objPHPExcel->getActiveSheet()->SetCellValue('A' . $rowCount, $element['name']);

            $rowCount++;
        }
        $objWriter = new PHPExcel_Writer_Excel2007($objPHPExcel);
        $uploadPath = "./assets/uploads/company";
        $objWriter->save($uploadPath . $fileName);
        // download file
        header("Content-Type: application/vnd.ms-excel");
        redirect(base_url($uploadPath . $fileName));
    }

    public function category() {



        // create file name
        $fileName = '.xlsx';
        // load excel library
        $this->load->library('excel');
        $result = $this->UtilityModel->getRequiredData('M', $this->db_ext . 'asset_category', '*', array('is_deleted' => '0', 'status' => '1', 'vendor_id' => $this->session->userdata('vendor_id')));


        $objPHPExcel = new PHPExcel();
        $objPHPExcel->setActiveSheetIndex(0);
        // set Header

        $objPHPExcel->getActiveSheet()->SetCellValue('A1', lang('name'));



        // set Row
        $rowCount = 2;
        foreach ($result as $element) {

            $objPHPExcel->getActiveSheet()->SetCellValue('A' . $rowCount, $element['name']);

            $rowCount++;
        }
        $objWriter = new PHPExcel_Writer_Excel2007($objPHPExcel);
        $uploadPath = "./assets/uploads/category";
        $objWriter->save($uploadPath . $fileName);
        // download file
        header("Content-Type: application/vnd.ms-excel");
        redirect(base_url($uploadPath . $fileName));
    }

    public function depreciation() {



        // create file name
        $fileName = '.xlsx';
        // load excel library
        $this->load->library('excel');
        $result = array();
        $depreciation_list = $this->UtilityModel->getRequiredData('S', $this->db_ext . 'vendor_config', 'enable_depression,depression_type', array('vendor_id' => $this->session->userdata('vendor_id')));
        if ($depreciation_list['enable_depression'] == '1') {
            $mainDesp = explode(',', $depreciation_list['depression_type']);
            $mains = array();
            foreach ($mainDesp as $desp) {
                $depreciation_detail = $this->UtilityModel->getRequiredData('S', $this->db_ext . 'depression_type', 'code,name', array('code' => $desp));
                $result[] = array('name' => $depreciation_detail['name'], 'value' => $depreciation_detail['code']);
            }
            $this->data['depreciation_option'] = $this->generals_func->select_options($mains, 'value', 'name');
            $this->data['enable_depretiation'] = true;
        }


        $objPHPExcel = new PHPExcel();
        $objPHPExcel->setActiveSheetIndex(0);
        // set Header
        $objPHPExcel->getActiveSheet()->SetCellValue('A1', lang('code'));
        $objPHPExcel->getActiveSheet()->SetCellValue('B1', lang('name'));



        // set Row
        $rowCount = 2;
        foreach ($result as $element) {
            $objPHPExcel->getActiveSheet()->SetCellValue('A' . $rowCount, $element['value']);
            $objPHPExcel->getActiveSheet()->SetCellValue('B' . $rowCount, $element['name']);

            $rowCount++;
        }
        $objWriter = new PHPExcel_Writer_Excel2007($objPHPExcel);
        $uploadPath = "./assets/uploads/depreciation";
        $objWriter->save($uploadPath . $fileName);
        // download file
        header("Content-Type: application/vnd.ms-excel");
        redirect(base_url($uploadPath . $fileName));
    }

}
