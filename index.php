<?php 

require_once("vendor/autoload.php");

use \Slim\Slim;
use \Acontardi\Page;
use \Acontardi\PageAdmin;

$app = new Slim();

$app->config('debug', true);

$app->get('/', function() {

	$page = new Page();
	$page->setTpl("index");
	
});

$app->get('/admin', function() {

	$page = new PageAdmin();
	$page->setTpl("index");
	
});

$app->get('/admin/login', function() {

	$page = new PageAdmin([
		"header"=>false,
		"footer"=>false
	]);
	$page->setTpl("login");
	
});

$app->run();

 ?>