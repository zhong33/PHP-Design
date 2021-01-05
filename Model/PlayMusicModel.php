<?php
require_once('MysqlModel.php');
require_once('PublicModel.php');

class PlayMusicModel {

    public function GetMusicPath($id) {
        $mysql = new mysql();
        return $mysql->GetMusicPath($id);
    }
}