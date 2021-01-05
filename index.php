<?php

define('APP_PATH', __DIR__ . '/');                  // 应用目录为当前目录
require_once("./include/function.php");

$c = isset($_GET['c']) ? $_GET['c'] : 'Index';      // 获取控制器
$c .= 'Controller';
$c_path = './Controller/' . $c . '.php';

$method = isset($_GET['a']) ? $_GET['a'] : 'Index'; // 获取要运行的method
require($c_path);                                   // 加载controller文件
$controller = new $c;                               // 实例化controller文件

$controller->$method();                             // 运行该实例下的action
