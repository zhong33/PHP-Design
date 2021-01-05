# 音乐馆 - PHP动态网站课程设计
### 一、系统简介

* PHP 7.4.0、Mysql 8.0.19、Apache 2.4.41

* 采用MVC架构
* 具有基本的登录、注册、播放、推荐、歌单、留言等功能
* 使用`intval()`、`addslashes()`、`htmlspecialchars()`等函数预防`SQL注入`、`XSS攻击`
* 演示网址：[http://music.ieven762.cn](http://music.ieven762.cn)

### 二、控制器方法

```php
Index()			// 主页
Gedan()			// 歌单
Bangdan()		// 榜单
Login()			// 登录、注册
Profile()		// 个人信息
Shoucang()		// 个人收藏
ChangeInfo()	      // 个人信息修改
PlayMusic()		// 音乐播放
GedanDetail()	      // 歌单详情
AddMessage()	      // 增加留言
```

### 三、注意事项（待开发）

* 头像上传尚未完成
* 留言尚未对用户进行判断，均为匿名用户
* 轮播图、收藏为静态
* 如果您发现了什么漏洞、欢迎与我联系！

