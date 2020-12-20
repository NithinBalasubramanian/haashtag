<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Generals_func {

//Date Functions
    public function today($format) {

        switch ($format) {
            case 'D' : return date('Y-m-d');
                break;
            case 'T' : return date('H:i:s');
                break;
            case 'DT' : return date('Y-m-d H:i:s');
                break;
        }
    }

    public function dateDb($dt) {
        $dt = date('Y-m-d', strtotime($dt));
        return $dt;
    }

    public function dateDMY($dt) {
        $dt = $dt;
        $date1 = substr($dt, 8, 2);
        $date1;
        $mounth1 = substr($dt, 5, 2);
        $mounth1;
        $year1 = substr($dt, 0, 4);
        $year1;
        $dt = $date1 . "-" . $mounth1 . "-" . $year1;
        if ($dt == "--") {
            $dt1 = "";
        } else {
            $dt1 = $dt;
        }
        return $dt1;
    }
	  function set_field($field, $key) {

        if (array_key_exists($key, $field)) {

            return $field[$key];

        }

        return '';

    }

    function URL_exists($url) {
        $headers = get_headers($url);
        return stripos($headers[0], "200 OK") ? true : false;
    }
                function format_csv_date($date) {
        //Input Format m/d/y

        $dt = str_replace('/', '-', $date);
        $dt = explode('-', $dt);
        if (count($dt) == 3) {
            return sprintf("%04s", $dt[2]) . '-' . sprintf("%02s", $dt[0]) . '-' . sprintf("%02s", $dt[1]);
        }
    }

    function format_csv_time($time) {
        $time = sprintf("%04s", $time);
        return substr($time, 0, 2) . ':' . substr($time, 2, 2);
    }

    public function add_date($givendate, $day = 0, $mth = 0, $yr = 0) {
        $cd = strtotime($givendate);
        $newdate = date('Y-m-d h:i:s', mktime(date('h', $cd), date('i', $cd), date('s', $cd), date('m', $cd) + $mth, date('d', $cd) + $day, date('Y', $cd) + $yr));
        return $newdate;
    }
	function get_query_string($string)

    {

        $query = '?';

        foreach($string as $key=> $str)

        {

          $query.='&'.$key.'='.$str;

        }

        return $query;



    }

   //Pagination
    public function init_pagination($base_url, $total_rows, $uri_segment = 3, $query_string = false) {
        $ci = & get_instance();
        $config["base_url"] = base_url() . $base_url;
        $config["total_rows"] = $total_rows;
        $config["per_page"] = 10;
        if ($query_string == true)
            $config['page_query_string'] = TRUE;
        $config["uri_segment"] = $uri_segment;
        $config['next_link'] = 'Next &rsaquo;';
        $config['prev_link'] = '&lsaquo; Prev';
        $config['last_link'] = 'Last &rsaquo;&rsaquo;';
        $config['first_link'] = '&lsaquo;&lsaquo; First';
        $config['first_tag_open'] = $config['last_tag_open'] = $config['next_tag_open'] = $config['prev_tag_open'] = $config['num_tag_open'] = '<li class="page-item">';
        $config['first_tag_close'] = $config['last_tag_close'] = $config['next_tag_close'] = $config['prev_tag_close'] = $config['num_tag_close'] = '</li>';

        $config['cur_tag_open'] = "<li class='active page-item'><span><b class='page-link'>";
        $config['cur_tag_close'] = "</b></span></li>";

        $ci->pagination->initialize($config);
        return $config;
    }

    ///Alert
    public function show_alert($type, $message) {
        switch ($type) {
            case 'suc' : return "<div class='alert alert-success custom-alert'>
										<div class='uk-notify-message uk-notify-message-success'>
									  	   " . $message . "<div></div></div></div>";
                break;
            case 'err' : return "<div class='alert alert-danger custom-alert'>
										<div></div><div class='uk-notify-message uk-notify-message-danger'>
										  " . $message . "</div></div>";
                break;
        }
    }

    //Other Functions
    public function select_options($options, $field1, $field2, $type = 'S') {
        //$opt_array  = array('' =>'Select');
        $opt_array = array();
        if ($type == 'S')
            $opt_array = array('' => 'Select');
        foreach ($options as $value) {
            $opt_array[$value[$field1]] = $value[$field2];
        }
        return $opt_array;
    }

    public function getThumbImg($image_name) {
        return str_replace('.', '_thumb.', $image_name);
    }

    public function fileDelete($filepath, $filename) {
        if (file_exists($filepath . $filename) && $filename != "" && $filename != "n/a") {
            unlink($filepath . $filename);
        }
        return;
    }

    public function salt_passsword($password) {
        $password = $password;
        $password .= "tagntrackR6Rdigibook";
        $salt = sha1(md5($password));
        $password = md5($password . $salt);
        return $password;
    }

    public function array_multi_search($id, $array, $search_field) {
        foreach ($array as $key => $val) {
            if ($val[$search_field] === $id) {
                return $key;
            }
        }
        return false;
    }

    function rev_substr($string, $val) {
        return substr($string, 0, strlen($string) - $val);
    }
    function get_filter_argument()
    {
        $CI = & get_instance();
        $args = '';
        $param = $CI->input->get();
        foreach($param as $key=>$value)
        {

            if($value!='' && $value!='0')
            {
               $args .=  ($args=='') ? '?' :'&';
                $args .= $key.'='.$value;
            }

        }
        return $args;
    }
    function writeLog($data) {
        $fileName = date("Y-m-d") . ".txt";
        $fp = fopen(dirname($_SERVER["SCRIPT_FILENAME"]) . "/logs/" . $fileName, 'a+');
        $data = date("Y-m-d H:i:s") . " - " . $data;
        fwrite($fp, $data);
        fwrite($fp, "\n");
        fclose($fp);
    }

	 /**
        This function will remove the unwanted spaces which are feeded in one after the other.
        For exmple consider the String "This is     Testing" there are 3 unwanted spaces. This function will return you "This is Testing" as a result.

        @params: $sentence or word of data type String
        @return: String value with excluding extra spaces among the words.
    **/
    function excludeExtraSpaces($sentence){
        $filtered_sentence = '';
        $preValueIsNotSpace = true;
        $sentence = trim($sentence);
        for($i = 0; $i < strlen($sentence); $i++){
            if($sentence[$i] != ' ' || $preValueIsNotSpace){
                $filtered_sentence .= $sentence[$i];
                $preValueIsNotSpace = true;
            }

            if($sentence[$i] == ' '){
                $preValueIsNotSpace = false;
            }
        }

        return $filtered_sentence;

    }

	function random_string($length = 8) {
    // start with a blank password
    $password = "";

    $possible = "012346789abcdfghjkmnpqrtvwxyzABCDFGHJKLMNPQRTVWXYZ";


    $maxlength = strlen($possible);
    if ($length > $maxlength) {
        $length = $maxlength;
    }
    $i = 0;

    // add random characters to $password until $length is reached
    while ($i < $length) {

        // pick a random character from the possible ones
        $char = substr($possible, mt_rand(0, $maxlength - 1), 1);

        // have we already used this character in $password?
        if (!strstr($password, $char)) {
            // no, so it's OK to add it onto the end of whatever we've already got...
            $password .= $char;
            // ... and increase the counter by one
            $i++;
        }
    }

    // done!
    return $password;
}


}
