<?php

namespace AW;

/**
 * only support \LT\Model class
 */
Trait LogUpdate {

    protected function _afterUpdate() {

        $originData	 = $this->getRawData();
        $updated	 = $this->getChangedData();

        unset($originData['_load']);

        $changeLog		 = new \AW\ChangeLog();
        $changeLog->table	 = $this->table();
        $changeLog->table_id	 = $this->id;

        $_user = User::current();

        $changeLog->user_id	 = $_user ? $_user->id : NULL;
        $changeLog->from	 = json_encode($originData);
        $changeLog->to		 = json_encode($updated);

        if (!$changeLog->save()) {
            \LT\Logger::error([
                'type'	 => 'logupdate.error',
                'data'	 => \LT\DB::conn()->errorInfo(),
            ]);
        }
    }

}
