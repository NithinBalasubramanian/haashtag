<?php
ini_set('memory_limit', '-1');
if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Request {

    private $URL = 'http://localhost:8081/LNT/HCIC/EHS/index.php/api/';

    function get_data($url, $auth_type = 1) {
        $url = $this->URL . $url;

        $CI = & get_instance();
        if ($auth_type == 1) {
            $CI->session->userdata('username');
            $auth = base64_encode($CI->session->userdata('username') . ':' . $CI->session->userdata('password'));
        } else {
            $CI->load->config('key');
            $credential = $CI->config->item('auth');
            $auth = base64_encode($credential['user'] . ':' . $credential['secret']);
        }
        $headers = array('Accept: application/json', 'Content-Type: application/json', 'Authorization: Basic ' . $auth);
        $ch = curl_init($url);
        curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "GET");
        //curl_setopt($ch, CURLOPT_POSTFIELDS, $data_string);
        curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
        $jsonObj = curl_exec($ch);
        curl_close($ch);
 
        // $this->writeLog('Request :' . $url);
        // $this->writeLog('Response:' . $jsonObj);
        if ($this->isJson($jsonObj) == 1 && $jsonObj != '' && $jsonObj != 'null') {
            //$dataArr = json_decode($jsonObj, true);
            return $jsonObj;
        }
        return false;
    }

    function post_data($url, $post, $auth_type = 1) {
        $url = $this->URL . $url;
        $CI = & get_instance();
        if ($auth_type == 1) {
            $CI->session->userdata('username');
            $auth = base64_encode($CI->session->userdata('username') . ':' . $CI->session->userdata('password'));
        } else {
            $CI->load->config('key');
            $credential = $CI->config->item('auth');
            $auth = base64_encode($credential['user'] . ':' . $credential['secret']);
        }
		
        $data_string = json_encode($post);
        $headers = array('Authorization: Basic ' . $auth);
        $ch = curl_init($url);
        curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "POST");
        curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($post));
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
        $jsonObj = curl_exec($ch);
	
        curl_close($ch);
        //$this->writeLog('Request :' . $url);
        //$this->writeLog('Post :' . $data_string);
        //$this->writeLog('Response:' . $jsonObj);
         
        if ($this->isJson($jsonObj) == 1 && $jsonObj != '' && $jsonObj != 'null') {
            //$dataArr = json_decode($jsonObj, true);
            //file_put_contents(rand(1000,9999).'.txt',$url.'---'.$jsonObj);
            return $jsonObj;
        }
        return false;
    }

    function get_server($url) {
        $CI = & get_instance();
        $CI->load->config('key');
        $credential = $CI->config->item('auth');
        $auth = base64_encode($credential['user'] . ':' . $credential['secret']);

        $headers = array('Accept: application/json', 'Content-Type: application/json', 'Authorization: Basic ' . $auth);
        $ch = curl_init($url);
        curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "GET");
        //curl_setopt($ch, CURLOPT_POSTFIELDS, $data_string);
        curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
        $jsonObj = curl_exec($ch);
        
        curl_close($ch);
//echo $jsonObj;
        // $this->writeLog('Request :' . $url);
        // $this->writeLog('Response:' . $jsonObj);
        if ($this->isJson($jsonObj) == 1 && $jsonObj != '' && $jsonObj != 'null') {
            //$dataArr = json_decode($jsonObj, true);
            return $jsonObj;
        }
        return false;
    }

    function post_redirect($url, $post, $auth_type = 1) {

        $CI = & get_instance();
        if ($auth_type == 1) {
            $CI->session->userdata('username');
            $auth = base64_encode($CI->session->userdata('username') . ':' . $CI->session->userdata('password'));
        } else {
            $CI->load->config('key');
            $credential = $CI->config->item('auth');
            $auth = base64_encode($credential['user'] . ':' . $credential['secret']);
        }
        $headers = array('Authorization: Basic ' . $auth);
        $curl = curl_init($url);
        curl_setopt($curl, CURLOPT_POSTFIELDS, http_build_query($post));
        curl_setopt($curl, CURLOPT_FOLLOWLOCATION, true);
        curl_setopt($curl, CURLOPT_CUSTOMREQUEST, "POST");
        curl_setopt($curl, CURLOPT_HTTPHEADER, $headers);
        curl_exec($curl);
    }

    function writeLog($data) {
        $fileName = date("Y-m-d") . ".txt";
        $fp = fopen(dirname($_SERVER["SCRIPT_FILENAME"]) . "/logs/" . $fileName, 'a+');
        $data = date("Y-m-d H:i:s") . " - " . $data;
        fwrite($fp, $data);
        fwrite($fp, "\n");
        fclose($fp);
    }

    function isJson($string) {
        json_decode($string);
        return (json_last_error() == JSON_ERROR_NONE);
    }

    function cleanJson($text) {
        $escapers = array("\\", "/", "\"", "\n", "\r", "\t", "\x08", "\x0c");
        $replacements = array("\\\\", "\\/", "\\\"", "\\n", "\\r", "\\t", "\\f", "\\b");
        $result = str_replace($escapers, $replacements, $text);
        return $result;
    }

}

?>