<?php
require_once('MysqlModel.php');
require_once('PublicModel.php');

class LoginModel {
    
    public function doLogin($user,$password) {
        $mysql = new mysql();
        return $mysql->doLogin($user,$password);
    }

    public function doRegister($user,$password) {
        $mysql = new mysql();
        return $mysql->doRegister($user,$password);
    }

}