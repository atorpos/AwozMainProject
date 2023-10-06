<?php

namespace Action\School\Comp1006;


class Index extends \AW\Action\Admin {



    public function get()
    {
       $this->view->assign('cousename', 'PHP');
    }
}