<?php

declare(strict_types=1);

namespace App\Connection;

use PDO;

abstract class Connection
{
    public static function getConnection() : PDO
    {
        $database = 'db_store';
        $username = 'root';
        $password = 'admin';

        return new PDO('mysql: host = localhost; dbname=' . $database, $username, $password);
    }
}