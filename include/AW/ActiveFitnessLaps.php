<?php

namespace AW;

use LT\Model;

class ActiveFitnessLaps extends Model {

    use LogUpdate;

    public $id;

    public $active_fitness_id;
    public $lap;
    public $type;
    public $value;
    public $remark;
    public $token;
    public $created_time;
    public $updated_time;

    public function __get($name) {
        if (!strlen($name)) {
            return false;
        }

//        if (!isset($this->_attributes[$name])) {
//            $_attribute = ActiveFitnessAttribute::findOne([
//                '$active_fitness_id' => $this->id,
//                'name'                  => $name
//            ]);
//
//            if (!$_attribute) {
//                return false;
//            }
//
//            $this->_attributes[$_attribute->name] = $_attribute->value;
//        }

//        return isset($this->_attributes[$name]) ? $this->_attributes[$name] : NULL;

    }

    public function __set($name, $value) {
        if (strlen($name)) {
            $this->_attributes[$name] = is_array($value) ? json_encode($value) : $value;
        }
    }

    protected function _afterSave() {
        parent::_afterSave();

//        foreach ($this->_attributes as $_name => $_value) {
//            $attribute = ActiveFitnessAttribute::findOne([
//                'active_fitness_id' => $this->id,
//                'name'        => $_name,
//            ]);
//            if (!$attribute) {
//                $attribute              = new ActiveFitnessAttribute();
//                $attribute->active_fitness_id = $this->id;
//                $attribute->name        = $_name;
//            }
//            $attribute->value          = $_value;
//            $attribute->save();
//        }
    }





}