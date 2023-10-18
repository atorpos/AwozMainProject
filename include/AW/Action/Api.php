<?php

namespace AW\Action;

class Api extends \AW\Action
{
    /**
     * @var \AW\ActiveClient $_activeuser
     */
    protected $_activeuser;
    public function __construct()
    {
        parent::__construct();
        $this->view->noOutput();
        $token = isset($_GET['token']) ? $_GET['token'] : NULL;

        if(is_null($token)) {
            $this->badRequest();
        }

        $this->_activeuser = \AW\ActiveClient::findByToken($token);
        if (!$this->_activeuser) {
            $this->badRequest();
        }

//        add signature

    }
}