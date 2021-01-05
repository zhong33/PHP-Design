<?php
require_once('MysqlModel.php');
require_once('PublicModel.php');

class IndexModel {

    public function getDaily() {
        $mysql = new mysql();
        $res = $mysql->getDaily();
        $data = array();
        for ($i = 0 ; $i < 4 ; $i++) {
            $data[$i] = new song();
            $data[$i]->id = $res[$i][0];
            $data[$i]->name = $res[$i][1];
            $data[$i]->author = $res[$i][2];
            $data[$i]->imgPath = $res[$i][3];
            $data[$i]->time = $res[$i][4];
            $data[$i]->lyric = $res[$i][5];
            $data[$i]->audioPath = $res[$i][6];
            $data[$i]->gedan = $res[$i][7];
        }
        return $data;
    }

    public function getGedan() {
        $mysql = new mysql();
        $res = $mysql->getGedan();
        $data = array();
        for ($i = 0 ; $i < 3 ; $i++) {
            $data[$i] = new gedan();
            $data[$i]->id = $res[$i][0];
            $data[$i]->name = $res[$i][1];
            $data[$i]->author = $res[$i][2];
            $data[$i]->imgPath = $res[$i][3];
            $data[$i]->intro = $res[$i][4];
            $data[$i]->type = $res[$i][5];
        }
        return $data;
    }

    public function getBangdan() {
        $bangdan = array('rgb','xgb','bsb','ycb','ndb','gab','omb','rhb','dyphb','gfrgb','scb','dmyyb','wlgqb');
        $bangdanCn = array('rgb'=>'热歌榜','xgb'=>'新歌榜','bsb'=>'飙升榜','ycb'=>'原创榜','ndb'=>'内地榜','gab'=>'港澳榜','omb'=>'欧美榜','rhb'=>'日韩榜','dyphb'=>'抖音排行榜','gfrgb'=>'国风热歌榜','scb'=>'说唱榜','dmyyb'=>'动漫音乐榜','wlgqb'=>'网络歌曲榜');
        $mysql = new mysql();
        $res = $mysql->getBangdan();
        $data = array();
        for ($i = 0 ; $i < count($bangdan) ; $i++){
            $data[$i] = new bangdan();
            $data[$i]->name = $bangdanCn[$bangdan[$i]];
            $data[$i]->music = array();
            for ($j = 0 ; $j < count($res[$bangdan[$i]]) ; $j++){
                $data[$i]->music[$j] = new song();
                $data[$i]->music[$j]->id = $res[$bangdan[$i]][$j][0];
                $data[$i]->music[$j]->name = $res[$bangdan[$i]][$j][1];
                $data[$i]->music[$j]->author = $res[$bangdan[$i]][$j][2];
                $data[$i]->music[$j]->time = $res[$bangdan[$i]][$j][4];
            }
        }
        return $data;
    }
}