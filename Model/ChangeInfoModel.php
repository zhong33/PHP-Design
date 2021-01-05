<?php
require_once('MysqlModel.php');
require_once('PublicModel.php');

class ChangeInfoModel {

    public function ChangeUserInfo($name,$user) {
        $mysql = new mysql();
        return $mysql->changeUserInfo($name,$user);
    }
}