<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Json {

    public function getStringValue($inString) {
        $outStr = "";
        if ($inString == NULL) {
            $outStr = "";
        } else if (is_bool($inString)) {
            $outStr = "FALSE";
            if ($inString) {
                $outStr = "TRUE";
            }
        } else if (is_array($inString) || is_object($inString)) {
            $outStr = "";
        } else {
            $outStr = (String) $inString;
            if ($inString == NULL) {
                $outStr = "";
            }
        }
        return $outStr;
    }

    /*
     * _getJSONStringValue
     * 
     * This is a helper function that will ensure the object passed in will be
     * a valid string on the way out.  Futhermore, any special characters that 
     * must be escaped in a JSON string value will be escaped.
     */

// ------------------------------------------------------------------------	
    public function getJSONStringValue($inString) {
        $value = $this->getStringValue($inString);

        $value = $this->unescapeJSONString($value);
        $value = $this->escapeJSONString($value);

        return $value;
    }

// ------------------------------------------------------------------------	
    public function escapeJSONString($inString) {
        $value = $inString;

        $value = str_replace("\"", "_DOUBLE_QUOTE_", $value);
        $value = str_replace("\\", "_BACKSLASH_", $value);

        $value = str_replace("_BACKSLASH_", "\\\\", $value);
        $value = str_replace("_DOUBLE_QUOTE_", "\\\"", $value);

        return $value;
    }

// ------------------------------------------------------------------------	
    public function unescapeJSONString($inString) {
        $value = $inString;

        $value = str_replace("\\\"", "_ESC_DOUBLE_QUOTE_", $value);
        $value = str_replace("\\\\", "_ESC_BACKSLASH_", $value);

        $value = str_replace("_ESC_BACKSLASH_", "\\", $value);
        $value = str_replace("_ESC_DOUBLE_QUOTE_", "\"", $value);

        return $value;
    }

    public function output($array) {
        header("Content-Type: application/json");
        echo json_encode($array);
    }

}
