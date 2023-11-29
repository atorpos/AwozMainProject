<?php

namespace Action\School\Comp1006;

class UploadFile extends \AW\Action\Admin {


    public function get()
    {
        $storage_file = \AW\ImageStorage::find();
        if(count($storage_file) == 0) {
            $this->view->assign('havefile', false);
        } else {
            $this->view->assign('havefile', true);
        }
        $this->view->assign('fileno', count($storage_file));
        $this->view->assign('image_files', $storage_file);

    }

    public function post()
    {
        $action = filter_input(INPUT_POST, 'action');
        if(!in_array($action, ['validate', 'submit'])) {
            $this->badRequest('Error Occur');
        }

        if($_FILES["excel"]["size"] <= 0){
            $this->fail('Please select file');
        }


    }
}