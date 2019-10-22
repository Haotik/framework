<?php

function test($a = "Задайте аргументы для теста")
{
    $params = func_get_args();
    echo "<span class = \"test\">";
    echo "<pre>";
    foreach ($params as $testItem) {
        var_dump($testItem);
    }
    echo "</pre>";
	echo "</span>";
}

function autoloader() 
{
    $classes = scandir(ENGINE_DIR);

    foreach ($classes as $value) {
        
        if (strpos($value, 'CLS') !== false) {
            require_once ENGINE_DIR . $value;
        }
    }
}

function setError($text) {
    global $error;
    $error .= $text . "/";
}

function setGreating($text) {
    global $greating;
    $greating = $text;
}

function checkFlag ($flagName, $value, $method = 'post') {
    if ($method == 'post') {
        if (isset($_POST[$flagName]) AND $_POST[$flagName] == $value) return true;
        else return false;
    } else {
        if (isset($_GET[$flagName]) AND $_GET[$flagName] == $value) return true;
    }
}