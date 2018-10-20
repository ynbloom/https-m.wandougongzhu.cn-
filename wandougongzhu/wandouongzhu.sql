/*
Navicat MySQL Data Transfer

Source Server         : jstest
Source Server Version : 50508
Source Host           : localhost:3306
Source Database       : wandouongzhu

Target Server Type    : MYSQL
Target Server Version : 50508
File Encoding         : 65001

Date: 2018-10-15 16:21:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `banner`
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner` (
  `sid` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(200) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of banner
-- ----------------------------
INSERT INTO `banner` VALUES ('1', 'https://ossimg.wandougongzhu.cn/0d6725e11206a832d73df7f861ba3bac.png@1242w_666h_1l.webp');
INSERT INTO `banner` VALUES ('2', 'https://ossimg.wandougongzhu.cn/dccfa2b0f570495235e5833979a25113.png@1242w_666h_1l.webp');
INSERT INTO `banner` VALUES ('3', 'https://ossimg.wandougongzhu.cn/59668447b01b8bfc2561aab1d5bb57dc.jpg@1242w_666h_1l.webp');
INSERT INTO `banner` VALUES ('4', 'https://ossimg.wandougongzhu.cn/a4bf566f49649de3c065417dcd3efa9d.jpg@1242w_666h_1l.webp');
INSERT INTO `banner` VALUES ('5', 'https://ossimg.wandougongzhu.cn/4c82d89253303a41945951925dd4f9ed.png@1242w_666h_1l.webp');
INSERT INTO `banner` VALUES ('6', 'https://ossimg.wandougongzhu.cn/d8fe578842205bfefc7fa9d20221ab95.png@1242w_666h_1l.webp');
INSERT INTO `banner` VALUES ('7', 'https://ossimg.wandougongzhu.cn/1da21a60d02a44ec7aaa2af2cdb540f9.png@1242w_666h_1l.webp');

-- ----------------------------
-- Table structure for `beauty`
-- ----------------------------
DROP TABLE IF EXISTS `beauty`;
CREATE TABLE `beauty` (
  `sid` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(200) NOT NULL,
  `title` varchar(20) NOT NULL,
  `content` varchar(50) NOT NULL,
  `price` varchar(8) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of beauty
-- ----------------------------
INSERT INTO `beauty` VALUES ('1', 'https://ossimg.wandougongzhu.cn/c55499258ee482e0d75db50bfc19c39d.png@500w_4000h_1l_1wh_1pr.jpg', '给头皮脸的待遇', 'ASTALIFT 艾诗缇 头皮集中护理精华 150ml', '437');
INSERT INTO `beauty` VALUES ('2', 'https://ossimg.wandougongzhu.cn/11d95b0f0f692e2d575d6d76a8b4e66b.png@500w_4000h_1l_1wh_1pr.jpg', '真正无添加的古法制皂', 'MATSUYAMA 松山油脂 薄荷香皂 100g', '19');
INSERT INTO `beauty` VALUES ('3', 'https://ossimg.wandougongzhu.cn/435faa31e58671e61b35ea3fa7a39f63.png@500w_4000h_1l_1wh_1pr.jpg', '大碗湿敷必备', 'NATURIE 娥佩兰 薏仁水Naturie Imju保湿化妆水 500ML', '56');
INSERT INTO `beauty` VALUES ('4', 'https://ossimg.wandougongzhu.cn/a0f4a75c22734364845c4353c8fcb1f9.png@500w_4000h_1l_1wh_1pr.jpg', '厚度仅有1毫米', 'Laurier 乐而雅 瞬吸超薄日用卫生巾 25CM', '35');
INSERT INTO `beauty` VALUES ('5', 'https://ossimg.wandougongzhu.cn/a03b29bc93fb82fb27aa33779d06d813.png@500w_4000h_1l_1wh_1pr.jpg', '一滴就能水嫩柔滑', 'ALOE 太阳社 玻尿酸透明质酸原液高效保湿 10ML', '39');
INSERT INTO `beauty` VALUES ('6', 'https://ossimg.wandougongzhu.cn/2b5c61bcfefd18e3ccaa2f05387a980e.png@500w_4000h_1l_1wh_1pr.jpg', '为你的眼部保驾护航', 'DETCLEAR 明色 胎盘素药用美白抗皱眼霜 30g', '77');

-- ----------------------------
-- Table structure for `brand`
-- ----------------------------
DROP TABLE IF EXISTS `brand`;
CREATE TABLE `brand` (
  `sid` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(200) NOT NULL,
  `logo` varchar(200) NOT NULL,
  `title` varchar(20) NOT NULL,
  `content` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of brand
-- ----------------------------
INSERT INTO `brand` VALUES ('1', 'https://ossimg.wandougongzhu.cn/6ff432819d176c641414ef7c2ea642f0.png@500w_4000h_1l_1wh_1pr.jpg', 'https://ossimg.wandougongzhu.cn/b5d086628b19ec2f260b59fc4eb3dd53.jpg@300w_300h_1l_1wh_1pr.jpg', '路易威登', '时尚旅行艺术的象征');
INSERT INTO `brand` VALUES ('2', 'https://ossimg.wandougongzhu.cn/62c02bcba4164ea1df57557d5c63d27b.jpg@500w_4000h_1l_1wh_1pr.jpg', 'https://ossimg.wandougongzhu.cn/937ae319dcd2076f4b0f76de67887e1c.jpg@300w_300h_1l_1wh_1pr.jpg', '资生堂', '专注东方美学');
INSERT INTO `brand` VALUES ('3', 'https://ossimg.wandougongzhu.cn/af07bdb9bfdcfa0d355aee58abe01a67.png@500w_4000h_1l_1wh_1pr.jpg', 'https://ossimg.wandougongzhu.cn/c96a2dd3689d4d86d0b14ae473abbd22.jpg@300w_300h_1l_1wh_1pr.jpg', '日本香堂', '历史悠久的香堂老铺');
INSERT INTO `brand` VALUES ('4', 'https://ossimg.wandougongzhu.cn/1d41f335f153ea90846a21cabbbde0e8.jpg@500w_4000h_1l_1wh_1pr.jpg', 'https://ossimg.wandougongzhu.cn/68b66990b90cb4210b42956772d9d5de.png@300w_300h_1l_1wh_1pr.jpg', 'envie', '世界观的重铸');

-- ----------------------------
-- Table structure for `fashon`
-- ----------------------------
DROP TABLE IF EXISTS `fashon`;
CREATE TABLE `fashon` (
  `f_sid` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `f_url` varchar(999) NOT NULL,
  `f_title` varchar(20) NOT NULL,
  `f_content` varchar(50) NOT NULL,
  `f_details` varchar(100) NOT NULL,
  `f_price` float(8,2) NOT NULL,
  `f_re_price` float(8,2) NOT NULL,
  PRIMARY KEY (`f_sid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fashon
-- ----------------------------
INSERT INTO `fashon` VALUES ('1', 'https://ossimg.wandougongzhu.cn/9933043ec70c9d7b819375ee990ac1ad.png@900w_4000h_1l_1wh_1pr.jpg,https://ossimg.wandougongzhu.cn/08351abab2bd231521e7fd50593378e7.png@900w_4000h_1l_1wh_1pr.jpg,https://ossimg.wandougongzhu.cn/0ec93e8dcccd34dfb1930db20656b607.png@900w_4000h_1l_1wh_1pr.jpg,https://ossimg.wandougongzhu.cn/a020572973bdc72bebd2b5a591a2dd80.png@900w_4000h_1l_1wh_1pr.jpg,https://ossimg.wandougongzhu.cn/658460a96ca9d35522a4fd683c8d16f2.png@900w_4000h_1l_1wh_1pr.jpg,https://ossimg.wandougongzhu.cn/7e4e1b9bfc97250df93db8e3d35ec41f.png@900w_4000h_1l_1wh_1pr.jpg', '秋冬新款复古百搭', 'Samantha Vega 蛙嘴式单肩包 小号 黑色', '非常适合秋冬背的复古款包包，小巧可爱，非常喜欢，很百搭。', '1078.00', '1286.00');
INSERT INTO `fashon` VALUES ('2', 'https://ossimg.wandougongzhu.cn/b44fc15afdf2eb024f2096c8ed05e61d.png@900w_4000h_1l_1wh_1pr.jpg,https://ossimg.wandougongzhu.cn/b7f00c86392d71c161f3ecb2030a69f7.png@900w_4000h_1l_1wh_1pr.jpg,https://ossimg.wandougongzhu.cn/31aa3469ed3d7864a1b7e5595637d9e7.png@900w_4000h_1l_1wh_1pr.jpg,https://ossimg.wandougongzhu.cn/49a67b9c237f60e0c389ddd3ae1aa5c7.png@900w_4000h_1l_1wh_1pr.jpg,https://ossimg.wandougongzhu.cn/cad4509ec460b01b079d13382d38f366.png@900w_4000h_1l_1wh_1pr.jpg', '印花潮牌衬衫', 'X-GIRL 印花LOGO衬衫 粉红色 1', '有点类似风衣的设计，很适合秋冬穿，长度也正好，显高显瘦，很喜欢！', '825.00', '1154.00');
INSERT INTO `fashon` VALUES ('3', 'https://ossimg.wandougongzhu.cn/854f6d9f3136b2914836b9197b7fe035.png@900w_4000h_1l_1wh_1pr.jpg,https://ossimg.wandougongzhu.cn/fcb43db1ce900bfe04de7c1e21691934.png@900w_4000h_1l_1wh_1pr.jpg,https://ossimg.wandougongzhu.cn/e2b3ac9f80f3309d65c665809ffaaf16.png@900w_4000h_1l_1wh_1pr.jpg,https://ossimg.wandougongzhu.cn/2442a98e69037d7da3f6395f87c6cf87.png@900w_4000h_1l_1wh_1pr.jpg', '秋季时尚冲锋衣', 'MILKFED. 印刷logo滑雪衣 黑色 S', '休闲百搭的靴子，松紧设计，穿脱很方便，搭配休闲装或者裙装都很合适。', '963.00', '1348.00');
INSERT INTO `fashon` VALUES ('4', 'https://ossimg.wandougongzhu.cn/32bd010788f760db1cce36cefbd9f6c0.png@900w_4000h_1l_1wh_1pr.jpg,https://ossimg.wandougongzhu.cn/dfb42a7aaa4f5ed6796960878906b0ae.png@900w_4000h_1l_1wh_1pr.jpg,https://ossimg.wandougongzhu.cn/34f48a9aa347d395916077ae7cb5519d.png@900w_4000h_1l_1wh_1pr.jpg,https://ossimg.wandougongzhu.cn/6dd942f822dc3008d04d5eaa95ca2f49.png@900w_4000h_1l_1wh_1pr.jpg,https://ossimg.wandougongzhu.cn/578b13d74b955f3b310f51b1d601a7f2.png@900w_4000h_1l_1wh_1pr.jpg,https://ossimg.wandougongzhu.cn/73727241951d81fcfdeef54cbad368e0.png@900w_4000h_1l_1wh_1pr.jpg,https://ossimg.wandougongzhu.cn/f1bc08ee48c22dd79861c1c1af222d33.png@900w_4000h_1l_1wh_1pr.jpg,https://ossimg.wandougongzhu.cn/1fc2d483fdd5c704f7a29a1fb1c15a6a.png@900w_4000h_1l_1wh_1pr.jpg', '纽扣设计复古显瘦', 'FABIA 纽扣半身裙 卡其色 M', '有点类似风衣的设计，很适合秋冬穿，长度也正好，显高显瘦，很喜欢！', '409.00', '574.00');
INSERT INTO `fashon` VALUES ('5', 'https://ossimg.wandougongzhu.cn/aa4f9fd41baa6aa28c42cff3c1ad0f6c.png@900w_4000h_1l_1wh_1pr.jpg,https://ossimg.wandougongzhu.cn/87f58d6d8781de89e2be55fdbf77d7bd.png@900w_4000h_1l_1wh_1pr.jpg,https://ossimg.wandougongzhu.cn/e51add6b20ebd92e09ff1c32fb963ce2.png@900w_4000h_1l_1wh_1pr.jpg,https://ossimg.wandougongzhu.cn/20ee436c7aac3673160cb5a8e93d4d4c.png@900w_4000h_1l_1wh_1pr.jpg', '松紧设计穿脱方便', 'madras modello 圆头松紧带女靴 灰色-天鹅绒 24.5cm', '休闲百搭的靴子，松紧设计，穿脱很方便，搭配休闲装或者裙装都很合适。', '1101.00', '1541.00');
INSERT INTO `fashon` VALUES ('6', 'https://ossimg.wandougongzhu.cn/7ba42654bf697ae61c7816a86dec5c7e.png@900w_4000h_1l_1wh_1pr.jpg,https://ossimg.wandougongzhu.cn/f84d9865e35e08348bc8ea0d02720faa.png@900w_4000h_1l_1wh_1pr.jpg,https://ossimg.wandougongzhu.cn/649d1e3a0eb36e45aa9816ce26bbe5b9.png@900w_4000h_1l_1wh_1pr.jpg,https://ossimg.wandougongzhu.cn/ad2dd2f7ea52aee10a9e6ac73a78136e.png@900w_4000h_1l_1wh_1pr.jpg,https://ossimg.wandougongzhu.cn/cbc96466a5a3b2c6738f3ee980fd2972.png@900w_4000h_1l_1wh_1pr.jpg,https://ossimg.wandougongzhu.cn/b96cf6918a5838b8980dd844607e3a9f.png@900w_4000h_1l_1wh_1pr.jpg', '铆钉更时尚', 'Samantha Thavasa 新款铆钉手柄侧褶方包 小号 白色', '包包很有设计感，好像是新款呢，很好看，铆钉的设计很特别。', '345.00', '3261.00');

-- ----------------------------
-- Table structure for `food`
-- ----------------------------
DROP TABLE IF EXISTS `food`;
CREATE TABLE `food` (
  `food_sid` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `food_url` varchar(100) NOT NULL,
  `food_title` varchar(20) NOT NULL,
  `food_content` varchar(50) NOT NULL,
  `food_price` varchar(8) NOT NULL,
  PRIMARY KEY (`food_sid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of food
-- ----------------------------
INSERT INTO `food` VALUES ('1', 'https://ossimg.wandougongzhu.cn/a38ae2412535d95335c31796f7f8f8ba.png@500w_4000h_1l_1wh_1pr.jpg', '薯片礼盒幸福味道', 'Calbee 卡乐比 厚切薯片 2018限定幸福礼盒装', '105');
INSERT INTO `food` VALUES ('2', 'https://ossimg.wandougongzhu.cn/dc5f188082f82d8c7aa51bc52825eece.png@500w_4000h_1l_1wh_1pr.jpg', '果蔬清洁新革命', 'MIRACLE POWER日本汉方研究所 贝壳粉蔬果清洗剂 90g', '65');
INSERT INTO `food` VALUES ('3', 'https://ossimg.wandougongzhu.cn/35f5ab3e19d3aab7a453cd4fb85a8c9b.png@500w_4000h_1l_1wh_1pr.jpg', '超方便去皮擦', 'LEC 去蔬菜皮海绵擦 S712 14g', '35');
INSERT INTO `food` VALUES ('4', 'https://ossimg.wandougongzhu.cn/316a53fa63a3b235532ab1d7afb3b88d.png@500w_4000h_1l_1wh_1pr.jpg', '毫不费力的削皮', 'KYOCERA 京瓷 陶瓷削皮器 橙色 CP-99', '68');
INSERT INTO `food` VALUES ('5', 'https://ossimg.wandougongzhu.cn/2718526fe4db7a319c70066234392d77.png@500w_4000h_1l_1wh_1pr.jpg', '少女心厨具', 'KYOCERA 京瓷 陶瓷削皮器 hello kitty蓝色 1把', '84');
INSERT INTO `food` VALUES ('6', 'https://ossimg.wandougongzhu.cn/787a1cbd6f51381061c94ff25cdb5a8f.png@500w_4000h_1l.webp', '可以喝的洗洁精', 'ECOVER 蔬果餐具环保洗洁精 无香型 500ml', '57');

-- ----------------------------
-- Table structure for `form`
-- ----------------------------
DROP TABLE IF EXISTS `form`;
CREATE TABLE `form` (
  `sid` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `phone` varchar(11) NOT NULL,
  `password` varchar(40) NOT NULL,
  `redate` datetime NOT NULL,
  PRIMARY KEY (`sid`,`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of form
-- ----------------------------
INSERT INTO `form` VALUES ('4', '127', '0', '2018-10-10 18:59:54');
INSERT INTO `form` VALUES ('5', '127', '0', '2018-10-10 19:05:10');
INSERT INTO `form` VALUES ('6', '13578945612', '96e79218965eb72c92a5', '2018-10-10 19:09:21');
INSERT INTO `form` VALUES ('7', '12345678912', 'e10adc3949ba59abbe56', '2018-10-10 19:31:38');
INSERT INTO `form` VALUES ('8', '12345678912', 'e10adc3949ba59abbe56', '2018-10-10 19:33:17');
INSERT INTO `form` VALUES ('9', '12345678912', 'e10adc3949ba59abbe56', '2018-10-10 19:35:28');
INSERT INTO `form` VALUES ('10', '12345678912', 'e10adc3949ba59abbe56', '2018-10-10 19:36:56');
INSERT INTO `form` VALUES ('11', '13517894561', 'e10adc3949ba59abbe56', '2018-10-10 19:39:38');
INSERT INTO `form` VALUES ('12', '15956069174', 'e10adc3949ba59abbe56', '2018-10-10 20:47:11');
INSERT INTO `form` VALUES ('13', '15077930694', '71b3b26aaa319e0cdf6f', '2018-10-10 20:50:56');
INSERT INTO `form` VALUES ('14', '14556789123', '96e79218965eb72c92a549dd5a330112', '2018-10-12 13:17:48');
INSERT INTO `form` VALUES ('15', '11111111111', 'e10adc3949ba59abbe56e057f20f883e', '2018-10-14 17:08:49');
INSERT INTO `form` VALUES ('16', '22222222222', '96e79218965eb72c92a549dd5a330112', '2018-10-15 08:26:53');
INSERT INTO `form` VALUES ('17', '33333333333', 'e10adc3949ba59abbe56e057f20f883e', '2018-10-15 08:46:37');
INSERT INTO `form` VALUES ('18', '55555555555', '5b1b68a9abf4d2cd155c81a9225fd158', '2018-10-15 16:09:19');
INSERT INTO `form` VALUES ('19', '15956069172', 'e10adc3949ba59abbe56e057f20f883e', '2018-10-15 16:11:20');

-- ----------------------------
-- Table structure for `guesslove`
-- ----------------------------
DROP TABLE IF EXISTS `guesslove`;
CREATE TABLE `guesslove` (
  `sid` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(999) NOT NULL,
  `pic` varchar(200) NOT NULL,
  `title` varchar(20) NOT NULL,
  `activity` varchar(10) NOT NULL,
  `content` varchar(50) NOT NULL,
  `price` float(8,2) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of guesslove
-- ----------------------------
INSERT INTO `guesslove` VALUES ('1', 'https://ossimg.wandougongzhu.cn/af02ce07f1bd498c8d7817ab2fa0b8a0.png@900w_4000h_1l.webp', 'https://ossimg.wandougongzhu.cn/4657a4039059bf661afadee10eed9cff.png@150w_150h_1l.webp', '高性价比美白精华\r\n\r\n高性价比美白精华', '热销', 'ROHTO 乐敦 CC美容液VC渗透美白淡斑精华 20ML', '79.00');
INSERT INTO `guesslove` VALUES ('2', 'https://ossimg.wandougongzhu.cn/729789c80e628e046f4b247d999fa709.png@900w_4000h_1l.webp', 'https://ossimg.wandougongzhu.cn/2bd98cc80e8e6b41ae310a62cbf1d204.png@150w_150h_1l.webp', '竹签腿的催化剂\r\n		', '热销', 'DHC 蝶翠诗 草木犀瘦腿丸 30日量 60粒\r\n            ', '101.00');
INSERT INTO `guesslove` VALUES ('3', 'https://ossimg.wandougongzhu.cn/0c9a53a31fe859f75d17b6041b45aa61.png@900w_4000h_1l.webp', 'https://ossimg.wandougongzhu.cn/8eab31807a068186d895278c738cf244.png@150w_150h_1l.webp', '对于面部更服帖\r\n		', '热销', 'MANDOM 曼丹 Barrier Repair 面膜 顺滑版 5片装\r\n            ', '69.00');
INSERT INTO `guesslove` VALUES ('4', 'https://ossimg.wandougongzhu.cn/4575fe58856d99e1308dc638ca18905a.png@900w_4000h_1l.webp', 'https://ossimg.wandougongzhu.cn/59713fdf8fb23ff73a621bf4ba061911.png@150w_150h_1l.webp', '味增猪骨好味道\r\n		', '热销', 'TOYO SUISAN 东洋水产 味增担担面 110g\r\n            ', '17.00');
INSERT INTO `guesslove` VALUES ('5', 'https://ossimg.wandougongzhu.cn/aa185f9aab687ba58bb1e66de70662bd.png@900w_4000h_1l.webp', 'https://ossimg.wandougongzhu.cn/2bd98cc80e8e6b41ae310a62cbf1d204.png@150w_150h_1l.webp', '增强抵抗力\r\n		', '热销', 'DHC 蝶翠诗 维生素C（硬胶囊） 30日量 60粒\r\n            ', '26.00');
INSERT INTO `guesslove` VALUES ('6', 'https://ossimg.wandougongzhu.cn/12429f00d6a4a10baa6c6aedadaad1d2.png@900w_4000h_1l.webp', 'https://ossimg.wandougongzhu.cn/2bd98cc80e8e6b41ae310a62cbf1d204.png@150w_150h_1l.webp', '压力痘印都不要', '热销', '压力痘印都不要', '36.00');
INSERT INTO `guesslove` VALUES ('7', 'https://ossimg.wandougongzhu.cn/a60b8b57fc081613efed03d2c15330aa.png@900w_4000h_1l.webp', 'https://ossimg.wandougongzhu.cn/8eab31807a068186d895278c738cf244.png@150w_150h_1l.webp', '粉嫩版前男友发膜', '热销', 'MILBON 玫丽盼 前男友发膜干枯损伤修复深层滋养发膜 硬发用 9gx4', '57.00');
INSERT INTO `guesslove` VALUES ('8', 'https://ossimg.wandougongzhu.cn/e8ebd9f58fba70772ec98714e22fd31d.png@900w_4000h_1l.webp', 'https://ossimg.wandougongzhu.cn/59713fdf8fb23ff73a621bf4ba061911.png@150w_150h_1l.webp', 'NISSIN 日清 ', '热销', 'NISSIN 日清 Don兵卫 特大豆腐乌冬面 130g', '21.00');
INSERT INTO `guesslove` VALUES ('9', 'https://ossimg.wandougongzhu.cn/6a3dce43287f48e0e7314082707b4bed.png@900w_4000h_1l.webp', 'https://ossimg.wandougongzhu.cn/752743c95c6a23e06a3f50ab5cdc4a5a.png@150w_150h_1l.webp', '爸爸去哪儿同款', '限量款', 'FUMAKILLA VAPE 防蚊手环 hello kitty限量款 60天量 1盒', '138.00');
INSERT INTO `guesslove` VALUES ('10', 'https://ossimg.wandougongzhu.cn/60a646d8b10e99013986bd510be46ff5.png@900w_4000h_1l.webp', 'https://ossimg.wandougongzhu.cn/a6abf0b956433587ba703fb09379b081.png@150w_150h_1l.webp', '薯条家族携手来袭', '', 'Calbee 卡乐比 薯条三兄弟 10袋', '71.10');
INSERT INTO `guesslove` VALUES ('11', 'https://ossimg.wandougongzhu.cn/4833975989138e8104be7a9cf6869c22.png@900w_4000h_1l.webp', 'https://ossimg.wandougongzhu.cn/a8e6848dfe649f30ede256b73cafb21b.png@150w_150h_1l.webp', 'MANDOM 曼丹 ', '', 'MANDOM 曼丹 保湿紧致即净卸妆湿巾棉 46枚', '39.00');
INSERT INTO `guesslove` VALUES ('12', 'https://ossimg.wandougongzhu.cn/5879d425fb1496f2b791be46091b16a7.png@900w_4000h_1l.webp', 'https://ossimg.wandougongzhu.cn/d1205483c5ce435b7f43085a3eb7ff3d.png@150w_150h_1l.webp', '防晒同时别忘保湿', '', 'KANEBO 嘉娜宝 矿物保湿防晒啫喱 SPF50+PA++++ 全身可用保湿型绿管 90g', '185.00');
INSERT INTO `guesslove` VALUES ('13', 'https://ossimg.wandougongzhu.cn/b04e01756336566bd70d4c9296e563a2.png@900w_4000h_1l.webp', 'https://ossimg.wandougongzhu.cn/4657a4039059bf661afadee10eed9cff.png@150w_150h_1l.webp', '隐形眼镜最佳伴侣\r\n隐形眼镜最佳伴侣\r\n', '', 'ROHTO 乐敦 C3隐形眼镜护理液 保湿款 500ml', '85.00');
INSERT INTO `guesslove` VALUES ('14', 'https://ossimg.wandougongzhu.cn/4b1b711095145255f3c1cc9ffc59f71e.png@900w_4000h_1l.webp', 'https://ossimg.wandougongzhu.cn/4657a4039059bf661afadee10eed9cff.png@150w_150h_1l.webp', '不晕好画没sei了', '专享价', 'KOJI 蔻吉 Dolly Wink眼线液笔 深棕', '79.00');
INSERT INTO `guesslove` VALUES ('15', 'https://ossimg.wandougongzhu.cn/11924ee8c0239ec2e7babeef1cbf7a14.png@900w_4000h_1l.webp', 'https://ossimg.wandougongzhu.cn/a8e6848dfe649f30ede256b73cafb21b.png@150w_150h_1l.webp', 'CANADA GOOSE 周冬雨明星', '', 'CANADA GOOSE 周冬雨明星同款大鹅MONTEBELLO PARKA羽绒服 沙丘黄 S\r', '7754.00');
INSERT INTO `guesslove` VALUES ('16', 'https://ossimg.wandougongzhu.cn/a7bfd77650827917208356a9f70b194b.png@900w_4000h_1l.webp', 'https://ossimg.wandougongzhu.cn/59713fdf8fb23ff73a621bf4ba061911.png@150w_150h_1l.webp', '难以抗拒的巧克力饼干', '', 'NISSIN 日清 麦脆批牛奶巧克力味饼干 8片', '12.00');
INSERT INTO `guesslove` VALUES ('17', 'https://ossimg.wandougongzhu.cn/f980f61d76423e9147bb064c726f902b.png@900w_4000h_1l.webp', 'https://ossimg.wandougongzhu.cn/d1205483c5ce435b7f43085a3eb7ff3d.png@150w_150h_1l.webp', '清爽防晒不油腻', '', 'Biore 碧柔 清爽保湿防晒凝蜜SPF30/PA++ 120ML', '54.00');
INSERT INTO `guesslove` VALUES ('18', 'https://ossimg.wandougongzhu.cn/a6bee5eb57acfae15570cbd1b41c8074.png@900w_4000h_1l.webp', 'https://ossimg.wandougongzhu.cn/8eab31807a068186d895278c738cf244.png@150w_150h_1l.webp', '清洁收敛毛孔绝赞', '', 'PDC 碧迪皙 LIFTA RNA 七日集中修复收缩毛孔保湿 黑面膜 7枚', '44.00');
INSERT INTO `guesslove` VALUES ('19', 'https://ossimg.wandougongzhu.cn/4890c938019edfe87332aa540877c044.png@900w_4000h_1l.webp', 'https://ossimg.wandougongzhu.cn/2bd98cc80e8e6b41ae310a62cbf1d204.png@150w_150h_1l.webp', '日式油豆腐汤汁鲜美', '', 'NISSIN 日清 油豆腐乌冬迷你杯泡面 42g', '11.00');
INSERT INTO `guesslove` VALUES ('20', 'https://ossimg.wandougongzhu.cn/e92c5a9731ba8e093a9cb43901b34f7d.png@900w_4000h_1l.webp', 'https://ossimg.wandougongzhu.cn/4657a4039059bf661afadee10eed9cff.png@150w_150h_1l.webp', '跟干燥说拜拜', '', 'CUREL 珂润 滋润保湿润唇膏 4.2g', '79.00');
INSERT INTO `guesslove` VALUES ('21', 'https://ossimg.wandougongzhu.cn/af02ce07f1bd498c8d7817ab2fa0b8a0.png@900w_4000h_1l.webp', 'https://ossimg.wandougongzhu.cn/4657a4039059bf661afadee10eed9cff.png@150w_150h_1l.webp', '高性价比美白精华', '热销', 'ROHTO 乐敦 CC美容液VC渗透美白淡斑精华 20ML', '79.00');
INSERT INTO `guesslove` VALUES ('22', 'https://ossimg.wandougongzhu.cn/0c9a53a31fe859f75d17b6041b45aa61.png@900w_4000h_1l.webp', 'https://ossimg.wandougongzhu.cn/8eab31807a068186d895278c738cf244.png@150w_150h_1l.webp', '对于面部更服帖', '热销', 'MANDOM 曼丹 Barrier Repair 面膜 顺滑版 5片装', '69.00');
INSERT INTO `guesslove` VALUES ('23', 'https://ossimg.wandougongzhu.cn/4575fe58856d99e1308dc638ca18905a.png@900w_4000h_1l.webp	', 'https://ossimg.wandougongzhu.cn/59713fdf8fb23ff73a621bf4ba061911.png@150w_150h_1l.webp', '味增猪骨好味道', '热销', 'TOYO SUISAN 东洋水产 味增担担面 110g', '0.00');
INSERT INTO `guesslove` VALUES ('24', 'https://ossimg.wandougongzhu.cn/aa185f9aab687ba58bb1e66de70662bd.png@900w_4000h_1l.webp	', 'https://ossimg.wandougongzhu.cn/2bd98cc80e8e6b41ae310a62cbf1d204.png@150w_150h_1l.webp	', '增强抵抗力', '热销', 'DHC 蝶翠诗 维生素C（硬胶囊） 30日量 60粒', '26.00');
INSERT INTO `guesslove` VALUES ('25', 'https://ossimg.wandougongzhu.cn/11924ee8c0239ec2e7babeef1cbf7a14.png@900w_4000h_1l.webp	', 'https://ossimg.wandougongzhu.cn/a8e6848dfe649f30ede256b73cafb21b.png@150w_150h_1l.webp	', 'CANADA GOOSE 周冬雨明星', '', 'CANADA GOOSE 周冬雨明星同款大鹅MONTEBELLO PARKA羽绒服 沙丘黄 S\r	', '754.00');
INSERT INTO `guesslove` VALUES ('26', 'https://ossimg.wandougongzhu.cn/a7bfd77650827917208356a9f70b194b.png@900w_4000h_1l.webp	', 'https://ossimg.wandougongzhu.cn/59713fdf8fb23ff73a621bf4ba061911.png@150w_150h_1l.webp	', '难以抗拒的巧克力饼干', '', 'NISSIN 日清 麦脆批牛奶巧克力味饼干 8片', '12.00');
INSERT INTO `guesslove` VALUES ('27', 'https://ossimg.wandougongzhu.cn/12429f00d6a4a10baa6c6aedadaad1d2.png@900w_4000h_1l.webp	', 'https://ossimg.wandougongzhu.cn/2bd98cc80e8e6b41ae310a62cbf1d204.png@150w_150h_1l.webp	', '压力痘印都不要', '热销', '压力痘印都不要', '78.00');
INSERT INTO `guesslove` VALUES ('28', 'https://ossimg.wandougongzhu.cn/e8ebd9f58fba70772ec98714e22fd31d.png@900w_4000h_1l.webp	', 'https://ossimg.wandougongzhu.cn/59713fdf8fb23ff73a621bf4ba061911.png@150w_150h_1l.webp	', 'NISSIN 日清 ', '热销', 'NISSIN 日清 Don兵卫 特大豆腐乌冬面 130g	', '21.00');
INSERT INTO `guesslove` VALUES ('29', 'https://ossimg.wandougongzhu.cn/60a646d8b10e99013986bd510be46ff5.png@900w_4000h_1l.webp	', 'https://ossimg.wandougongzhu.cn/a6abf0b956433587ba703fb09379b081.png@150w_150h_1l.webp	', '薯条家族携手来袭', '', 'Calbee 卡乐比 薯条三兄弟 10袋', '71.10');
INSERT INTO `guesslove` VALUES ('30', 'https://ossimg.wandougongzhu.cn/4833975989138e8104be7a9cf6869c22.png@900w_4000h_1l.webp	', 'https://ossimg.wandougongzhu.cn/a8e6848dfe649f30ede256b73cafb21b.png@150w_150h_1l.webp	', 'MANDOM 曼丹', '优惠', 'MANDOM 曼丹 保湿紧致即净卸妆湿巾棉 46枚', '39.00');
INSERT INTO `guesslove` VALUES ('31', 'https://ossimg.wandougongzhu.cn/5879d425fb1496f2b791be46091b16a7.png@900w_4000h_1l.webp	', 'https://ossimg.wandougongzhu.cn/d1205483c5ce435b7f43085a3eb7ff3d.png@150w_150h_1l.webp	', '防晒同时别忘保湿', '', 'KANEBO 嘉娜宝 矿物保湿防晒啫喱 SPF50+PA++++ 全身可用保湿型绿管 90g', '185.00');
INSERT INTO `guesslove` VALUES ('32', 'https://ossimg.wandougongzhu.cn/5879d425fb1496f2b791be46091b16a7.png@900w_4000h_1l.webp	', 'https://ossimg.wandougongzhu.cn/d1205483c5ce435b7f43085a3eb7ff3d.png@150w_150h_1l.webp	', '防晒同时别忘保湿', '', 'KANEBO 嘉娜宝 矿物保湿防晒啫喱 SPF50+PA++++ 全身可用保湿型绿管 90g', '150.00');
INSERT INTO `guesslove` VALUES ('33', 'https://ossimg.wandougongzhu.cn/dd1661da6b07566c1de7e73a4c089763.png@900w_4000h_1l_1wh_1pr.png', 'https://ossimg.wandougongzhu.cn/59713fdf8fb23ff73a621bf4ba061911.png@150w_150h_1l_1wh_1pr.jpg', '追剧闲聊好伴侣\r\n		', '', 'GLICO 格力高 Bisco发酵黄油乳酸菌夹心饼干 15枚\r\n', '12.00');
INSERT INTO `guesslove` VALUES ('34', 'https://ossimg.wandougongzhu.cn/d30b0cda4481869771284044cf539106.png@900w_4000h_1l_1wh_1pr.jpg', 'https://ossimg.wandougongzhu.cn/a8e6848dfe649f30ede256b73cafb21b.png@150w_150h_1l_1wh_1pr.jpg', 'NEPIA 妮飘 贵', '', 'NEPIA 妮飘 贵族3D维他命C口罩 普通尺寸 3枚', '35.00');
INSERT INTO `guesslove` VALUES ('35', 'https://ossimg.wandougongzhu.cn/bc5338d121cf78198d42b4d2b8a17f39.png@900w_4000h_1l_1wh_1pr.jpg', 'https://ossimg.wandougongzhu.cn/4feee5043364f14f4369c059c61514a6.png@150w_150h_1l_1wh_1pr.jpg', 'LULULUN 限定', '', 'LULULUN 限定 One night一夜急救应急面膜 1片', '21.00');
INSERT INTO `guesslove` VALUES ('36', 'https://ossimg.wandougongzhu.cn/ea5ff8f4bb163c2dcfa2a9911d8485fc.png@900w_4000h_1l_1wh_1pr.jpg', 'https://ossimg.wandougongzhu.cn/d1205483c5ce435b7f43085a3eb7ff3d.png@150w_150h_1l_1wh_1pr.jpg', '囤防晒的时候到了', '热销', 'Biore 碧柔 水活防晒霜 SPF50+PA++++ 50g', '57.00');
INSERT INTO `guesslove` VALUES ('37', 'https://ossimg.wandougongzhu.cn/742dbfaedd40ecf002eca847e689231c.png@900w_4000h_1l_1wh_1pr.jpg', 'https://images.wandougongzhu.cn/GenImg/?type=goods_promote&v=1&key=66', '痘痘肌的圣水', '', 'ALBION 奥尔滨 药用健康水 110ML', '278.00');
INSERT INTO `guesslove` VALUES ('38', 'https://ossimg.wandougongzhu.cn/7233b526c150cdee3d5686cea1b46975.png@900w_4000h_1l_1wh_1pr.jpg', 'https://ossimg.wandougongzhu.cn/a8e6848dfe649f30ede256b73cafb21b.png@150w_150h_1l_1wh_1pr.jpg', '睫毛弯弯惹人爱', '', 'KAI 贝印 PC迷你型睫毛夹 粉色 1个', '112.00');
INSERT INTO `guesslove` VALUES ('39', 'https://ossimg.wandougongzhu.cn/4b1b711095145255f3c1cc9ffc59f71e.png@900w_4000h_1l.webp', 'https://ossimg.wandougongzhu.cn/4657a4039059bf661afadee10eed9cff.png@150w_150h_1l.webp', '不晕好画没sei了', '专享价', 'KOJI 蔻吉 Dolly Wink眼线液笔 深棕', '79.00');
INSERT INTO `guesslove` VALUES ('40', 'https://ossimg.wandougongzhu.cn/a6bee5eb57acfae15570cbd1b41c8074.png@900w_4000h_1l.webp', 'https://ossimg.wandougongzhu.cn/8eab31807a068186d895278c738cf244.png@150w_150h_1l.webp', '清洁收敛毛孔绝赞', '', 'PDC 碧迪皙 LIFTA RNA 七日集中修复收缩毛孔保湿 黑面膜 7枚', '44.00');
