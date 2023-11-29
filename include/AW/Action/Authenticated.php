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

        $this->_checkLogin = \AW\UserPasswordHistory::findOne([
            "where" => [
                "merchant_id" => 1,
                "username"    => self::$user->username,
            ],
            "order" => "expiry_time desc"
        ]);
        if($this->_checkLogin != null) {
            if ($this->_checkLogin->expiry_time < time()) {
                $this->redirect("/user/change-password?life=0");
                exit;
            }
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