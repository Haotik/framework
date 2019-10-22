<?php

require_once '../config/config.php';

$user = new User();

if (checkFlag('flag',"Войти")) {
    $content = $twig -> render('autorisation.twig');
} else
if (checkFlag('flag','Регистрация')) {
    $content = $twig -> render('registration.twig');
} else {
    $content = 'Содержимое сайта';
}

echo $twig->render('base.twig', [
    'title' => 'Главная',
    'content' => $content,
    'error' => $error,
    'greating' => $greating,
    'login' => $flag
]);