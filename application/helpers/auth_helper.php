<?php

/* Begin file auth_helper.php */

if (!function_exists('isAuthorized')) {

    function isAuthorized($user, $secret = '') {

        $CI = & get_instance();

        $CI->load->config('key');

        $auth = $CI->config->item('auth');

        if ($auth['user'] == $user && $auth['secret'] == $secret) {

            return true;
        }

        return false;
    }

}
if (!function_exists('getRequestUrl')) {

    function getRequestUrl() {
        $CI = & get_instance();
        $CI->load->config('key');
        $URL = $CI->config->item('URL');
        if (isset($URL['request'])) {
            return $URL['request'];
        }
    }

}
if (!function_exists('getAuthUrl')) {

    function getAuthUrl() {
        $CI = & get_instance();
        $CI->load->config('key');
        $URL = $CI->config->item('URL');
        if (isset($URL['auth'])) {
            return $URL['auth'];
        }
    }

}
if (!function_exists('getHomeUrl')) {

    function getHomeUrl() {
        $CI = & get_instance();
        $CI->load->config('key');
        $URL = $CI->config->item('URL');
        if (isset($URL['home'])) {
            return $URL['home'];
        }
    }

}
if (!function_exists('setUserSession')) {

    function setUserSession($Session) {
        $CI = & get_instance();
        $CI->load->config('key');
        $prefix = $CI->config->item('session_prefix');
        $rewrite_session = array();
        foreach ($Session as $key => $value) {
            $rewrite_session[$prefix . $key] = $value;
        }
        $CI->session->set_userdata($rewrite_session);
    }

}
if (!function_exists('getSession')) {

    function getSession($sessionName) {
        $CI = & get_instance();
        $CI->load->config('key');
        $prefix = $CI->config->item('session_prefix');
        return $CI->session->userdata($prefix . $sessionName);
    }

}
