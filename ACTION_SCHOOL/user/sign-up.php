<?php

namespace Action\School\user;

use AW\Action;

class SignUp extends Action
{
    public function get()
    {
        $this->view->assign("testing", "testing");
    }
}