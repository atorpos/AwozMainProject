<?php
    namespace Action\School;

    use \LT\DB;

    class Index extends \AW\Action {

        public function get() {
            $this->view->assign('testinf', 'testing');
        }
    }

