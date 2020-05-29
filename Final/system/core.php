<?php


namespace System;


class core
{
    public function __construct()
    {
    }

    public function css($request)
    {
        require_once ($_ENV['ROOT'].'/resources/css/'.$request);
    }
    public function js($request)
    {
        require_once ($_ENV['ROOT'].'/resources/js/'.$request);
    }
    public function fonts($request)
    {
        require_once ($_ENV['ROOT'].'/resources/fonts/'.$request);
    }
}