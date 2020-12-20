<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Alerts {

    function send_mail($subject = '', $message = '', $touser,$to_id='', $cc = '', $bcc = '',$attachment="") {
      $ci = get_instance();
      $db_ext = $ci->config->item('db_priffix');
      $mailDetails = $ci->UtilityModel->getRequiredData('S',$db_ext."communication_config","*",array('type'=>'M','vendor_id'=>$ci->session->userdata('vendor_id')));

       $email_config = Array(
           'protocol'  => 'smtp',
           'smtp_host' => $mailDetails['host'],
           'smtp_port' => $mailDetails['port'],
           'smtp_user' => $mailDetails['username'],
           'smtp_pass' => $mailDetails['password'],
           'mailtype'  => 'html',
           'starttls'  => true,
           'newline'   => "\r\n"
       );

       $ci->load->library('email', $email_config);

       $ci->email->from($mailDetails['username'], $mailDetails['from_mail_name']);
       $ci->email->to($touser);

       if ($bcc != '') {
           $ci->email->bcc($bcc);

       }
       if ($cc != '') {
           $ci->email->cc($cc);
       }
       if($attachment != ""){
          // echo $attachment; exit();
         $ci->email->attach($attachment);
       }
       $ci->email->subject($subject);
       $ci->email->message($message);
       $ci->email->send();
       $post['message'] = $message;
       $post['type'] = "M";
       $post['response'] = $subject;
       $post['to_id'] = $touser;
       $post['to_detail'] = $cc;
       $post['entry_date_time'] = date('Y-m-d H:i:s');
       $post['vendor_id'] = $ci->session->userdata('vendor_id');
       return $ci->UtilityModel->insertThisData($db_ext."communication_log",$post);
    }

    function send_sms($mobile, $sms,$toId ="") {
        $ci = get_instance();
        $db_ext = $ci->config->item('db_priffix');
        $smsDetails = $ci->UtilityModel->getRequiredData('S',$db_ext."communication_config","*",array('type'=>'S','vendor_id'=>$ci->session->userdata('vendor_id')));

       $mobile = trim($mobile);
       $curl_scraped_page = '';
       $sms = urlencode($sms);
       if($smsDetails['sms_provider'] == 'GSP') {
         $main = 'method=sendMessage&userid='.$smsDetails['username'].'&password='.$smsDetails['password'].'&msg=' . $sms . '&send_to=' . urlencode($mobile) . '&v=1.1&msg_type=TEXT&auth_scheme=PLAIN';
         $url = "http://enterprise.smsgupshup.com/GatewayAPI/rest?" . $main;
     } if($smsDetails['sms_provider'] == 'BLK') {
       $url = "http://sms6.routesms.com/bulksms/bulksms?username=".$smsDetails['username']."&password=".$smsDetails['password']."&type=0&dlr=1&destination=".$mobile."&source=ZZooee&message=".$sms."";
     }
       $ch = curl_init();
       curl_setopt($ch, CURLOPT_URL, $url);
       curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
       $data = curl_exec($ch);
       curl_close($ch);
      // echo $data; exit();
      $post['message'] = $sms;
      $post['type'] = "S";
      $post['response'] = $data;
      $post['to_id'] = $toId;
      $post['to_detail'] = $mobile;
      $post['entry_date_time'] = date('Y-m-d H:i:s');
      $post['vendor_id'] = $ci->session->userdata('vendor_id');
      return $ci->UtilityModel->insertThisData($db_ext."communication_log",$post);

    }

}

?>
