<?php

namespace AW;

use LT\RBAC\User;

class UserPasswordHistory extends \AW\Model
{
    public $id;
    public $merchant_id;
    public $username;
    public $app_id;
    public $password;
    public $salt;
    public $expiry_time;
    public $created_time;
    public $updated_time;
}