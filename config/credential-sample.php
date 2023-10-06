<?php
use LT\Config;

Config::register('db.default', array(
    'type'           => '',
    'charset'        => '',
    'host'           => '',
    'user'           => '',
    'password'	 => '',
    'schema'         => '',
    'prefix'         => '',
    'options'        => NULL,
));


ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
