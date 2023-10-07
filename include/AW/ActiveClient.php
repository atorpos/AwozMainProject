<?php

namespace AW;

use LT\Model;

class ActiveClient extends Model
{
    use LogUpdate;
    public $id;
    public $active_id;
    public $type;
    public $first_name;
    public $last_name;
    public $address;
    public $country;
    public $geolocation;
    public $tel;
    public $email;
    public $edm_enable;
    public $enabled;
    public $token;
    public $first_date;
    public $active_count;
    public $last_active_id;
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
            $_attribute = ActiveClientAttribute::findOne([
                '$active_client_id' => $this->id,
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
            $attribute = ActiveClientAttribute::findOne([
                'order_id' => $this->id,
                'name'        => $_name,
            ]);
            if (!$attribute) {
                $attribute              = new ActiveClientAttribute();
                $attribute->order_id = $this->id;
                $attribute->name        = $_name;
            }
            $attribute->value          = $_value;
            $attribute->save();
        }
    }

}