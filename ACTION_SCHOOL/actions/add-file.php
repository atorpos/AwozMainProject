<?php

namespace Action\School\Actions;

use AW\Action\Authenticated;
use AW\ImageStorage;

class AddFile extends Authenticated
{
    public function __construct()
    {

    }

    public function post()
    {
        $this->view->noOutput();
//        $action = filter_input(INPUT_POST, 'action');
//        var_dump($action); exit();
//        if(!in_array($action, ['validate', 'submit'])){
//            $this->badRequest("Error Occur");
//        }

        if($_FILES["file"]["size"] <= 0) {
            $this->fail("Please select file.");
        }

        if($_FILES["file"]["size"] >=20971520) {
            $this->fail("Exceed Maximum File Size");
        }
        if(!in_array($_FILES["file"]["type"], ["image/png"]) && !in_array($_FILES["file"]["type"], ["image/jpeg"])) {
            $this->fail('Invalid File Format');
        }
        if($_FILES["file"]["error"]){
            $this->fail($_FILES["file"]["errorcode"]. ":". $_FILES["file"]["error"]);
        }

        $extention = strtolower(pathinfo($_FILES["file"]["name"], PATHINFO_EXTENSION));
        $oro_filename = pathinfo($_FILES["file"]["name"], PATHINFO_BASENAME);
        $targetFile_prefix = LT_APP_DIR. 'public_html/storage/upload_files/'.date("Y-m-d").'/';
        $targe_file = $targetFile_prefix.'generalfile_'.time().'.'.$extention;

        if(!file_exists($targetFile_prefix)){
            if(!mkdir($targetFile_prefix, 0755,true)){
                $this->fail("Fail to save file");
            }
        }
        move_uploaded_file($_FILES["file"]["tmp_name"], $targe_file);

        $trimpath = str_replace('/mnt/efs/fs1/www/awoz/public_html/', '', $targe_file);

        $add_file_record = new ImageStorage();
        $add_file_record->name = $oro_filename;
        $add_file_record->user_id = 1;
        $add_file_record->location = $trimpath;
        $add_file_record->file_type = $extention;
        $add_file_record->size = $_FILES["file"]["size"];
        $add_file_record->token = \AW\UniqueReference::acquire('file image storage');
        $add_file_record->created_time = time();
        $add_file_record->updated_time = time();
        $add_file_record->save();
    }
}