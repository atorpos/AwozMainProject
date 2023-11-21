<?php

namespace AW\Action;

use LT\DB\Criteria;

class Authenticated extends \AW\Action
{

    /**
     *
     * @var \AW\User
     */

    public static $user;
    protected  $_role;

    protected $_checkLogin;

    public function __construct()
    {
        parent::__construct();

        if(!self::$user = \AW\User::current()) {
            $this->redirect("/user/sign-in");
            exit();
        }
    }

    /**
     *
     * @return \AW\User
     */

    public function user(){
        return self::$user;
    }

}