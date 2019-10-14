<?php
/**
 * Created by PhpStorm.
 * User: andrey
 * Date: 11.10.19
 * Time: 10:10
 */

class User
{
    public function __construct()
    {
        $this->db = new PDO(DSN, DB_USER, DB_PASS);

        $this->user = $this->checkUser();

        if (isset($_POST['flag']) AND $_POST['flag'] == "Выйти") {
            $this->logout();
        }

        if ($this->user != false) {
            $this -> setSession();
        }

      }

    private function checkUser() {

        session_start();

        if (!isset($_SESSION['login'])) {

            if (isset($_POST['login']) and isset($_POST['password'])) {

                $this->login = $_POST['login'];
                $this->password = md5($_POST['password'] . SALT);

                $sql = "SELECT name, surname, phone, email, role, login  FROM `users` WHERE `login` = '$this->login' AND `password` = '$this->password'";

                $queryResult = $this->db->query($sql);
                try {
                    return array_unique($queryResult->fetch());
                } catch (Exception $x) {
                    setError("Пользователь с таким логином и паролем не найден.");
                    return false;
                }
            }
            setGreating("Здравствуйте, войдите пожалуйста");
        } else {
            setGreating("Вы вошли как " . $_SESSION['login']);
            $this->setFlag('Выйти');
        }
    }

    private function setSession(){

        try {
            $_SESSION['user'] = $this->user['name'];
        } catch (Exception $x) {
            setError("Не указано имя пользователя.");
        }
        $_SESSION['login'] = $this->user['login'];
        if ($this->user['role'] != 1) {
            $_SESSION['admin'] = true;
        }
        setGreating("Здравствуйте вы вошли как " . $_SESSION['login']);
        $this->setFlag('Выйти');
    }

    private function logout(){
        $_SESSION = array();
        setGreating('Работа под пользователем завершена');
        $this->setFlag("Войти");
    }

    private function setFlag($string){
        global $flag;
        $flag = $string;
    }
}