<?php

namespace Action\API\Chats;

use AW\Action\Api;

class ChatGPT extends Api
{
    public function __construct()
    {

    }

    public function get()
    {

    }

    public function post()
    {
        $responseDate = file_get_contents('php://input');

        \LT\Logger::dump([
            'GET' =>    $_GET,
            'POST'  =>  $_POST,
            'SERVER'    =>  $_SERVER
        ]);

        $json_decode = json_decode($responseDate);
    }

}