<?php

include '../vendor/autoload.php';

$routes = include '../config/routes.php';

// use App\Connection\Connection;

// $connection = Connection::getConnection();

// $query = 'SELECT * FROM tb_category;';

// $preparacao = $connection->prepare($query);
// $preparacao->execute();

// while ($registro = $preparacao->fetch()){
//     var_dump($registro);
// }
use App\Controller\ErrorController;

$url = explode('?', $_SERVER['REQUEST_URI'])[0];


if(false === isset($routes[$url])) {
    // $e = new ErrorController();
    // $e->notFoundAction();
    (new ErrorController())->notFoundAction();
    exit;
}

$controllerName = $routes[$url]['controller'];
$methodName = $routes[$url]['method'];

(new $controllerName())->$methodName();
