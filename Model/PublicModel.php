<?php

class song {
    private $id;        // id
    private $name;      // 歌名
    private $author;    // 作者
    private $imgPath;   // 歌曲封面路径
    private $audioPath; // 音频路径
    private $intro;     // 简介
    private $time;      // 时长
    private $lyric;     // 歌词
    private $gedan;     // 所属歌单

    public function __set($name, $value){
        $this->$name = $value;
    }
    
    public function __get($name){
        return $this->$name;
    }
}

class gedan {
    private $id;        // id
    private $name;      // 歌单名称
    private $author;    // 歌单作者
    private $imgPath;   // 歌单封面路径
    private $intro;     // 歌单简介
    private $type;      // 歌单类型
    private $hits;      // 歌单播放量
    private $updatetime;// 更新时间

    public function __set($name, $value){
        $this->$name = $value;
    }
    
    public function __get($name){
        return $this->$name;
    }
}

class bangdan {
    private $name;      // 榜单名称
    public $music;      // 榜单所含歌曲
        
    public function __set($name, $value){
        $this->$name = $value;
    }
    
    public function __get($name){
        return $this->$name;
    }
}

class user {
    private $id;        // id
    private $name;      // 真实姓名
    private $username;  // 账号
    private $password;  // 密码
    private $nickname;  // 昵称
    private $txpath;    // 头像路径
    private $phone;     // 手机号码
    private $email;     // 邮箱
    private $unit;      // 学校/单位
    private $xuehao;    // 学号
    private $major;     // 专业
    private $gxqm;      // 个性签名
    private $zcsj;      // 注册时长

    public function __set($name, $value){
        $this->$name = $value;
    }
    
    public function __get($name){
        return $this->$name;
    }
}