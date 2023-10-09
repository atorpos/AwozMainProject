<?php


use \LT\Config;

Config::register('rbac', array(
    'app_id' => '2',
));

require_once 'common.php';

Config::register('route', [
    '#^/payment/booth/create$#' => '/payment/booth/edit',
    '#^/payment/booth/([a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12})/edit#' => '/payment/booth/edit?token=$1',
    '#^/payment/transaction/([a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12})/?$#' => '/payment/transaction/view?request_reference=$1',
    '#^/([a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12})/verify/?$#' => '/settings/user/verify?token=$1',
    '#^/settings/user/verify/([a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12})/?$#' => '/settings/user/verify?token=$1',
    '#^/settings/user/([a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12})/?$#' => '/settings/user/edit?token=$1',
    '#^/merchant/management/(.{36})/?$#' => '/merchant/management/edit?token=$1'
]);
