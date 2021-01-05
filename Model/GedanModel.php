<?php
require_once('MysqlModel.php');
require_once('PublicModel.php');

class GedanModel{
    
    public function getGfGedan($a) {
        $mysql = new mysql();
        $res = $mysql->getGfGedan($a);
        $data = array();
        for ($i = 0 ; $i < count($res) ; $i++) {
            $data[$i] = new gedan();
            $data[$i]->id = $res[$i][0];
            $data[$i]->name = $res[$i][1];
            $data[$i]->author = $res[$i][2];
            $data[$i]->imgPath = $res[$i][3];
            $data[$i]->intro = $res[$i][4];
            $data[$i]->type = $res[$i][5];
            $data[$i]->hits = $res[$i][6];
            $data[$i]->updatetime = $res[$i][7];
        }
        return $data;
    }

    public function getYhGedan($a) {
        $mysql = new mysql();
        $res = $mysql->getYhGedan($a);
        $data = array();
        for ($i = 0 ; $i < count($res) ; $i++) {
            $data[$i] = new gedan();
            $data[$i]->id = $res[$i][0];
            $data[$i]->name = $res[$i][1];
            $data[$i]->author = $res[$i][2];
            $data[$i]->imgPath = $res[$i][3];
            $data[$i]->intro = $res[$i][4];
            $data[$i]->type = $res[$i][5];
            $data[$i]->hits = $res[$i][6];
            $data[$i]->updatetime = $res[$i][7];
        }
        return $data;
    }

    public function jugGpage() {
        $mysql = new mysql();
        $res = $mysql->jugGpage();
        return ceil($res/4);
    }

    public function jugYpage() {
        $mysql = new mysql();
        $res = $mysql->jugYpage();
        return ceil($res/8);
    }
}