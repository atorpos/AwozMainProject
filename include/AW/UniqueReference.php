<?php

namespace AW;

use AW\Model;

class UniqueReference extends Model
{
    public $id;
    public $module;
    public $token;
    public $created_time;
    public $updated_time;
    public static function acquire($module){
        while (TRUE) {
            $reference = UniqueReference::findOne([
                'module' => NULL
            ]);
            $reference->module  =   $module;
            $db                 =   \LT\DB::conn();
            $statement          =   $db->prepare("UPDATE `unique_reference` SET `module` = ? WHERE `id` = ? AND ISNULL(`module`)");
            $statement->execute([$module, $reference->id]);
            if($statement->rowCount() === 1) {
                break;
            }
            usleep( 1000000 /2);
        }
        return $reference->token;

    }

}