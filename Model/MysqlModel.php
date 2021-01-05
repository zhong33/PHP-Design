<?php

require_once('PublicModel.php');

class mysql{

    // Mysql连接
    public function connect() {
        $servername = "localhost";
        $username = 'root';
        $password = '';
        $dbname = 'music';

        $conn = new mysqli($servername, $username, $password, $dbname);
        if ($conn->connect_error) {
            die("连接失败: " . $conn->connect_error);
        }
        return $conn;
    }

    // 随机获取每日推荐的四首歌曲
    public function getDaily() {
        $mysql = new mysql();
        $conn = $mysql->connect();
        $sql = "SELECT * FROM music ORDER BY RAND() LIMIT 0,4";
        $res = $conn->query($sql);
        $res = mysqli_fetch_all($res);
        $conn->close();
        return $res;
    }

    // 随机获取推荐歌单
    public function getGedan() {
        $mysql = new mysql();
        $conn = $mysql->connect();
        $sql = "SELECT * FROM gedan WHERE type=1 ORDER BY RAND() LIMIT 0,3";
        $res = $conn->query($sql);
        $res = mysqli_fetch_all($res);
        $conn->close();
        return $res;
    }

    // 获取4条官方歌单（按照播放量排序）
    public function getGfGedan($a) {
        $mysql = new mysql();
        $conn = $mysql->connect();
        $a = 4 * ($a-1);
        $sql = "SELECT * FROM gedan WHERE type=1 ORDER BY hits DESC LIMIT ".$a.",4";
        $res = $conn->query($sql);
        $res = mysqli_fetch_all($res);
        $conn->close();
        return $res;
    }

    // 获取8条用户歌单（按照播放量排序）
    public function getYhGedan($a) {
        $mysql = new mysql();
        $conn = $mysql->connect();
        $a = 8 * ($a-1);
        $sql = "SELECT * FROM gedan WHERE type=0 ORDER BY hits DESC LIMIT ".$a.",8";
        $res = $conn->query($sql);
        $res = mysqli_fetch_all($res);
        $conn->close();
        return $res; 
    }

    // 获取榜单
    public function getBangdan() {
        $bangdan = array('rgb','xgb','bsb','ycb','ndb','gab','omb','rhb','dyphb','gfrgb','scb','dmyyb','wlgqb');
        $data = array();
        $mysql = new mysql();
        $conn = $mysql->connect();
        for ($i = 0 ; $i < count($bangdan) ; $i++){
            $sql = "SELECT * FROM music WHERE " .$bangdan[$i]."=1 ORDER BY hits DESC LIMIT 0,20";
            $res = $conn->query($sql);
            $data[$bangdan[$i]] = mysqli_fetch_all($res);
        }
        $conn->close();
        return $data;
    }

    // 判断页码
    public function jugGpage() {
        $mysql = new mysql();
        $conn = $mysql->connect();
        $sql = "SELECT count(*) FROM gedan WHERE type=1";
        $res = $conn->query($sql);
        $res = mysqli_fetch_all($res);
        $conn->close();
        return $res[0][0];
    }

    public function jugYpage() {
        $mysql = new mysql();
        $conn = $mysql->connect();
        $sql = "SELECT count(*) FROM gedan WHERE type=0";
        $res = $conn->query($sql);
        $res = mysqli_fetch_all($res);
        $conn->close();
        return $res[0][0];
    }

    // 登录
    public function doLogin($user,$password) {
        $mysql = new mysql();
        $conn = $mysql->connect();
        $sql = "SELECT passwordmd5 FROM user WHERE username = '".$user."'";
        $res = $conn->query($sql);
        $res = mysqli_fetch_all($res);
        if ($res) {
            return md5($password) == $res[0][0] ? true : false;
        } else {
            return false;
        }
    }

    // 注册
    public function doRegister($user,$password) {
        $mysql = new mysql();
        $conn = $mysql->connect();
        $sql1 = "SELECT * FROM user WHERE username = '".$user."'";
        $sql2 = "INSERT INTO user (username,password,passwordmd5,txpath,zcsj) VALUES ('".$user."','".$password."','".md5($password)."','../static/images/user.png',".time().")";
        $res1 = $conn->query($sql1);
        $res1 = mysqli_fetch_all($res1);
        if (!$res1) {
            $res2 = $conn->query($sql2);
            if ($res2) {
                return true;
            } else {
                return false;
            }
        } else {
            return false;
        }
    }

    public function getTxpath($user) {
        $mysql = new mysql();
        $conn = $mysql->connect();
        $sql = "SELECT txpath FROM user WHERE username = '".$user."'";
        $res = $conn->query($sql);
        $res = mysqli_fetch_all($res);
        return $res[0][0];
    }

    // 获取用户信息
    public function getUserInfo($user) {
        $mysql = new mysql();
        $conn = $mysql->connect();
        $sql = "SELECT * FROM user WHERE username = '".$user."'";
        $res = $conn->query($sql);
        $res = mysqli_fetch_all($res);
        return $res[0];
    }

    public function getUserInfoById($id) {
        $mysql = new mysql();
        $conn = $mysql->connect();
        $sql = "SELECT * FROM user WHERE id = '".$id."'";
        $res = $conn->query($sql);
        $res = mysqli_fetch_all($res);
        return $res[0];
    }

    // 修改用户信息
    public function changeUserInfo($name,$user) {
        $mysql = new mysql();
        $conn = $mysql->connect();
        $sql = "UPDATE user SET name='".$user->name."',nickname='".$user->nickname."',phone='".$user->phone."',mail='".$user->email."',unit='".$user->unit."',xuehao='".$user->xuehao."',major='".$user->major."',gxqm='".$user->gxqm."' WHERE username='".$name."'";
        $res = $conn->query($sql);
        return $res;
    }

    // 查询音乐路径
    public function GetMusicPath($id) {
        $mysql = new mysql();
        $conn = $mysql->connect();
        $sql = "SELECT * FROM music WHERE id=".$id;
        $res = $conn->query($sql);
        $res = mysqli_fetch_all($res);
        return $res[0];
    }

    // 获取歌单详细信息
    public function GetGedanDetail($id) {
        $mysql = new mysql();
        $conn = $mysql->connect();
        $sql1 = "SELECT * FROM gedan WHERE id=".$id;
        $sql2 = "SELECT * FROM music WHERE gedan=".$id;
        $sql3 = "SELECT * FROM message WHERE gedan=".$id." limit 0,4";
        $res = array();
        $res1 = $conn->query($sql1);
        $res2 = $conn->query($sql2);
        $res3 = $conn->query($sql3);
        $res1 = mysqli_fetch_all($res1)[0];
        $res2 = mysqli_fetch_all($res2);
        $res3 = mysqli_fetch_all($res3);
        $res['gedan'] = $res1;
        $res['music'] = $res2;
        $res['message'] = $res3;
        return $res;
    }

    // 增加留言
    public function AddMessage($content,$gedan) {
        $mysql = new mysql();
        $conn = $mysql->connect();
        $sql = "INSERT INTO message (userid,content,gedan,time) VALUES ('999','".$content."','".$gedan."','".time()."')";
        $res = $conn->query($sql);
        return $res;
    }
}
