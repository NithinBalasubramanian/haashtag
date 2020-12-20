<?php
  function set_field($field, $key) {
        if (array_key_exists($key, $field)) {
            return $field[$key];
        }
        return '';
    }