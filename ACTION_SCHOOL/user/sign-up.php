<?php

namespace Action\School\user;

use AW\Action;

class SignUp extends Action
{
    public function get()
    {
        $this->view->assign("testing", "testing");
    }

    public function post($token = NULL)
    {

        $user_name = filter_input(INPUT_POST, 'username', FILTER_SANITIZE_STRING);
        $password = filter_input(INPUT_POST, 'password', FILTER_SANITIZE_STRING);

        $ip = \LT\Network\Client::ip();

        if (($message = \AW\User::authenticate($user_name, $password, $ip))) {

        }

    }
}