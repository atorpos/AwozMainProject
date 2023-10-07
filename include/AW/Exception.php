<?php

namespace AW;

class Exception extends \LT\Exception {

    const MANDATORY_MERCHANT_ID = 10000;

//    public static function general($id, $message) {
//
//        \LT\Exception::general($message);
//    }
//    public static function critical($id, array $data = []) {
//        parent::critical(sprintf('%s - %s', $id, 'MANDATORY FIELD `merchant_id`'), $data);
//    }

    public static function mandatory($f) {
        parent::badRequest([
            'description'	 => 'mandatory field required',
            'field'			 => $f
        ]);
    }

    public static function invalid($f) {
        parent::badRequest([
            'description'	 => 'field invalid value',
            'field'			 => $f
        ]);
    }

    public static function duplicate($f) {
        parent::badRequest([
            'description'	 => 'field value duplicated',
            'field'			 => $f
        ]);
    }

    public static function incorrectSignature() {
        self::_throw('Incorrect Signature', 400, [], static::LEVEL_BAD_REQUEST);
    }

    public static function requiredFieldMissing($fieldName) {
        $data['description'] = 'Required field missing';
        $data['field_name']	 = $fieldName;
        parent::badRequest(40400, [
            'description'	 => 'mandatory field required',
            'field'			 => []
        ]);
    }

//
//	public static function badRequest($message, $code = 400, $data = array()) {
//		$data['description'] = $message;
//		parent::badRequest('Bad Request', $code, $data);
//	}
}
