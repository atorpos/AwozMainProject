<?php

namespace Action\School\Actions;

use \LT\DB;

class AddActiveUser extends \AW\Action\Authenticated
{

    public function __construct()
    {

    }

    public function post() {
        $this->view->noOutput();
        $input = ["last_name", "first_name", "telephone", "email"];
        $optional_intput = ["description", "address1", "address2", "city", "state", "postcode", "country"];

        foreach ($input as$key => $value) {
            if(!$data[$value] = filter_input(INPUT_POST, $value, FILTER_DEFAULT)) {
                $this->fail($value. " cannot be empty");
            }
        }

        foreach ($optional_intput as $key => $value) {
            if(!$data[$value] = filter_input(INPUT_POST, $value, FILTER_DEFAULT)) {
                continue;
            }
        }
        $fulladdress ="";
        if($data["address1"]) {
            $fulladdress = $data["address1"];
        }
        if($data["address2"]){
            $fulladdress = $fulladdress. " ". $data["address2"];
        }
        if($data["city"]){
            $fulladdress = $fulladdress. " ". $data["city"];
        }
        if($data["state"]) {
            $fulladdress = $fulladdress. " ". $data["state"];
        }
        if($data["postcode"]) {
            $fulladdress = $fulladdress. " ". $data["postcode"];
        }


        $active_user = new \AW\ActiveClient();
        $active_user->active_id = 1;
        $active_user->type = 1;
        $active_user->first_name = $data["first_name"];
        $active_user->last_name = $data["last_name"];
        $active_user->tel = $data["telephone"];
        $active_user->email = $data["email"];
        if($fulladdress != "") {
            $active_user->address = $fulladdress;
        }
        if($data["country"]) {
            $active_user->country = $data["country"];
        }
        $active_user->token = \AW\UniqueReference::acquire("");
//        $active_user->description = $data["description"];

        if($active_user->save()) {
            var_dump("save success");
            header("Location: https://school.awoz.co/comp1006/");
        } else {
            var_dump($active_user->errorMessage());
        }
        exit();

    }

}