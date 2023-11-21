<?php

namespace Action\School\Actions;

use AW\Action\Authenticated;

class AddLoginUser extends Authenticated
{
    public function __construct()
    {

    }

    public function post()
    {
        $this->view->noOutput();
        $input = ["email", "password"];

        foreach ($input as $key => $value) {
            if(!$data[$value] = filter_input(INPUT_POST, $value, FILTER_DEFAULT)) {
                $this->fail($value. " cannot be empty");
            }
        }

        $login_user = new \AW\User();
        $login_user->username = $data['email'];
        $login_user->token = \AW\UniqueReference::acquire("user token");
        $login_user->salt = \LT\Security\Misc::random(8);
        $login_user->password = hash('sha512', $data['password'] . $login_user->salt);
        $login_user->verified_time = time();
        $login_user->merchant_id = 1;
        $login_user->expiry_time = 0;
        $login_user->enabled = 1;
        $login_user->save();
    }
}