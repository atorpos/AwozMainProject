<?php

namespace AW;

use LT\DB;

class User extends \LT\RBAC\User
//class User extends \AW\Model
{
    protected static $_table = 'user';

    public $id;
    public $merchant_id;
    public $username;
    public $password;
    public $salt;
//    for salt, \LT\Security\Misc::random(8);
    public $name;
    public $token;
    public $access_token;
    public $fcm_device_token;
    public $is_developer;
    public $verified_time;
    public $enabled = '1';
    public $expiry_time;
    public $last_login_time;
    public $session_expired_time;
    public $app_id;
    public $created_time;
    public $updated_time;

    CONST APP_ID_ADMIN = '1';
    CONST APP_ID_MERCHANT = '2';
    CONST APP_ID_SALE = '3';

    /**
     *
     * @return static|null
     */

    public static function current()
    {

        if(is_null(static::$_current)) {
            if(FALSE === ($user = \LT\Session::get('user', FALSE))) {
                return NULL;
            }
            if(!isset($user['id'])) {
                return NULL;
            }

            if(!$_user = \AW\User::findOne($user['id'])){
                return NULL;
            }

            static::$_current = $_user;

        }
        return static::$_current;
    }

    public function isAdmin()
    {
        return ($this->app_id === static::APP_ID_ADMIN);
    }

    public function isMerchant()
    {
        return ($this->app_id === static::APP_ID_MERCHANT);
    }

    public function isSales()
    {
        return ($this->app_id === static::APP_ID_SALE);
    }

    public function forgetpassword($merchantCode, $username, $ip) {

        if(!$username) {
            $this->fail("Invalid user");
        }

    }

    public static function authenticate($username, $password, $ip, $ga_code = null) {
        $userAgent = filter_input(INPUT_SERVER, "THTP_USER_AGENT", FILTER_SANITIZE_STRING);

        $user = User::findOne([
           'username'   =>  $username,
            new \LT\DB\Criteria('NOT ISNULL(verified_time)'),
            'enabled'   =>  '1',
        ]);

        if(!$user) {
            return self::_authenticateLog($username, NULL, 'Invalid Credential', $ip, $userAgent);
        }

        if ($user->expiry_time >= time()) {
            return self::_authenticateLog($username, NULL, 'Account has been locked', $ip, $userAgent);
        }
        $is_ga_valid = true;
        if (!$user->expiry_time && ($user->password !== self::_hash($password, $user->salt) || $is_ga_valid === false)) {

        }

        $user->expiry_time = 0;
        $user->save();


        \LT\Session::set('user', [
            'id'           => $user->id,
            'token'        => $user->token,
            'merchant_id'  => $user->merchant_id,
            'name'         => $user->name,
            'username'     => $user->username,
            'is_developer' => $user->is_developer,
//            'role_id'      => $roleId
        ]);


        \LT\Session::set('rbac_roles', NULL);
        \LT\Session::set('rbac_permissions', NULL);

        return self::_authenticateLog($username, $user->merchant_id, TRUE, $ip, $userAgent);

    }

    public static function _authenticateLog($userName, $merchant_id = null, $return, $ip, $userAgent) {




    }

}