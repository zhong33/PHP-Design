<?php
require_once('MysqlModel.php');
require_once('PublicModel.php');

class ProfileModel {
    
    public function getUserInfo($user) {
        $mysql = new mysql();
        $res = $mysql->getUserInfo($user);
        $data = new user();
        $data->id = $res[0];
        $data->txpath = $res[4];
        $data->nickname = $res[5];
        $data->phone = $res[6];
        $data->unit = $res[7];
        $data->xuehao = $res[8];
        $data->major = $res[9];
        $data->gxqm = $res[10];
        $data->zcsj = $res[11];
        $data->name = $res[12];
        $data->email = $res[13];
        return $data;
    }
}