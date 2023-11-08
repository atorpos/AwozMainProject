<?php

namespace AW\Enum;

class SwimType extends \AW\Enum
{
    CONST FREESTYLE =  1;
    CONST BREASTSTYLE = 2;
    CONST BUTTERFLYSTYLE = 3;
    CONST BACKSTYLE = 4;

    public static function dropdown() {
        $list = [];
        foreach (static::all() as $_name => $_value) {
            $key = ucwords(strtolower(str_replace("_ ", " ", $_name)));
            $list[$key] = $_value;
        }
        return $list;
    }

    public static function findValue($V) {
        foreach (parent::all() as $_k => $_v) {
            if ($V == $_v) {
                return $_k;
            }
        }

    }
}