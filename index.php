<?php 

require_once("vendor/autoload.php");

use \Slim\Slim;
use \acontardi\Page;

$app = new Slim();

$app->config('debug', true);

$app->get('/', function() {
	echo "Ok!";
	
});

$app->run();

 ?>