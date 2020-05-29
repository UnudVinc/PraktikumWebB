<?php


namespace System;


class upload
{
    public $data_type;
    public $target_directory = 'uploads';
    public $file_extensions;
    public $upload_status;

    public function __construct()
    {
        $this->upload_status = 'processed';
        $result = $this->file_checker();
        if ($result == 'accepted')
        {
            $this->submit();
        }
        else if ($result == 'rejected')
        {
            $this->rejection();
        }
    }

    private function submit()
    {

    }

    private function file_checker()
    {
        return 'test';
    }

    private function rejection()
    {

    }
}