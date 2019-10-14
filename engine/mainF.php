<?php

function test($value)
{
    echo "<span class = \"test\">" ;
	echo "<pre>";
	var_dump($value);
	echo "</pre>";
	echo "</span>";
	//die;
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
