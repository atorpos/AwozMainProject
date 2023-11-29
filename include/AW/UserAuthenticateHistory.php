<?php

namespace AW;

use AW\Model;

class UserAuthenticateHistory extends Model
{
    public $id;
    public $merchant_id;
    public $username;
    public $message;
    public $result;
    public $ip;
    public $user_agent;
    public $url;
    public $created_time;
    public $updated_time;
}