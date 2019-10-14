<?php 

//Файл конфигурации Twig 

$loader = new Twig_Loader_Filesystem(TEMPLATES_DIR);
$twig = new Twig_Environment($loader, array(
	'cache' => ENGINE_DIR . 'cache',
	'auto_reload' => true
));
