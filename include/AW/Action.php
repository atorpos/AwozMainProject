<?php

namespace AW;

abstract class Action extends \LT\Action
{
    public function __construct()
    {
        $this->view->assign('YEAR', date('Y'));
    }
}