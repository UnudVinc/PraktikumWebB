<?php


namespace System;


class database
{
    public $connection_status;

    protected $host;
    protected $username;
    protected $password = '';
    protected $database;
    protected $port = 3366;

    public function __construct()
    {
        require ($_ENV['ROOT'].'/config/server.php');
        if ($_ENV['host'] != null)
        {
            $this->host = $_ENV['host'];
        }
        if ($_ENV['user'] != null)
        {
            $this->host = $_ENV['user'];
        }
        if ($_ENV['pass'] != null)
        {
            $this->host = $_ENV['pass'];
        }
        if ($_ENV['db'] != null)
        {
            $this->host = $_ENV['db'];
        }
    }

    public function dbConnect()
    {
        $this->connection_status = mysqli_connect(
            $this->host,
            $this->username,
            $this->password,
            $this->database,
            $this->port
        );
        return $this->connection_status;
    }
}