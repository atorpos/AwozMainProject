<?php

namespace AW\Enum;

class ActiveType extends \AW\Enum {

    CONST SWIMMING = 46;

    public static function dropDown() {
        $list = [];
        foreach (static::all() as $_name => $_value) {
            $key = ucwords(strtolower(str_replace("_", " ", $_name)));
            $list[$key] = $_value;
        }
        return $list;
    }

    public static function findValue($V) {
        foreach (parent::all() as $_k => $_v) {
            if($V == $_v) {
                return $_k;
            }
        }

    }
}