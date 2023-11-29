<?php

namespace Action\School\user;

use AW\Action;
use AW\UniqueReference;
use AW\User;

class SignUp extends Action
{
    public function get()
    {
        $this->view->assign("testing", "testing");
    }

    public function post($token = NULL)
    {

        $user_name = filter_input(INPUT_POST, 'email', FILTER_SANITIZE_STRING);
        $password = filter_input(INPUT_POST, 'password', FILTER_SANITIZE_STRING);
        $user_salt = \LT\Security\Misc::random(8);

        if($excited_user = \AW\User::findOne([
           "username"   =>  $user_name
        ])){

        }

        $new_user = new User();
        $new_user->merchant_id = 1;
        $new_user->username = $user_name;
        $new_user->salt = $user_salt;
        $new_user->password = hash('sha512', $password . $user_salt);
        $new_user->expiry_time = 0;
        $new_user->created_time = time();
        $new_user->updated_time = time();
        $new_user->token = UniqueReference::acquire("user token");
        $new_user->access_token = UniqueReference::acquire("user access token");
        $new_user->enabled = 1;
        $new_user->is_developer = 0;
        $new_user->verified_time = time();
        $new_user->app_id = 1;
        if($new_user->save()) {
            header("Location: sign-in");
            exit();
        }

    }
}