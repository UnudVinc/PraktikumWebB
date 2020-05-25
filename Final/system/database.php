<?php


namespace system;


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
        return $this->connection_status;
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
    }
}