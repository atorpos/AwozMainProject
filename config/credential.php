<?php
use LT\Config;

Config::register('db.default', array(
    'type'           => 'MySQL',
    'charset'        => 'utf8mb4',
    'host'           => 'testingdb.cnurlrknw76w.us-west-2.rds.amazonaws.com',
    'user'           => 'admin',
    'password'	 => '',
    'schema'         => 'georgianschool',
    'prefix'         => '',
    'options'        => NULL,
));


ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
