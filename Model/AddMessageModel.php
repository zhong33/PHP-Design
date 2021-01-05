<?php
require_once('MysqlModel.php');
require_once('PublicModel.php');

class AddMessageModel {

    public function AddMessage($content,$gedan) {
        $mysql = new mysql();
        return $mysql->AddMessage($content,$gedan);
    }
}