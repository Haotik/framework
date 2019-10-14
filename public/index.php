<?php
/**
 * Created by PhpStorm.
 * User: andrey
 * Date: 09.10.19
 * Time: 13:36
 */
require_once '../config/config.php';

$user = new User();
if (isset($_POST['flag']) AND $_POST['flag'] == "Войти") {
    $content = $twig -> render('autorisation.twig');
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