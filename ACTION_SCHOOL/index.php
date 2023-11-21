<?php
    namespace Action\School;

    use \LT\DB;

    use \AW\Enum;

    class Index extends \AW\Action\Authenticated {

        public function get() {
            $this->view->assign('testinf', 'testing');
        }
    }

