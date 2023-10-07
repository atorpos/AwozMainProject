<?php

namespace AW;

use LT\Model;

class ActiveFitness extends Model
{
    use LogUpdate;

    public $id;
    public $active_client_id;
    public $type;
    public $active_durition;
    public $active_result;
    public $active_ave_hb;
    public $geolocation;
    public $token;
    public $active_count;
    public $created_date;
    public $updated_date;

    private $_attributes = [];


    /**
     *
     * @param string $name
     * @return false|string
     */

    public function __get($name) {
        if (!strlen($name)) {
            return false;
        }

        if (!isset($this->_attributes[$name])) {
            $_attribute = ActiveFitnessAttribute::findOne([
                '$active_fitness_id' => $this->id,
                'name'                  => $name
            ]);

            if (!$_attribute) {
                return false;
            }

            $this->_attributes[$_attribute->name] = $_attribute->value;
        }

        return isset($this->_attributes[$name]) ? $this->_attributes[$name] : NULL;

    }

    public function __set($name, $value) {
        if (strlen($name)) {
            $this->_attributes[$name] = is_array($value) ? json_encode($value) : $value;
        }
    }

    protected function _afterSave() {
        parent::_afterSave();

        foreach ($this->_attributes as $_name => $_value) {
            $attribute = ActiveFitnessAttribute::findOne([
                'order_id' => $this->id,
                'name'        => $_name,
            ]);
            if (!$attribute) {
                $attribute              = new ActiveFitnessAttribute();
                $attribute->order_id = $this->id;
                $attribute->name        = $_name;
            }
            $attribute->value          = $_value;
            $attribute->save();
        }
    }


}