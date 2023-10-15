<?php


use \LT\Config;

require_once 'common.php';

Config::register('mui', array(
    'enabled' => FALSE,
    'default' => 'en',
    'langs' => array(
        'en' => 'English',
        'zh-tw' => '台灣中文',
        'fn' => 'French'
    ),
    'replaces' => array(
        'zh' => 'zh-cn',
        'tc' => 'zh-tw',
        'sc' => 'zh-cn',
    ),
    'flags' => array(
        'en' => 'us',
        'zh-tw' => 'tw',
        'zh-cn' => 'cn',
    ),
));

Config::register('rbac', array(
    'app_id' => '1',
));

Config::register('route', [
    '#^/payment/booth/create$#' => '/payment/booth/edit',
    '#^/payment/booth/([a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12})/edit#' => '/payment/booth/edit?token=$1',
    '#^/payment/transaction/([a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12})/?$#' => '/payment/transaction/view?request_reference=$1',
    '#^/([a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12})/verify/?$#' => '/settings/user/verify?token=$1',
    '#^/settings/user/verify/([a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12})/?$#' => '/settings/user/verify?token=$1',
    '#^/settings/user/([a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12})/?$#' => '/settings/user/edit?token=$1',
    '#^/merchant/management/(.{36})/?$#' => '/merchant/management/edit?token=$1',
    '#^/comp1006/active-user-details/([a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12})?$#' => '/comp1006/active-user-details/index?token=$1'
]);
