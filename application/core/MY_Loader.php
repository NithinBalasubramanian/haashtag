<?php

class MY_Loader extends CI_Loader {

    public function template($template_name, $data = array(), $return = false) {
        $this->CI = & get_instance();
$this->db_ext = $this->CI->config->item('db_priffix');
        $data['languageList']  = $this->CI->UtilityModel->getRequiredData('M',$this->db_ext."language",'*',array('status'=>'1'));
        
        $content = $this->view('includes/header', $data, true);
        $content .= $this->view($template_name, $data, true);
        $content .= $this->view('includes/footer', $data, true);



        if ($return) {
            return $content;
        } else {
            echo $content;
        }
    }

}
