/*
Navicat MySQL Data Transfer

Source Server         : 3306
Source Server Version : 80019
Source Host           : localhost:3306
Source Database       : music

Target Server Type    : MYSQL
Target Server Version : 80019
File Encoding         : 65001

Date: 2021-01-04 13:10:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for gedan
-- ----------------------------
DROP TABLE IF EXISTS `gedan`;
CREATE TABLE `gedan` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `author` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `imgpath` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `intro` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int NOT NULL DEFAULT '0',
  `hits` int NOT NULL DEFAULT '0',
  `updatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of gedan
-- ----------------------------
INSERT INTO `gedan` VALUES ('1', '最·周杰伦', '很官方的官方', '../static/images/gedan2.jpg', '他是周杰伦，是JAY，是周董，是杰伦小公主，也是我们记忆中永远出场都有着独特旋律的男人。从这张歌单里任选一首，就是你和周杰伦的独家记忆！杰伦全新数字单曲《Mojito》已在QQ音乐数字专辑正式上线！喝完周董这杯夏日特调Mojito，开启夏日摇摆时刻', '1', '1123', null);
INSERT INTO `gedan` VALUES ('2', '华语| 经典时光', '很官方的官方', '../static/images/gedan3.jpg', '时光易逝，经典依旧。收藏这份歌单，让黄金岁月静静流淌。', '1', '123', null);
INSERT INTO `gedan` VALUES ('3', '华语| 心中秘境', '很官方的官方', '../static/images/gedan4.jpg', '也许每个人的心中都有一个小小的空间，装着平时不外露的情绪呢～', '1', '4231', null);
INSERT INTO `gedan` VALUES ('4', '华语| 早安民谣', '很官方的官方', '../static/images/gedan18.jpg', '听着舒缓欢快的旋律，迎接阳光明媚的清晨。', '1', '23', null);
INSERT INTO `gedan` VALUES ('5', '阳光下午茶', '很官方的官方', '../static/images/gedan19.jpg', '阳光暖暖的味道，正如这些声音带来的暖意。', '1', '199', null);
INSERT INTO `gedan` VALUES ('6', '轰辉张嘉文丶', '张嘉文_丶', '../static/images/gedan10.jpg', '虎牙张嘉文直播歌单', '0', '20', null);
INSERT INTO `gedan` VALUES ('7', '古风 ：世事不过一场大梦', 'Lemon.', '../static/images/gedan11.jpg', '终于为那一身江南烟雨覆了天下，方知荣华谢后，不过一场，山河永寂，世事不过大梦一场...', '0', '21', null);
INSERT INTO `gedan` VALUES ('8', '高甜时刻', '原创君', '../static/images/gedan12.jpg', '自从遇见了你，我的世界就多了一份甜蜜和一份幸福，也多了一丝勇气和一个目标~', '0', '123', null);
INSERT INTO `gedan` VALUES ('9', '下一首情歌', '与星空同眠', '../static/images/gedan13.jpg', '爱情本来就没什么道理，这些情歌里唱的都像是我和你。下一首是未来，愿一路你都在。这次想用各种语言唱爱你，祝听歌的你每天都是520。', '0', '121', null);
INSERT INTO `gedan` VALUES ('10', '轻眠钢琴曲', '念安娜', '../static/images/gedan14.jpg', '睡不着，来听听这些音乐，让你放松放松', '0', '233', null);
INSERT INTO `gedan` VALUES ('11', '莫文蔚私藏', '爱哭的西瓜', '../static/images/gedan15.jpg', '你可能不了解她，但你一定听过她的歌，这位拥有独特、慵懒、高辨识度嗓音的华语乐坛女神——莫文蔚。', '0', '651', null);
INSERT INTO `gedan` VALUES ('12', '节奏实验室', '电击小子qwq', '../static/images/gedan16.jpg', '悄悄告诉你，你的手机里拥有一个强大的震动引擎，让音乐不再停留于耳边，让节奏在手指尖跃动。', '0', '428', null);
INSERT INTO `gedan` VALUES ('13', '恋爱行星', '永远喜欢小阮', '../static/images/gedan17.jpg', '恋爱中的男女像是一颗宇宙中的行星，在黑暗里发出或明亮或微弱的光芒。银河系中有无数的行星，每一颗都独特而动人。', '0', '999', null);
INSERT INTO `gedan` VALUES ('14', '丧系歌单', '我有佐助', '../static/images/300aasdads.png', '其实人都差不多 新鲜感和热情消失得很快 有新欢有旧爱.', '0', '888', null);
INSERT INTO `gedan` VALUES ('15', '林俊杰歌单', '可惜没如果', '../static/images/qweqwe.jpg', '超级好听，推荐给大家听', '0', '123', null);
INSERT INTO `gedan` VALUES ('16', '超级好听，推荐给大家听', '柏亦希', '../static/images/300asddaasasd.jpg', 'BecauseIdidn′tfeelloved,Iwasthefirstonetogo.\r\n因为感觉不到被爱，所以做了先走的那个人。', '0', '81', null);
INSERT INTO `gedan` VALUES ('17', '第一次遇见你时的欢喜', '喝奶茶吗', '../static/images/300q1.jpg', '酷酷的Rapper，唱着温柔的情歌 本歌单选曲是中文类嘻哈情歌 ', '0', '112', null);
INSERT INTO `gedan` VALUES ('18', '假日派对｜欧美清凉小调', '星辰俱乐部', '../static/images/30asdasdasdasdasdasdasdasd0.jpg', '燥热的夏天需要清凉的音乐来解决你的内心的心情，听这些音乐就对了，轻缓又灵动，让你倍感舒爽，远离夏日的烦闷～', '0', '129', null);

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userid` int NOT NULL,
  `content` varchar(10000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `time` int NOT NULL,
  `gedan` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES ('1', '1', '周董的歌，最抒情，有情调，适合单身男青年感悟良多。', '1609677232', '3');
INSERT INTO `message` VALUES ('2', '1', '从东风破就开始喜欢你 已经过了这么些年还是依旧喜欢你。', '1509617232', '3');
INSERT INTO `message` VALUES ('9', '999', '最爱周杰伦！！！', '1609701124', '1');

-- ----------------------------
-- Table structure for music
-- ----------------------------
DROP TABLE IF EXISTS `music`;
CREATE TABLE `music` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `author` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `imgpath` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `time` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lyric` varchar(10000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `audiopath` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `gedan` int DEFAULT NULL,
  `hits` int NOT NULL DEFAULT '0',
  `rgb` int NOT NULL DEFAULT '0',
  `xgb` int NOT NULL DEFAULT '0',
  `bsb` int NOT NULL DEFAULT '0',
  `ycb` int NOT NULL DEFAULT '0',
  `ndb` int NOT NULL DEFAULT '0',
  `gab` int NOT NULL DEFAULT '0',
  `omb` int NOT NULL DEFAULT '0',
  `rhb` int NOT NULL DEFAULT '0',
  `dyphb` int NOT NULL DEFAULT '0',
  `gfrgb` int NOT NULL DEFAULT '0',
  `scb` int NOT NULL DEFAULT '0',
  `dmyyb` int NOT NULL DEFAULT '0',
  `wlgqb` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of music
-- ----------------------------
INSERT INTO `music` VALUES ('1', '红模仿', '周杰伦', '../static/images/hmf.jpg', '3.02', '<p>中国风的歌曲</p>\r\n                    <p>有增无减\r\n                    </p>\r\n                    <p>是好是坏\r\n                    </p>\r\n                    <p>问方文山最清楚\r\n                    </p>\r\n                    <p>从娘子唱到双截棍\r\n                    </p>\r\n                    <p>东风破到发如雪\r\n                    </p>\r\n                    <p>一路走来始终如一\r\n                    </p>\r\n                    <p>多样的曲风\r\n                    </p>\r\n                    <p>独爱中国风\r\n                    </p>\r\n                    <p>我坚持风格\r\n                    </p>\r\n                    <p>我活在我的世界\r\n                    </p>\r\n                    <p>谁都插不上嘴\r\n                    </p>\r\n                    <p>唱反调 是我的本性\r\n                    </p>\r\n                    <p>出奇不意是我的个性\r\n                    </p>\r\n                    <p>就算我站在山顶\r\n                    </p>\r\n                    <p>也只不过是个平民老百姓\r\n                    </p>\r\n                    <p>但我的肩膀会有两块空地\r\n                    </p>\r\n                    <p>那就是勇气与毅力\r\n                    </p>\r\n                    <p>我要做音乐上的皇帝\r\n                    </p>\r\n                    <p>哼哼哈兮 哼哼哈兮\r\n                    </p>\r\n                    <p>哼哼哈兮 哼哼哈兮\r\n                    </p>\r\n                    <p>下坡的路 不费功夫\r\n                    </p>\r\n                    <p>别人已经帮你铺路\r\n                    </p>\r\n                    <p>但我选择上坡\r\n                    </p>\r\n                    <p>因为我取名叫自负\r\n                    </p>\r\n                    <p>谦虚和那虚伪\r\n                    </p>\r\n                    <p>就只差一个字\r\n                    </p>\r\n                    <p>有时有点分不清\r\n                    </p>\r\n                    <p>因为我喜欢真实的自己\r\n                    </p>\r\n                    <p>我不能够后退\r\n                    </p>\r\n                    <p>因为不是绿叶\r\n                    </p>\r\n                    <p>如果只是点缀\r\n                    </p>\r\n                    <p>愿当皎洁明月\r\n                    </p>\r\n                    <p>小草等待风吹\r\n                    </p>\r\n                    <p>不用靠你的背\r\n                    </p>\r\n                    <p>假如天会很黑\r\n                    </p>\r\n                    <p>我会请嫦娥奔月\r\n                    </p>\r\n                    <p>为什么写这首歌\r\n                    </p>\r\n                    <p>我现在还找不到动机\r\n                    </p>\r\n                    <p>不过用心听下去\r\n                    </p>\r\n                    <p>你会觉得更有意义\r\n                    </p>\r\n                    <p>如果你对未来产生恐惧\r\n                    </p>\r\n                    <p>眼前雾濛濛一片\r\n                    </p>\r\n                    <p>那是因为你没把眼镜给擦干净\r\n                    </p>\r\n                    <p>勇敢走下去\r\n                    </p>\r\n                    <p>这首歌会陪你前进\r\n                    </p>\r\n                    <p>我常常在想宇宙只有一颗太阳\r\n                    </p>\r\n                    <p>为什么我的影子这么多这么像\r\n                    </p>\r\n                    <p>战胜幻象 跟我一样\r\n                    </p>\r\n                    <p>喜欢模仿的朋友们\r\n                    </p>\r\n                    <p>崇拜是件好事\r\n                    </p>\r\n                    <p>欣赏是种美德\r\n                    </p>\r\n                    <p>但走在我后面 我很担心\r\n                    </p>\r\n                    <p>别人会看不见你\r\n                    </p>\r\n                    <p>到最后只是一个接一个的分身\r\n                    </p>\r\n                    <p>这样的鼓励\r\n                    </p>\r\n                    <p>是否太直接 太讽刺\r\n                    </p>\r\n                    <p>老师在讲\r\n                    </p>\r\n                    <p>到底有没有在听啊\r\n                    </p>\r\n                    <p>我告诉你\r\n                    </p>\r\n                    <p>做自己胜于跟太紧\r\n                    </p>\r\n                    <p>最大的敌人就是那内心的自己\r\n                    </p>\r\n                    <p>我不能够后退\r\n                    </p>\r\n                    <p>因为不是绿叶\r\n                    </p>\r\n                    <p>如果只是点缀\r\n                    </p>\r\n                    <p>愿当皎洁明月\r\n                    </p>\r\n                    <p>小草等待风吹\r\n                    </p>\r\n                    <p>不用靠你的背\r\n                    </p>\r\n                    <p>假如天会很黑\r\n                    </p>\r\n                    <p>我会请嫦娥奔月\r\n                    </p>\r\n                    <p>哎呦哎呦喔 哎呦哎呦喔喔\r\n                    </p>\r\n                    <p>哎呦 不错\r\n                    </p>\r\n                    <p>哎呦哎呦喔 哎呦哎呦喔喔\r\n                    </p>\r\n                    <p>哎呦 好久不见\r\n                    </p>\r\n                    <p>哎呦哎呦喔 哎呦哎呦喔喔\r\n                    </p>\r\n                    <p>哎呦 的意思是\r\n                    </p>\r\n                    <p>哎呦哎呦喔 哎呦哎呦喔喔\r\n                    </p>\r\n                    <p>就是你没话讲的时候可以哎呦\r\n                    </p>\r\n                    <p>哎呦哎呦喔 哎呦哎呦喔喔\r\n                    </p>\r\n                    <p>哎呦哎呦喔 哎呦哎呦喔喔\r\n                    </p>\r\n                    <p>哎呦哎呦喔 哎呦哎呦喔喔\r\n                    </p>\r\n                    <p>哎呦哎呦喔 哎呦哎呦喔嘿\r\n                    </p>\r\n                    <p>哎呦哎呦喔 哎呦哎呦喔喔\r\n                    </p>\r\n                    <p>哎呦哎呦喔 哎呦哎呦喔喔\r\n                    </p>\r\n                    <p>哎呦哎呦喔 哎呦哎呦喔喔\r\n                    </p>\r\n                    <p>哎呦哎呦喔 哎呦哎呦喔嘿</p>', '../static/music/周杰伦-红模仿.mp3', '3', '4', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `music` VALUES ('2', 'NUMB', 'LINKENPARK', '../static/images/numb.jpg', '3.07', '<p>I\'m tired of being what you want me to be\r\n                    </p>\r\n                    <p>Feeling so faithless lost under the surface\r\n                    </p>\r\n                    <p>Don\'t know what you\'re expecting of me\r\n                    </p>\r\n                    <p>Put under the pressure of walking in your shoes\r\n                    </p>\r\n                    <p>Caught in the undertow\r\n                    </p>\r\n                    <p>Just caught in the undertow\r\n                    </p>\r\n                    <p>Every step that I take is another mistake to you\r\n                    </p>\r\n                    <p>Caught in the undertow\r\n                    </p>\r\n                    <p>Just caught in the undertow\r\n                    </p>\r\n                    <p>I\'ve become so numb I can\'t feel you there\r\n                    </p>\r\n                    <p>Become so tired so much more aware\r\n                    </p>\r\n                    <p>I\'m becoming this all I want to do\r\n                    </p>\r\n                    <p>Is be more like me and be less like you\r\n                    </p>\r\n                    <p>Can\'t you see that you\'re smothering me\r\n                    </p>\r\n                    <p>Holding too tightly afraid to lose control\r\n                    </p>\r\n                    <p>\'Cause everything that you thought I would be\r\n                    </p>\r\n                    <p>Has fallen apart right in front of you\r\n                    </p>\r\n                    <p>Caught in the undertow\r\n                    </p>\r\n                    <p>Just caught in the undertow\r\n                    </p>\r\n                    <p>Every step that I take is another mistake to you\r\n                    </p>\r\n                    <p>Caught in the undertow\r\n                    </p>\r\n                    <p>Just caught in the undertow\r\n                    </p>\r\n                    <p>And every second I waste is more than I can take\r\n                    </p>\r\n                    <p>I\'ve become so numb I can\'t feel you there\r\n                    </p>\r\n                    <p>Become so tired so much more aware\r\n                    </p>\r\n                    <p>I\'m becoming this all I want to do\r\n                    </p>\r\n                    <p>Is be more like me and be less like you\r\n                    </p>\r\n                    <p>And I know I may end up failing too\r\n                    </p>\r\n                    <p>But I know you were just like me\r\n                    </p>\r\n                    <p>With someone disappointed in you\r\n                    </p>\r\n                    <p>I\'ve become so numb I can\'t feel you there\r\n                    </p>\r\n                    <p>Become so tired so much more aware\r\n                    </p>\r\n                    <p>I\'m becoming this all I want to do\r\n                    </p>\r\n                    <p>Is be more like me and be less like you\r\n                    </p>\r\n                    <p>I\'ve become so numb I can\'t feel you there\r\n                    </p>\r\n                    <p>I\'m tired of being what you want me to be\r\n                    </p>\r\n                    <p>I\'ve become so numb I can\'t feel you there\r\n                    </p>\r\n                    <p>I\'m tired of being what you want me to be</p>', '../static/music/numb.mp3', '3', '20', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `music` VALUES ('3', '在一起嘛好不好', '李荣浩', '../static/images/zyqmhbh.jpg', '4.58', '<p>翻聊天记录等信息等着你回</p>\r\n                    <p>困也不睡</p>\r\n                    <p>昨天说我讨厌今天准时赴约</p>\r\n                    <p>还嘟着嘴</p>\r\n                    <p>该死的世界 是不是了解</p>\r\n                    <p>被巷子里的灯照着的你好美</p>\r\n                    <p>我牵你手就走 你生气却没有</p>\r\n                    <p>松开手</p>\r\n                    <p>我们在一起嘛好不好</p>\r\n                    <p>我们在一起嘛好不好</p>\r\n                    <p>昨天我说最喜欢的女孩子的性格</p>\r\n                    <p>是你的</p>\r\n                    <p>我们在一起嘛好不好</p>\r\n                    <p>我们在一起嘛好不好</p>\r\n                    <p>也许我话不会说也是一种深刻</p>\r\n                    <p>在一起嘛好不好</p>\r\n                    <p>以后的晚餐不再坐你对面</p>\r\n                    <p>只坐你身边</p>\r\n                    <p>最甜的爆米花放在最上面</p>\r\n                    <p>你拿着方便</p>\r\n                    <p>不懂怎么哄你 是因为我可以</p>\r\n                    <p>一开始就不会让你感到生气</p>\r\n                    <p>绝不会让你 受半点的委屈</p>\r\n                    <p>我可以</p>\r\n                    <p>我们在一起嘛好不好</p>\r\n                    <p>我们在一起嘛好不好</p>\r\n                    <p>昨天我说最喜欢的女孩子的性格</p>\r\n                    <p>是你的</p>\r\n                    <p>我们在一起嘛好不好</p>\r\n                    <p>我们在一起嘛好不好</p>\r\n                    <p>也许我话不会说也是一种深刻</p>\r\n                    <p>我们在一起嘛好不好</p>\r\n                    <p>我们在一起嘛好不好</p>\r\n                    <p>昨天我说最喜欢的女孩子的性格</p>\r\n                    <p>是你的</p>\r\n                    <p>我们在一起嘛好不好</p>\r\n                    <p>我们在一起嘛好不好</p>\r\n                    <p>也许我话不会说也是一种深刻</p>', '../static/music/zyqmhbh.m4a', '3', '5', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `music` VALUES ('4', '以父之名', '周杰伦', '../static/images/T002R300x300M000003DFRzD192KKD_1.jpg', '5.40', '<p>Ave Maria grazia ricevuta per la mia famiglia\r\n                    </p>\r\n                    <p>Con risentito con un\'amorevole divino amen\r\n                    </p>\r\n                    <p>Grazie chiedo a te o signore divino\r\n                    </p>\r\n                    <p>In questo giorno di grazia prego per te\r\n                    </p>\r\n                    <p>Ave Maria piena di grazia\r\n                    </p>\r\n                    <p>Il signore e con te\r\n                    </p>\r\n                    <p>Sia fatta la tua volonta\r\n                    </p>\r\n                    <p>Così in cielo e così in terra neil nome\r\n                    </p>\r\n                    <p>Del padre del figliolo e dello spirito santo amen\r\n                    </p>\r\n                    <p>微凉的晨露沾湿黑礼服\r\n                    </p>\r\n                    <p>石板路有雾父在低诉\r\n                    </p>\r\n                    <p>无奈的觉悟只能更残酷\r\n                    </p>\r\n                    <p>一切都为了通往圣堂的路\r\n                    </p>\r\n                    <p>吹不散的雾隐没了意图\r\n                    </p>\r\n                    <p>谁轻柔踱步停住\r\n                    </p>\r\n                    <p>还来不及哭穿过的子弹就带走温度\r\n                    </p>\r\n                    <p>我们每个人都有罪\r\n                    </p>\r\n                    <p>犯着不同的罪\r\n                    </p>\r\n                    <p>我能决定谁对\r\n                    </p>\r\n                    <p>谁又该要沉睡\r\n                    </p>\r\n                    <p>争论不能解决\r\n                    </p>\r\n                    <p>在永无止境的夜\r\n                    </p>\r\n                    <p>关掉你的嘴\r\n                    </p>\r\n                    <p>唯一的恩惠\r\n                    </p>\r\n                    <p>挡在前面的人都有罪\r\n                    </p>\r\n                    <p>后悔也无路可退\r\n                    </p>\r\n                    <p>以父之名判决\r\n                    </p>\r\n                    <p>那感觉没有适合字汇\r\n                    </p>\r\n                    <p>就像边笑边掉泪\r\n                    </p>\r\n                    <p>凝视着完全的黑\r\n                    </p>\r\n                    <p>阻挡悲剧蔓延的悲剧会让我沉醉\r\n                    </p>\r\n                    <p>低头亲吻我的左手\r\n                    </p>\r\n                    <p>换取被宽恕的承诺\r\n                    </p>\r\n                    <p>老旧管风琴在角落\r\n                    </p>\r\n                    <p>一直一直一直伴奏\r\n                    </p>\r\n                    <p>黑色帘幕被风吹动\r\n                    </p>\r\n                    <p>阳光无言地穿透\r\n                    </p>\r\n                    <p>洒向那群被我驯服后的兽\r\n                    </p>\r\n                    <p>沉默地喊叫沉默地喊叫\r\n                    </p>\r\n                    <p>孤单开始发酵\r\n                    </p>\r\n                    <p>不停对着我嘲笑\r\n                    </p>\r\n                    <p>回忆逐渐延烧\r\n                    </p>\r\n                    <p>曾经纯真的画面\r\n                    </p>\r\n                    <p>残忍地温柔出现\r\n                    </p>\r\n                    <p>脆弱时间到\r\n                    </p>\r\n                    <p>我们一起来祷告\r\n                    </p>\r\n                    <p>仁慈的父我已坠入\r\n                    </p>\r\n                    <p>看不见罪的国度\r\n                    </p>\r\n                    <p>请原谅我的自负\r\n                    </p>\r\n                    <p>Ah ya ya check it check it ah ya\r\n                    </p>\r\n                    <p>没人能说没人可说\r\n                    </p>\r\n                    <p>好难承受\r\n                    </p>\r\n                    <p>荣耀的背后刻着一道孤独\r\n                    </p>\r\n                    <p>Ah ya ya check it check it ah ya\r\n                    </p>\r\n                    <p>闭上双眼我又看见\r\n                    </p>\r\n                    <p>当年那梦的画面\r\n                    </p>\r\n                    <p>天空是濛濛的雾\r\n                    </p>\r\n                    <p>Ah ya ya check it check it ah ya\r\n                    </p>\r\n                    <p>父亲牵着我的双手\r\n                    </p>\r\n                    <p>轻轻走过\r\n                    </p>\r\n                    <p>清晨那安安静静的石板路\r\n                    </p>\r\n                    <p>Ah ya ya check it check it ah ya\r\n                    </p>\r\n                    <p>Pie Jesu\r\n                    </p>\r\n                    <p>Qui tollis peccata\r\n                    </p>\r\n                    <p>Dona eis requiem\r\n                    </p>\r\n                    <p>低头亲吻我的左手\r\n                    </p>\r\n                    <p>换取被宽恕的承诺\r\n                    </p>\r\n                    <p>老旧管风琴在角落\r\n                    </p>\r\n                    <p>一直一直一直伴奏\r\n                    </p>\r\n                    <p>黑色帘幕被风吹动\r\n                    </p>\r\n                    <p>阳光无言地穿透\r\n                    </p>\r\n                    <p>洒向那群被我驯服后的兽\r\n                    </p>\r\n                    <p>沉默地喊叫沉默地喊叫\r\n                    </p>\r\n                    <p>孤单开始发酵\r\n                    </p>\r\n                    <p>不停对着我嘲笑\r\n                    </p>\r\n                    <p>回忆逐渐延烧\r\n                    </p>\r\n                    <p>曾经纯真的画面\r\n                    </p>\r\n                    <p>残忍地温柔出现\r\n                    </p>\r\n                    <p>脆弱时间到\r\n                    </p>\r\n                    <p>我们一起来祷告\r\n                    </p>\r\n                    <p>仁慈的父我已坠入\r\n                    </p>\r\n                    <p>看不见罪的国度\r\n                    </p>\r\n                    <p>请原谅我的自负\r\n                    </p>\r\n                    <p>Ah ya ya check it check it ah ya\r\n                    </p>\r\n                    <p>没人能说没人可说\r\n                    </p>\r\n                    <p>好难承受\r\n                    </p>\r\n                    <p>荣耀的背后刻着一道孤独\r\n                    </p>\r\n                    <p>Ah ya ya check it check it ah ya\r\n                    </p>\r\n                    <p>仁慈的父我已坠入\r\n                    </p>\r\n                    <p>看不见罪的国度\r\n                    </p>\r\n                    <p>请原谅我 我的自负\r\n                    </p>\r\n                    <p>刻着一道孤独\r\n                    </p>\r\n                    <p>仁慈的父我已坠入\r\n                    </p>\r\n                    <p>看不见罪的国度\r\n                    </p>\r\n                    <p>请原谅我的自负\r\n                    </p>\r\n                    <p>Ah ya ya check it check it ah ya\r\n                    </p>\r\n                    <p>没人能说没人可说\r\n                    </p>\r\n                    <p>好难承受\r\n                    </p>\r\n                    <p>荣耀的背后刻着一道孤独\r\n                    </p>\r\n                    <p>Ah ya ya check it check it ah ya\r\n                    </p>\r\n                    <p>闭上双眼我又看见\r\n                    </p>\r\n                    <p>（斑驳的家徽擦拭了一夜）\r\n                    </p>\r\n                    <p>当年那梦的画面\r\n                    </p>\r\n                    <p>（才懂的感觉）\r\n                    </p>\r\n                    <p>天空是濛濛的雾\r\n                    </p>\r\n                    <p>（烛光 不不停的摇晃）\r\n                    </p>\r\n                    <p>猫头鹰在窗棂上 对着远方眺望\r\n                    </p>\r\n                    <p>父亲牵着我的双手\r\n                    </p>\r\n                    <p>（通向大厅的长廊）\r\n                    </p>\r\n                    <p>轻轻走过 清晨那\r\n                    </p>\r\n                    <p>（一样说不出的沧桑）\r\n                    </p>\r\n                    <p>安安静静的石板路\r\n                    </p>\r\n                    <p>（没有喧嚣 只有宁静围绕）\r\n                    </p>\r\n                    <p>我 慢慢睡着\r\n                    </p>\r\n                    <p>天 刚刚破晓</p>', '../static/music/yfzm.mp3', '3', '199', '1', '1', '1', '1', '1', '1', '1', '1', '0', '1', '1', '1', '1');
INSERT INTO `music` VALUES ('5', '旧梦一场', '阿悠悠', '../static/images/T002R300x300M000001ooeyd1kAh9w_1.jpg', '2.54', '', '', '3', '500', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `music` VALUES ('6', '晴天', '周杰伦', '../static/images/T002R300x300M000000MkMni19ClKG_3.jpg', '4.29', '', '', '3', '1001', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `music` VALUES ('7', '干杯', '五月天', '../static/images/T002R300x300M000001fbipy4azgKM_1.jpg', '4.49', '', '', '3', '99999', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `music` VALUES ('8', '突然好想你', '五月天', '../static/images/T002R300x300M0000020I7sO0ayXhN_1.jpg', '4.25', '', '', '3', '200', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');

-- ----------------------------
-- Table structure for musicplaytimes
-- ----------------------------
DROP TABLE IF EXISTS `musicplaytimes`;
CREATE TABLE `musicplaytimes` (
  `userid` int NOT NULL,
  `musicid` int NOT NULL,
  `count` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of musicplaytimes
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `passwordmd5` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `txpath` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `nickname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `phone` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `unit` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `xuehao` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `major` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `gxqm` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `zcsj` int DEFAULT NULL,
  `name` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mail` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'test', '123456', 'e10adc3949ba59abbe56e057f20f883e', '../static/images/tx.png', '天涯', '15112341234', '江西师范大学', '201912341234', '网络工程', '我就是我，不一样的烟火！', '1509617232', '，马冬梅', 'tobatu762@qq.com');
INSERT INTO `user` VALUES ('10', 'qwe', 'qweqwe', 'efe6398127928f1b2e9ef3207fb82663', '../static/images/user.png', '', '', '', '', '', '', '1609677232', '', '');
INSERT INTO `user` VALUES ('999', '匿名用户', '', '123', '../static/images/user.png', '匿名用户', '', '', '', '', '', null, '', '');
