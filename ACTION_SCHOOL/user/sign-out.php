<?php

namespace Action\School\user;

use AW\Action;

class SignOut extends Action
{
    public function get($token = NULL)
    {
        \LT\Session::destroy();
        $this->redirect(is_null($token)? '/user/sign-in' : sprintf('/%s/sign-in', $token));
    }
}