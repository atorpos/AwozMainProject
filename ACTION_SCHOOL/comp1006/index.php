<?php

namespace Action\School\Comp1006;


class Index extends \AW\Action\Admin {



    public function get()
    {
       $this->view->assign('cousename', 'PHP');

       $active_user = \AW\ActiveClient::find();
       $this->view->assign('active_user', $active_user);

//       set_error_handler("customErrorHandle");

    }

    public function post()
    {

    }
}