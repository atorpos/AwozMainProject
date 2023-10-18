<?php


use LT\Config;

Config::register('core', array(
    'timezone' => 'America/New_York',
    'charset' => 'utf-8',
    'mode' => 'web',
    'default_entry' => 'school',
    'stage' => 'live',
//	'shared_entry'	 => 'share',
));

Config::register('web', array(
    'friendly.url' => true,
    'session_name' => 'GIMSJhztWe5m6SeF',
    'cookie_secret' => '4Jr#7Q@^#vV%G-Ua',
    'domain' => filter_input(INPUT_SERVER, 'SERVER_NAME'),
    'base' => '/',
    'base_url' => filter_input(INPUT_SERVER, 'SERVER_NAME') . '/',
    'cdn' => 'cdn.awoz.co',
    'firendly_url' => TRUE
));


Config::register('mui', array(
    'enabled' => FALSE,
    'default' => 'en',
    'langs' => array(
        'en' => 'English',
        'cn' => '简体中文',
        'hk' => '繁體中文',
    ),
));

$fp = __DIR__ . DIRECTORY_SEPARATOR . '..' . DIRECTORY_SEPARATOR . 'credential.php';
file_exists($fp) ?: exit('Credential Required');
require_once $fp;

require_once __DIR__ . DIRECTORY_SEPARATOR . '..' . DIRECTORY_SEPARATOR . 'school.php';