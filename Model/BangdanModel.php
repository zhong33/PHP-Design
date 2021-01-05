<?php
require_once('MysqlModel.php');
require_once('PublicModel.php');

class BangdanModel{
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