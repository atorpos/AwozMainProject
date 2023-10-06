<?php

namespace AW\Action;

class Admin extends \AW\Action
{
    public static $user;
    protected $_role;
    protected $_checkLogin;
    public function __construct()
    {
        $this->view->assign('_user', self::$user);
//        $this->view->assign('_role', $user['role_id']);
        $this->view->assign('_role', null);
        $this->view->assign('_ip', \LT\Network\Client::ip());
    }
}