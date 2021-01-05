<?php
require_once('MysqlModel.php');
require_once('PublicModel.php');

class GedanDetailModel {

    public function GetGedanDetail($id) {
        $mysql = new mysql();
        return $mysql->GetGedanDetail($id);
    }
}