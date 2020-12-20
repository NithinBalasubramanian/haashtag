<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Datatable extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->library('datatables');
        $this->load->library('generals_func');
        $this->load->library('form_validation');
        $this->form_validation->set_error_delimiters('<div class="error">', '</div>');

        if ($this->session->userdata('current_lang') == "") {
            $defaultLang = $this->UtilityModel->getRequiredData('S', $this->db_ext . "language", '*', array('status' => '1', 'is_default' => '1'));
            if (!empty($defaultLang)) {
                $this->session->set_userdata(array(
                    'current_lang' => $defaultLang['code'],
                    'current_lang_name' => $defaultLang['display_name'],
                    'current_lang_icon' => $defaultLang['icon'],
                ));
            }
        }
        $this->lang->load($this->session->userdata('current_lang') . '_lang', $this->session->userdata('current_lang'));
        $this->db_ext = $this->config->item('db_priffix');
    }

    public function user_group() {
        $this->datatables->select('1 as sl_no,group_id,name,status,CASE WHEN status="0" THEN "In Active" ELSE "Active" END AS main_status', false)
                ->unset_column('status')
                ->unset_column('group_id')
                ->unset_column('main_status')
                ->add_column('Actions', '<div style="    width: 186px; text-align:center"><a  href="' . base_url("setting/manageUserGroup/$1") . '"  class="btn btn-warning tbl-block" ><i class="fa fa-edit"></i></a> '
                        . ' <a  href="javascript:;" title="$3" class="btn btn-success status tbl-block" main-attr="$1" status-attr="$2"><i class="fa fa-check"></i></a></div> '
                        . '', 'group_id,status,main_status')
                ->where('vendor_id', $this->session->userdata('vendor_id'))
                ->order_by('name ASC')
                ->from($this->db_ext . 'user_group');
        echo $this->datatables->generate();
    }
    
    public function report() {
        $this->datatables->select('1 as sl_no,url_title,name,status,CASE WHEN status="0" THEN "In Active" ELSE "Active" END AS main_status', false)
                ->unset_column('status')
                ->unset_column('url_title')
                ->unset_column('main_status')
                ->add_column('Actions', '<div style="    width: 186px; text-align:center"><a  href="javascript:;" main-attr="$1"  class="btn btn-warning edit-report tbl-block" ><i class="fa fa-edit"></i></a> '
                        . ' <a  href="javascript:;" title="$3" class="btn btn-success status tbl-block" main-attr="$1" status-attr="$2"><i class="fa fa-check"></i></a></div> '
                        . '', 'url_title,status,main_status')
                ->where('vendor_id', $this->session->userdata('vendor_id'))
                ->order_by('name ASC')
                ->from($this->db_ext . 'report');
        echo $this->datatables->generate();
    }

    public function location() {
        $this->datatables->select('1 as sl_no,location_id,name,address,status,CASE WHEN status="0" THEN "In Active" ELSE "Active" END AS main_status', false)
                ->unset_column('status')
                ->unset_column('location_id')
                ->unset_column('main_status')
                ->add_column('Actions', '<div style="    width: 186px; text-align:center"><a  href="javascript:;" main-attr="$1" warehouse-attr="' . $this->input->get('is_warehouse') . '"  class="btn btn-warning edit-warehouse tbl-block" ><i class="fa fa-edit"></i></a> '
                        . ' <a  href="javascript:;" title="$3" class="btn btn-success status tbl-block" main-attr="$1" status-attr="$2"><i class="fa fa-check"></i></a></div> '
                        . '', 'location_id,status,main_status')
                ->where('vendor_id', $this->session->userdata('vendor_id'));
        if ($this->input->get('is_warehouse') == '1') {
            $this->datatables->where('is_warehouse', '1');
        } else {
            $this->datatables->where('is_warehouse', '0');
        }
        $this->datatables->order_by('name ASC')
                ->from($this->db_ext . 'locations');
        echo $this->datatables->generate();
    }

    public function language() {
        $this->datatables->select('1 as sl_no,code,name,is_default,status,CASE WHEN status="0" THEN "In Active" ELSE "Active" END AS main_status', false)
                ->unset_column('status')
                ->unset_column('is_default')
                ->unset_column('main_status')
                ->add_column('Default', ''
                        . ' <a  href="javascript:;"  class="btn btn-success default tbl-block" main-attr="$1" status-attr="$2"><i class="fa fa-check"></i></a> '
                        . '', 'code,is_default')
                ->add_column('Actions', '<div style="    width: 186px; text-align:center"><a  href="' . base_url("language/translation/$1") . '"  class="btn btn-warning tbl-block" >' . lang('set_translation') . '</a> '
                        . ' <a  href="javascript:;" title="$3" class="btn btn-success status tbl-block" main-attr="$1" status-attr="$2"><i class="fa fa-check"></i></a></div> '
                        . '', 'code,status,main_status')
                ->order_by('name ASC')
                ->from($this->db_ext . 'language');
        echo $this->datatables->generate();
    }

    function customField() {
        $this->datatables->select('1 as sl_no,field_id,option_length,name,input_type,status,CASE WHEN status="0" THEN "In Active" ELSE "Active" END AS main_status', false)
                ->unset_column('status')
                ->unset_column('option_length')
                ->unset_column('main_status')
                ->unset_column('field_id')
                ->where('vendor_id', $this->session->userdata('vendor_id'))
                ->add_column('Options', ''
                        . ' <a  href="javascript:;"  class="btn btn-primary options-view tbl-block" main-attr="$1" opt-attr="$2"><i class="fa fa-eye"></i></a> '
                        . '', 'field_id,option_length')
                ->add_column('Actions', '<div style="    width: 186px; text-align:center"><a  href="' . base_url("customField/manage/" . $this->input->get('type') . "?edit=$1") . '"  class="btn btn-warning tbl-block" ><i class="fa fa-edit"></i></a> '
                        . ' <a  href="javascript:;" title="$3" class="btn btn-success status tbl-block" main-attr="$1" status-attr="$2"><i class="fa fa-check"></i></a></div> '
                        . '', 'field_id,status,main_status');
        if ($this->input->get('type') == 'user') {
            $this->datatables->where('section', 'U');
        } else if ($this->input->get('type') == 'assets') {
            $this->datatables->where('section', 'A');
        } else if ($this->input->get('type') == 'licence') {
            $this->datatables->where('section', 'L');
        }

        $this->datatables->order_by('name ASC')
                ->from($this->db_ext . 'custom_fields');
        echo $this->datatables->generate();
    }

    public function company() {
        $this->datatables->select('1 as sl_no,company_id,name,address,logo,status,CASE WHEN status="0" THEN "In Active" ELSE "Active" END AS main_status', false)
                ->unset_column('status')
                ->unset_column('logo')
                ->unset_column('main_status')
                ->unset_column('company_id')
                ->where('vendor_id', $this->session->userdata('vendor_id'))
                ->add_column('Default', ''
                        . '<img style="    width: 125px;" src="' . base_url('assets/uploads/company/$1') . '">'
                        . '', 'logo')
                ->add_column('Actions', '<div style="    width: 186px; text-align:center"><a  href="javascript:;" main-attr="$1"   class="btn btn-warning edit-comapy tbl-block" ><i class="fa fa-edit"></i></a> '
                        . ' <a  href="javascript:;" title="$3" class="btn btn-success status tbl-block" main-attr="$1" status-attr="$2"><i class="fa fa-check"></i></a></div> '
                        . '', 'company_id,status,main_status')
                ->order_by('name ASC')
                ->from($this->db_ext . 'company');
        echo $this->datatables->generate();
    }

    public function department() {
        $this->datatables->select('1 as sl_no,department_id,name,status,CASE WHEN status="0" THEN "In Active" ELSE "Active" END AS main_status', false)
                ->unset_column('status')
                ->unset_column('logo')
                ->unset_column('main_status')
                ->unset_column('department_id')
                ->where('vendor_id', $this->session->userdata('vendor_id'))
                ->add_column('Actions', '<div style="    width: 186px; text-align:center"><a  href="javascript:;" main-attr="$1"   class="btn btn-warning edit-departmet tbl-block" ><i class="fa fa-edit"></i></a> '
                        . ' <a  href="javascript:;" title="$3" class="btn btn-success status tbl-block" main-attr="$1" status-attr="$2"><i class="fa fa-check"></i></a></div> '
                        . '', 'department_id,status,main_status')
                ->order_by('name ASC')
                ->from($this->db_ext . 'department');
        echo $this->datatables->generate();
    }

    public function supplier() {
        $this->datatables->select('1 as sl_no,supplier_id,name,status,CASE WHEN status="0" THEN "In Active" ELSE "Active" END AS main_status', false)
                ->unset_column('status')
                ->unset_column('main_status')
                ->unset_column('supplier_id')
                ->where('vendor_id', $this->session->userdata('vendor_id'))
                ->add_column('Actions', '<div style="    width: 186px; text-align:center"><a  href="javascript:;" main-attr="$1"   class="btn btn-warning edit-supplier tbl-block" ><i class="fa fa-edit"></i></a> '
                        . ' <a  href="javascript:;" title="$3" class="btn btn-success status tbl-block" main-attr="$1" status-attr="$2"><i class="fa fa-check"></i></a></div> '
                        . '', 'supplier_id,status,main_status')
                ->order_by('name ASC')
                ->from($this->db_ext . 'supplier');
        echo $this->datatables->generate();
    }

    function auditCategory() {
        $this->datatables->select('1 as sl_no,cat_id,name,status,CASE WHEN status="0" THEN "In Active" ELSE "Active" END AS main_status', false)
                ->unset_column('status')
                ->unset_column('main_status')
                ->unset_column('cat_id')
                ->where(array('vendor_id' => $this->session->userdata('vendor_id'), 'is_deleted' => '0'));
        $edit = $status = $delete = "";
        if ($this->checkaccess->check(array('edit_audit_category'))) {
            $edit = '<a  href="javascript:;" main-attr="$1"   class="btn btn-warning edit-category tbl-block" ><i class="fa fa-edit"></i></a>';
        }
        if ($this->checkaccess->check(array('status_audit_category'))) {
            $status = '<a  href="javascript:;" title="$3" class="btn btn-success status tbl-block" main-attr="$1" status-attr="$2"><i class="fa fa-check"></i></a>';
        }
        if ($this->checkaccess->check(array('remove_audit_category'))) {
            $delete = '<a  href="javascript:;" main-attr="$1"   class="btn btn-danger remove-category tbl-block" ><i class="fa fa-trash"></i></a>';
        }

        $this->datatables->add_column('Actions', '<div style="    width: 256px; text-align:center"> ' . $edit . $status . $delete . ' </div> ', 'cat_id,status,main_status')
                ->order_by('name ASC')
                ->from($this->db_ext . 'audit_category');
        echo $this->datatables->generate();
    }

    function auditChecklist() {
        $this->datatables->select('1 as sl_no,checklist_id,b.name as cat_name,a.name as main_name,a.status,CASE WHEN a.status="0" THEN "In Active" ELSE "Active" END AS main_status', false)
                ->join($this->db_ext . 'audit_category b', 'b.cat_id = a.cat_id')
                ->unset_column('a.status')
                ->unset_column('main_status')
                ->unset_column('checklist_id')
                ->where(array('a.vendor_id' => $this->session->userdata('vendor_id'), 'a.is_deleted' => '0'));
        $edit = $status = $delete = "";
        if ($this->checkaccess->check(array('edit_audit_checklist'))) {
            $edit = '<a  href="javascript:;" main-attr="$1"   class="btn btn-warning edit-checklist tbl-block" ><i class="fa fa-edit"></i></a>';
        }
        if ($this->checkaccess->check(array('status_audit_checklist'))) {
            $status = '<a  href="javascript:;" title="$3" class="btn btn-success status tbl-block" main-attr="$1" status-attr="$2"><i class="fa fa-check"></i></a>';
        }
        if ($this->checkaccess->check(array('remove_audit_checklist'))) {
            $delete = '<a  href="javascript:;" main-attr="$1"   class="btn btn-danger remove-checklist tbl-block" ><i class="fa fa-trash"></i></a>';
        }
        $this->datatables->add_column('addCheck', '<a  href="javascript:;" main-attr="$1"   class="btn btn-dark add-checklist tbl-block" >' . lang('add_checklist') . '</a>', 'checklist_id')
        ;
        $this->datatables->add_column('viewCheck', '<a  href="javascript:;" main-attr="$1"   class="btn btn-info view-checklist tbl-block" >' . lang('view_checklist') . '</a>', 'checklist_id')
        ;

        $this->datatables->add_column('Actions', '<div style="    width: 256px; text-align:center"> ' . $edit . $status . $delete . ' </div> ', 'checklist_id,a.status,main_status')
                ->order_by('a.name ASC')
                ->from($this->db_ext . 'audit_checklist a');
        echo $this->datatables->generate();
    }

    public function model() {
        $this->datatables->select('1 as sl_no,model_id,name,status,CASE WHEN status="0" THEN "In Active" ELSE "Active" END AS main_status', false)
                ->unset_column('status')
                ->unset_column('main_status')
                ->unset_column('model_id')
                ->where('vendor_id', $this->session->userdata('vendor_id'))
                ->add_column('Actions', '<div style="    width: 186px; text-align:center"><a  href="javascript:;" main-attr="$1"   class="btn btn-warning edit-model tbl-block" ><i class="fa fa-edit"></i></a> '
                        . ' <a  href="javascript:;" title="$3" class="btn btn-success status tbl-block" main-attr="$1" status-attr="$2"><i class="fa fa-check"></i></a></div> '
                        . '', 'model_id,status,main_status')
                ->order_by('name ASC')
                ->from($this->db_ext . 'model');
        echo $this->datatables->generate();
    }

    public function insurance() {
        $this->datatables->select('1 as sl_no,insurance_id,name,contact_no,email_id,status,CASE WHEN status="0" THEN "In Active" ELSE "Active" END AS main_status', false)
                ->unset_column('status')
                ->unset_column('main_status')
                ->unset_column('insurance_id')
                ->where('vendor_id', $this->session->userdata('vendor_id'))
                ->add_column('Actions', '<div style="    width: 186px; text-align:center"><a  href="javascript:;" main-attr="$1"   class="btn btn-warning edit-insurance tbl-block" ><i class="fa fa-edit"></i></a> '
                        . ' <a  href="javascript:;" title="$3" class="btn btn-success status tbl-block" main-attr="$1" status-attr="$2"><i class="fa fa-check"></i></a></div> '
                        . '', 'insurance_id,status,main_status')
                ->order_by('name ASC')
                ->from($this->db_ext . 'insurance');
        echo $this->datatables->generate();
    }

    public function status() {
        $this->datatables->select('1 as sl_no,status_id,name,status,CASE WHEN status="0" THEN "In Active" ELSE "Active" END AS main_status', false)
                ->unset_column('status')
                ->unset_column('main_status')
                ->unset_column('status_id')
                ->where('vendor_id', $this->session->userdata('vendor_id'))
                ->add_column('Actions', '<div style="    width: 186px; text-align:center"><a  href="javascript:;" main-attr="$1"   class="btn btn-warning edit-status tbl-block" ><i class="fa fa-edit"></i></a> '
                        . ' <a  href="javascript:;" title="$3" class="btn btn-success status tbl-block" main-attr="$1" status-attr="$2"><i class="fa fa-check"></i></a></div> '
                        . '', 'status_id,status,main_status')
                ->order_by('name ASC')
                ->from($this->db_ext . 'status');
        echo $this->datatables->generate();
    }

    public function manufacturer() {
        $this->datatables->select('1 as sl_no,manufacturer_id,name,status,CASE WHEN status="0" THEN "In Active" ELSE "Active" END AS main_status', false)
                ->unset_column('status')
                ->unset_column('main_status')
                ->unset_column('manufacturer_id')
                ->where('vendor_id', $this->session->userdata('vendor_id'))
                ->add_column('Actions', '<div style="    width: 186px; text-align:center"><a  href="javascript:;" main-attr="$1"   class="btn btn-warning edit-manufacturer tbl-block" ><i class="fa fa-edit"></i></a> '
                        . ' <a  href="javascript:;" title="$3" class="btn btn-success status tbl-block" main-attr="$1" status-attr="$2"><i class="fa fa-check"></i></a></div> '
                        . '', 'manufacturer_id,status,main_status')
                ->order_by('name ASC')
                ->from($this->db_ext . 'manufacturer');
        echo $this->datatables->generate();
    }

    public function translation($language) {
        $this->datatables->select('1 as sl_no,a.keyword,a.title,b.detail', false)
                ->unset_column('b.detail')
                ->join($this->db_ext . "language_detail b", "b.conversion_type = a.keyword AND b.language = '" . $language . "'", "left")
                ->add_column('Default', '<input type="text" value="$2" class="form_control" id="lang_$1_' . $language . '">'
                        . '<a keyword-attr="$1" lang-attr="' . $language . '" style="margin-left: 5px" class="btn btn-primary savelang" href="javascript:;" > <i class="fa fa-save"></i> ' . lang('save') . '</a>'
                        . '', 'a.keyword,b.detail')
                ->order_by('a.keyword ASC')
                ->from($this->db_ext . 'lang_conversion a');
        echo $this->datatables->generate();
    }

    public function asset_category() {
        $this->datatables->select('1 as sl_no,cat_id,name,status,CASE WHEN status="0" THEN "In Active" ELSE "Active" END AS main_status', false)
                ->unset_column('status')
                ->unset_column('cat_id')
                ->unset_column('main_status');

        $status = "";
        $edit = "";
        if ($this->checkaccess->check(array('edit_asset_category'))) {
            $edit = '<a  href="javascript:;" main-attr="$1"   class="btn btn-warning edit-asset-category tbl-block" ><i class="fa fa-edit"></i></a>';
        }
        if ($this->checkaccess->check(array('status_asset_category'))) {
            $status = ' <a  href="javascript:;" title="$3" class="btn btn-success status tbl-block" main-attr="$1" status-attr="$2"><i class="fa fa-check"></i></a>';
        }

        $this->datatables->add_column('Properties', '<div style="    width: 186px; text-align:center"><a href="javascript:;" main-attr="$1"  class="btn btn-dark view-propers"><i class="fa fa-eye"></i></a></div> ', 'cat_id,status,main_status');

        $this->datatables->add_column('Actions', '<div style="    width: 186px; text-align:center">
' . $edit . $status . '</div> ', 'cat_id,status,main_status')
                ->where('vendor_id', $this->session->userdata('vendor_id'))
                ->order_by('cat_id DESC')
                ->from($this->db_ext . 'asset_category');
        echo $this->datatables->generate();
    }

    public function licience_category() {
        $this->datatables->select('1 as sl_no,cat_id,name,status,CASE WHEN status="0" THEN "In Active" ELSE "Active" END AS main_status', false)
                ->unset_column('status')
                ->unset_column('cat_id')
                ->unset_column('main_status');

        $status = "";
        $edit = "";
        if ($this->checkaccess->check(array('edit_asset_licence_category'))) {
            $edit = '<a  href="javascript:;" main-attr="$1"   class="btn btn-warning edit-asset-category tbl-block" ><i class="fa fa-edit"></i></a>';
        }
        if ($this->checkaccess->check(array('status_asset_licence_category'))) {
            $status = ' <a  href="javascript:;" title="$3" class="btn btn-success status tbl-block" main-attr="$1" status-attr="$2"><i class="fa fa-check"></i></a>';
        }

        $this->datatables->add_column('Properties', '<div style="    width: 186px; text-align:center"><a href="javascript:;" main-attr="$1"  class="btn btn-dark view-propers"><i class="fa fa-eye"></i></a></div> ', 'cat_id,status,main_status');

        $this->datatables->add_column('Actions', '<div style="    width: 186px; text-align:center">
' . $edit . $status . '</div> ', 'cat_id,status,main_status')
                ->where('vendor_id', $this->session->userdata('vendor_id'))
                ->order_by('cat_id DESC')
                ->from($this->db_ext . 'licience_category');
        echo $this->datatables->generate();
    }

    function auditSchedule() {
        $this->datatables->select('1 as sl_no,a.schedule_id,a.is_completed,c.name as audit_name,a.audit_code,d.name as user_name,e.start_date,e.end_date,a.is_deleted,CASE WHEN a.is_deleted="0" THEN "In Active" ELSE "Active" END AS main_status', false)
            
                ->join($this->db_ext . 'audit_checklist c', 'c.checklist_id = a.audit_checklist_id')
                ->join($this->db_ext . 'user d', 'd.user_id = a.user_id')
                ->join($this->db_ext . 'audit_schedule_dates e', 'e.schedule_id = a.schedule_id AND is_rescheduled = "0"')
                ->unset_column('a.is_deleted')
                ->unset_column('main_status')
                ->unset_column('a.schedule_id')
                ->unset_column('a.is_completed')
                ->where(array('a.vendor_id' => $this->session->userdata('vendor_id'),'main_type'=>$this->input->get_post('main_type')));
        
        $edit = $status = $delete = "";
        
       
            $delete = '<div complete-attr="$4"  main-attr="$2"><a  href="javascript:;" main-attr="$1"   class="btn btn-danger cancel-schedule tbl-block" ><i class="fa fa-ban"></i> Cancel</a></div>';
        
       
            $this->datatables->add_column('Assets', '<a  href="javascript:;" main-attr="$1"   class="btn btn-warning viewasset tbl-block" ><i class="fa fa-eye"></i> </a>', 'a.schedule_id')
        ;
            $this->datatables->add_column('Reshedule', '<div class="mkainzx" complete-attr="$3"  main-attr="$2"><a  href="javascript:;" main-attr="$1"   class="btn btn-dark reschedule tbl-block" ><i class="fa fa-clock"></i> ' . lang('reshedule') . '</a>', 'a.schedule_id,a.is_deleted,a.is_completed')
        ;
        

        $this->datatables->add_column('Actions', '<div  main-attr="$2" complete-attr="$4" class="mkain" style=" text-align:center"> ' . $edit . $status . $delete . ' </div> ', 'a.schedule_id,a.is_deleted,main_status,a.is_completed')
                ->order_by('a.schedule_id DESC')
                ->from($this->db_ext . 'audit_schedule a');
        echo $this->datatables->generate();
    }
    
    function myaudit() {
        $this->datatables->select('1 as sl_no,a.schedule_id,a.is_completed,c.name as audit_name,a.audit_code,d.name as user_name,e.start_date,e.end_date,a.is_deleted,CASE WHEN a.is_deleted="0" THEN "In Active" ELSE "Active" END AS main_status', false)
              
                ->join($this->db_ext . 'audit_checklist c', 'c.checklist_id = a.audit_checklist_id')
                ->join($this->db_ext . 'user d', 'd.user_id = a.user_id')
                ->join($this->db_ext . 'audit_schedule_dates e', 'e.schedule_id = a.schedule_id AND is_rescheduled = "0"')
                ->unset_column('a.is_deleted')
                ->unset_column('main_status')
                ->unset_column('a.schedule_id')
                ->unset_column('a.is_completed')
                ->where(array('a.user_id' => $this->session->userdata('user_id')))
                ->where(array('a.vendor_id' => $this->session->userdata('vendor_id'),'a.is_deleted'=>'0','main_type'=>$this->input->get_post('main_type')));
        $edit = $status = $delete = "";
        
        $this->datatables->add_column('Assets', '<a  href="javascript:;" main-attr="$1"   class="btn btn-warning viewasset tbl-block" ><i class="fa fa-eye"></i> </a>', 'a.schedule_id')
        ;
            $delete = '<div complete-attr="$4" id="mksa_$5" audit-attr="$5" main-attr="$2"><a target="_blank" href="'.base_url('audit/startAudit/$5').'" main-attr="$1"   class="btn btn-danger cancel-schedule tbl-block" ><i class="fa fa-left-arrow"></i> Start</a></div>';
        
       

        $this->datatables->add_column('Actions', '<div audit-attr="$5"  main-attr="$2" complete-attr="$4" class="mkain" style=" text-align:center"> ' . $edit . $status . $delete . ' </div> ', 'a.schedule_id,a.is_deleted,main_status,a.is_completed,a.audit_code')
                ->order_by('a.schedule_id DESC')
                ->from($this->db_ext . 'audit_schedule a');
        echo $this->datatables->generate();
    }
    

}
