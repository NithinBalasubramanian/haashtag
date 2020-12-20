<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Checkaccess {

    function check($checkpages = array()) {
    	$ci = & get_instance();
      	if($ci->session->userdata('username') == 'superadmin'){
      		return true;
      	}
        
		$mpages = $ci->session->userdata('accessPage');
		$ret = false;
		foreach($checkpages as $page){
			if(in_array($page,$mpages)){
				$ret = true;
				return $ret;
			}
		}
		return $ret;
		
    }
	
	function getpages($checkId){
		$ci = & get_instance();
		$db_ext = $ci->config->item('db_priffix');
		$paages = array(); 
		$mainList = $ci->UtilityModel->getRequiredData("M",$db_ext."user_group_category","*",array('parent_id'=>$checkId));
		$pages =  $ci->UtilityModel->getRequiredData("M",$db_ext."access_page","*",array('cat_id'=>$checkId));
		foreach($pages as $kpa){
			$paages[] = $kpa['page_code'];
		}
		foreach($mainList as $ma){
			$pages =  $ci->UtilityModel->getRequiredData("M",$db_ext."access_page","*",array('cat_id'=>$ma['cat_id']));
			foreach($pages as $kpa){
				$paages[] = $kpa['page_code'];
			}
			$mainList2 = $ci->UtilityModel->getRequiredData("M",$db_ext."user_group_category","*",array('parent_id'=>$ma['cat_id']));
			foreach($mainList2 as $m2a){
				$pages =  $ci->UtilityModel->getRequiredData("M",$db_ext."access_page","*",array('cat_id'=>$m2a['cat_id']));
				foreach($pages as $kpa){
					$paages[] = $kpa['page_code'];
				}
			}
		}
		
		return $paages;
	}

    

    

}

?>