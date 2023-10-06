<?php

namespace AW\Action;

use LT\Action;

class Console extends Action
{
    protected function _log($message = '') {
        echo date('Y-m-d H:i:s') . " => " . (is_string($message) ? $message : print_r($message, 1)) . PHP_EOL;
    }

}