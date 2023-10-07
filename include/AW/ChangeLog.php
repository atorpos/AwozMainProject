<?php

namespace AW;

class ChangeLog extends \AW\Model {

    public $id;
    public $user_id;
    public $table;
    public $table_id;
    public $from;
    public $to;
    public $created_time;
    public $updated_time;

    public function update($data = NULL) {
        throw new Exception('this table not allow udpate');
    }


}
