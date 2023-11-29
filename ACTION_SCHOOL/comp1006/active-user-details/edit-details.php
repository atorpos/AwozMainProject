<?php

namespace Action\School\Comp1006\ActiveUserDetails;

class EditDetails extends \AW\Action
{
    public function __construct()
    {
        parent::__construct();

        $input = INPUT_GET;

        switch (filter_input(INPUT_SERVER, 'REQUEST_METHOD')) {
            case 'GET':
                $input = INPUT_GET;
                break;
            case 'POST':
                $input = INPUT_POST;
                break;
        }
    }

    public function get()
    {
        $input = filter_input(INPUT_GET, 'token');
        $active_user = \AW\ActiveClient::findOne([
           'token'  =>  $input
        ]);
        var_dump($input); exit();
    }

}