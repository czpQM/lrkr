/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 50547
Source Host           : localhost:3306
Source Database       : lrkr

Target Server Type    : MYSQL
Target Server Version : 50547
File Encoding         : 65001

Date: 2018-07-04 21:09:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `lrkr_adminuser`
-- ----------------------------
DROP TABLE IF EXISTS `lrkr_adminuser`;
CREATE TABLE `lrkr_adminuser` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(60) CHARACTER SET utf8 NOT NULL COMMENT '管理员名',
  `password` varchar(60) CHARACTER SET utf8 NOT NULL COMMENT '管理员密码',
  `nickname` varchar(60) CHARACTER SET utf8 NOT NULL COMMENT '管理员昵称',
  `mobile` varchar(60) CHARACTER SET utf8 NOT NULL COMMENT '管理员电话',
  `email` varchar(60) CHARACTER SET utf8 NOT NULL COMMENT '管理员电邮',
  `qq` varchar(60) CHARACTER SET utf8 NOT NULL COMMENT '管理员qq',
  `sex` tinyint(2) unsigned NOT NULL COMMENT '管理员性别：0代表男，1代表女，2代表保密',
  `login_time` int(10) unsigned NOT NULL COMMENT '登录时间',
  `admin_portrait` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '头像',
  `forzen` tinyint(1) unsigned DEFAULT '0' COMMENT '账号冻结：0是使用，1是不可以使用',
  `group_id` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of lrkr_adminuser
-- ----------------------------
INSERT INTO `lrkr_adminuser` VALUES ('1', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '萘何情深', '18217390394', '943250312@qq.com', '943250312', '2', '2018', 'uploads/2018-06-12/62bf1edb36141f114521ec4bb4175579.jpg', '0', '3');
INSERT INTO `lrkr_adminuser` VALUES ('2', 'admin1', 'e10adc3949ba59abbe56e057f20f883e', '萘何情深', '18217390394', '943250312@qq.com', '943250312', '0', '2018', 'uploads/2018-06-12/ae566253288191ce5d879e51dae1d8c3.jpg', '0', '1');
INSERT INTO `lrkr_adminuser` VALUES ('3', 'admin2', 'e10adc3949ba59abbe56e057f20f883e', '萘何情深', '18217390394', '943250312@qq.com', '943250312', '1', '2018', 'uploads/2018-06-12/30e62fddc14c05988b44e7c02788e187.jpg', '0', '1');
INSERT INTO `lrkr_adminuser` VALUES ('4', 'admin3', 'e10adc3949ba59abbe56e057f20f883e', '萘何情深', '18217390394', '943250312@qq.com', '943250312', '1', '2018', 'uploads/2018-06-12/8cda81fc7ad906927144235dda5fdf15.jpg', '0', '2');
INSERT INTO `lrkr_adminuser` VALUES ('5', 'admin4', 'e10adc3949ba59abbe56e057f20f883e', '萘何情深', '18217390394', '943250312@qq.com', '943250312', '0', '2018', 'uploads/2018-06-12/fe5df232cafa4c4e0f1a0294418e5660.jpg', '0', '2');
INSERT INTO `lrkr_adminuser` VALUES ('6', 'admin5', 'e10adc3949ba59abbe56e057f20f883e', '萘何情深', '18217390394', '943250312@qq.com', '943250312', '0', '2018', 'uploads/2018-06-12/18e2999891374a475d0687ca9f989d83.jpg', '0', '2');
INSERT INTO `lrkr_adminuser` VALUES ('7', 'admin6', 'e10adc3949ba59abbe56e057f20f883e', '萘何情深', '18217390394', '943250312@qq.com', '943250312', '1', '2018', 'uploads/2018-06-12/032b2cc936860b03048302d991c3498f.jpg', '0', '2');
INSERT INTO `lrkr_adminuser` VALUES ('8', 'admin7', 'e10adc3949ba59abbe56e057f20f883e', '萘何情深', '18217390394', '943250312@qq.com', '943250312', '0', '2018', 'uploads/2018-06-12/d0096ec6c83575373e3a21d129ff8fef.jpg', '0', '3');
INSERT INTO `lrkr_adminuser` VALUES ('9', 'admin8', 'e10adc3949ba59abbe56e057f20f883e', '萘何情深', '18217390394', '943250312@qq.com', '943250312', '2', '2018', 'uploads/2018-06-12/799bad5a3b514f096e69bbc4a7896cd9.jpg', '0', '1');
INSERT INTO `lrkr_adminuser` VALUES ('10', 'admin9', 'e10adc3949ba59abbe56e057f20f883e', '萘何情深', '18217390394', '943250312@qq.com', '943250312', '0', '2018', 'uploads/2018-06-12/156005c5baf40ff51a327f1c34f2975b.jpg', '0', '2');
INSERT INTO `lrkr_adminuser` VALUES ('16', 'sd asd', 'e10adc3949ba59abbe56e057f20f883e', 'sad', 'sadsad', 'sadsad', 'sadsadsa', '1', '2018', 'uploads/2018-06-28/8266e4bfeda1bd42d8f9794eb4ea0a13.png', '0', '3');
INSERT INTO `lrkr_adminuser` VALUES ('17', 'sd asd', 'e10adc3949ba59abbe56e057f20f883e', '王静俊', '123456789101', '1432135222@qq.com', '1131321321', '1', '1530184043', 'uploads/2018-06-28/4a47a0db6e60853dedfcfdf08a5ca249.png', '0', '3');
INSERT INTO `lrkr_adminuser` VALUES ('18', 'admin13', 'e10adc3949ba59abbe56e057f20f883e', '王静俊', '123456789101', '1432135222@qq.com', '1131321321', '1', '1530184392', 'uploads/2018-06-28/f19c9085129709ee14d013be869df69b.png', '1', '3');

-- ----------------------------
-- Table structure for `lrkr_article`
-- ----------------------------
DROP TABLE IF EXISTS `lrkr_article`;
CREATE TABLE `lrkr_article` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `title` varchar(60) CHARACTER SET utf8 NOT NULL COMMENT '文章名称',
  `description` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '文章描述',
  `content` text CHARACTER SET utf8 NOT NULL COMMENT '文章内容',
  `category_id` int(20) unsigned NOT NULL COMMENT '文章分类',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of lrkr_article
-- ----------------------------
INSERT INTO `lrkr_article` VALUES ('9', '公司介绍', '123乐瑞科技有限公司是一家专注于研发生产LED照明产品的高新技术企业。公司集LED产品研发、 生产、销售、服务于一体，现已发展成为中国LED行业较优秀的制造商之一。公司致力于提供优 质的节能环保LED户外景观照明和LED家居商业照明产品。为客户提供完善的商业照明整体解决 方案，为体验用户提供绿色节能健康的照明产品，公司拥有雄厚的技术力量和先进的研发生产设备 ，主要生产LED射灯、LED日光灯、LED筒灯、LED球泡灯、LED灯管、LED天花灯、LED投 光灯、洗墙灯、LED护栏管、LED路灯，LED灯条', '<div class=\"content\">\r\n	<ul>\r\n		<li>\r\n			<img src=\"http://localhost/zzy/home/template/img/d1.png\" alt=\"\" /> \r\n		</li>\r\n		<li>\r\n			<img src=\"http://localhost/zzy/home/template/img/d2.png\" alt=\"\" /> \r\n		</li>\r\n		<li>\r\n			<img src=\"http://localhost/zzy/home/template/img/d3.png\" alt=\"\" /> \r\n		</li>\r\n	</ul>\r\n	<p>\r\n		乐瑞科技有限公司是一家专注于研发生产LED照明产品的高新技术企业。公司集LED产品研发、生产、销售、\r\n					服务于一体，现已发展成为中国LED行业较优秀的制造商之一。公司致力于提供优质的节能环保LED户外景\r\n					观照明和LED家居商业照明产品。为客户提供完善的商业照明整体解决方案，为体验用户提供绿色节能健康\r\n					的照明产品，公司拥有雄厚的技术力量和先进的研发生产设备，主要生产LED射灯、LED日光灯、LED筒灯、\r\n					LED球泡灯、LED灯管、LED天花灯、LED投光灯、洗墙灯、LED护栏管、LED路灯，LED灯条等产品。\r\n					广泛应用于广告照明、城市亮化装饰、商业照明和家居照明领域。公司拥有完善的销售与服务体系，产品主要\r\n					销往澳大利亚、美洲、欧洲、中东及东南亚等国外市场，同时于2012年在国内设立华中、华南、华东、西南\r\n					等多个办事处，在全国各地有众多优秀的案例，得到客户的一致好评。乐瑞科技致力于为人类奉献绿色光源，\r\n					呵护人类共同居住的生活环境，在国家大力发展节能环保产业，提倡低碳经济的时代，将不断研发更优质的产品，\r\n					提供更优秀的服务，为人类绿色环保做出应有的贡献\r\n	</p>\r\n</div>', '6');
INSERT INTO `lrkr_article` VALUES ('10', '团队介绍', '郑之源进出口贸易有限公司以诚信、实力和产品质量获得业界的高度认可。欢迎各界朋友莅临参观、指导和业务洽谈。', '<img src=\"http://www.mpgroup.cn/upfiles/20160817110018551.jpg\" width=\"500\">', '7');
INSERT INTO `lrkr_article` VALUES ('11', '公司理念', '郑之源进出口贸易有限公司主要经营五金矿产、家具、针纺织品、五金交电、工艺品、金属材料、电子产品、家用电器、农副产品、建筑材料等产品的进出口业务。公司贸易规模正在逐渐扩大，已经与多个国家及地区、几十家客户建立起长期友好的合作关系， 以良好的信誉得到了国内外客户的信赖，对促进我国的现代化建设，促进与世界各国的经济技术交流，增进同各国人民的友谊做出了许多积极的工作。', '<p>郑之源进出口贸易有限公司主要经营五金矿产、家具、针纺织品、五金交电、工艺品、金属材料、电子产品、家用电器、农副产品、建筑材料等产品的进出口业务。公司贸易规模正在逐渐扩大，已经与多个国家及地区、几十家客户建立起长期友好的合作关系， 以良好的信誉得到了国内外客户的信赖，对促进我国的现代化建设，促进与世界各国的经济技术交流，增进同各国人民的友谊做出了许多积极的工作。</p>\r\n\r\n        	<p>郑之源进出口贸易有限公司主要经营五金矿产、家具、针纺织品、五金交电、工艺品、金属材料、电子产品、家用电器、农副产品、建筑材料等产品的进出口业务。公司贸易规模正在逐渐扩大，已经与多个国家及地区、几十家客户建立起长期友好的合作关系， 以良好的信誉得到了国内外客户的信赖，对促进我国的现代化建设，促进与世界各国的经济技术交流，增进同各国人民的友谊做出了许多积极的工作。</p>', '8');
INSERT INTO `lrkr_article` VALUES ('12', '公司历程', '郑之源进出口贸易有限公司是行业内领先的知名企业,注册资金未知 主要从事马铃薯农副产品。', '乐瑞科技有限公司是一家专注于研发生产LED照明产品的高新技术企业。公司集LED产品研发、生产、销售、 服务于一体，现已发展成为中国LED行业较优秀的制造商之一。公司致力于提供优质的节能环保LED户外景 观照明和LED家居商业照明产品。为客户提供完善的商业照明整体解决方案，为体验用户提供绿色节能健康 的照明产品，公司拥有雄厚的技术力量和先进的研发生产设备，主要生产LED射灯、LED日光灯、LED筒灯、 LED球泡灯、LED灯管、LED天花灯、', '9');

-- ----------------------------
-- Table structure for `lrkr_banner`
-- ----------------------------
DROP TABLE IF EXISTS `lrkr_banner`;
CREATE TABLE `lrkr_banner` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `banner_name` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '图片名字',
  `banner_url` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '轮播超链接',
  `banner_info` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '图片地址路径',
  `category_id` int(20) unsigned NOT NULL COMMENT '分类ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of lrkr_banner
-- ----------------------------
INSERT INTO `lrkr_banner` VALUES ('1', '首页轮播1 ', '', 'home/template/img/banner.png', '1');
INSERT INTO `lrkr_banner` VALUES ('2', '首页轮播2', '', 'home/template/img/banner2.png', '1');
INSERT INTO `lrkr_banner` VALUES ('3', '首页轮播3', '', 'home/template/img/banner3.png', '1');
INSERT INTO `lrkr_banner` VALUES ('8', '新闻中心轮播1', '', 'home/template/img/banner.png', '3');
INSERT INTO `lrkr_banner` VALUES ('11', '产品中心轮播1', '', 'home/template/img/banner.png', '4');
INSERT INTO `lrkr_banner` VALUES ('14', '联系我们轮播1', '', 'home/template/img/banner.png', '5');
INSERT INTO `lrkr_banner` VALUES ('15', '联系我们轮播2', '', 'home/template/img/banner2.png', '5');
INSERT INTO `lrkr_banner` VALUES ('16', '联系我们轮播3', '', 'home/template/img/banner3.png', '5');
INSERT INTO `lrkr_banner` VALUES ('9', '新闻中心轮播2', '', 'home/template/img/banner2.png', '3');
INSERT INTO `lrkr_banner` VALUES ('10', '新闻中心轮播3', '', 'home/template/img/banner3.png', '3');
INSERT INTO `lrkr_banner` VALUES ('12', '产品中心轮播2', '', 'home/template/img/banner2.png', '4');
INSERT INTO `lrkr_banner` VALUES ('13', '产品中心轮播3', '', 'home/template/img/banner3.png', '4');
INSERT INTO `lrkr_banner` VALUES ('5', '关于我们轮播1', '', 'home/template/img/banner.png', '2');
INSERT INTO `lrkr_banner` VALUES ('6', '关于我们轮播2', '', 'home/template/img/banner2.png', '2');
INSERT INTO `lrkr_banner` VALUES ('7', '关于我们轮播3', '', 'home/template/img/banner3.png', '2');

-- ----------------------------
-- Table structure for `lrkr_category`
-- ----------------------------
DROP TABLE IF EXISTS `lrkr_category`;
CREATE TABLE `lrkr_category` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `category_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '分类名称',
  `pid` int(20) unsigned DEFAULT NULL COMMENT '父亲分类的id：0代表顶级',
  `c` varchar(20) DEFAULT NULL,
  `a` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of lrkr_category
-- ----------------------------
INSERT INTO `lrkr_category` VALUES ('1', '首页', '0', 'index', 'index');
INSERT INTO `lrkr_category` VALUES ('2', '关于我们', '0', 'abount', 'index');
INSERT INTO `lrkr_category` VALUES ('3', '新闻中心', '0', 'news', 'index');
INSERT INTO `lrkr_category` VALUES ('4', '产品中心', '0', 'produt', 'index');
INSERT INTO `lrkr_category` VALUES ('5', '联系我们', '0', 'contact', 'index');
INSERT INTO `lrkr_category` VALUES ('6', '公司介绍', '2', null, null);
INSERT INTO `lrkr_category` VALUES ('7', '团队介绍', '2', null, null);
INSERT INTO `lrkr_category` VALUES ('8', '公司理念', '2', null, null);
INSERT INTO `lrkr_category` VALUES ('9', '公司历程', '2', null, null);
INSERT INTO `lrkr_category` VALUES ('10', '公司新闻', '3', null, null);
INSERT INTO `lrkr_category` VALUES ('11', '媒体动态', '3', null, null);
INSERT INTO `lrkr_category` VALUES ('12', '业界动态', '3', null, null);
INSERT INTO `lrkr_category` VALUES ('13', '商业照明', '4', null, null);
INSERT INTO `lrkr_category` VALUES ('14', '办公照明', '4', null, null);
INSERT INTO `lrkr_category` VALUES ('15', '户外照明', '4', null, null);
INSERT INTO `lrkr_category` VALUES ('16', '光源照明', '4', null, null);
INSERT INTO `lrkr_category` VALUES ('17', '家具照明', '4', null, null);
INSERT INTO `lrkr_category` VALUES ('18', 'LED产品', '4', null, null);

-- ----------------------------
-- Table structure for `lrkr_group`
-- ----------------------------
DROP TABLE IF EXISTS `lrkr_group`;
CREATE TABLE `lrkr_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `group_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `group_allow` text CHARACTER SET utf8,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of lrkr_group
-- ----------------------------
INSERT INTO `lrkr_group` VALUES ('1', '超级管理员', '[\"46\",\"50\",\"49\",\"48\",\"47\",\"41\",\"45\",\"44\",\"43\",\"42\",\"36\",\"40\",\"39\",\"38\",\"37\",\"7\",\"35\",\"34\",\"33\",\"32\",\"6\",\"31\",\"30\",\"29\",\"28\",\"5\",\"27\",\"26\",\"25\",\"24\",\"4\",\"23\",\"22\",\"21\",\"20\",\"3\",\"19\",\"18\",\"17\",\"16\",\"2\",\"15\",\"14\",\"13\",\"12\",\"1\",\"11\",\"10\",\"9\",\"8\"]');
INSERT INTO `lrkr_group` VALUES ('2', '网站编辑', '[\"41\",\"45\",\"44\",\"43\",\"42\",\"7\",\"35\",\"34\",\"33\",\"32\",\"6\",\"31\",\"30\",\"29\",\"28\",\"5\",\"27\",\"26\",\"25\",\"24\",\"4\",\"23\",\"22\",\"21\",\"20\",\"3\",\"19\",\"18\",\"17\",\"16\",\"2\",\"15\",\"14\",\"13\",\"12\"]');
INSERT INTO `lrkr_group` VALUES ('3', '普通管理员', '[\"7\",\"35\",\"34\",\"33\",\"32\",\"5\",\"27\",\"26\",\"25\",\"24\",\"4\",\"23\",\"22\",\"21\",\"20\",\"3\",\"19\",\"18\",\"17\",\"16\",\"2\",\"15\",\"14\",\"13\",\"12\"]');

-- ----------------------------
-- Table structure for `lrkr_link`
-- ----------------------------
DROP TABLE IF EXISTS `lrkr_link`;
CREATE TABLE `lrkr_link` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `link_logo` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT 'logo图',
  `link_url` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '链接地址',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of lrkr_link
-- ----------------------------
INSERT INTO `lrkr_link` VALUES ('1', 'logo1', 'ssass');
INSERT INTO `lrkr_link` VALUES ('2', 'logo2', 'sadsad');
INSERT INTO `lrkr_link` VALUES ('3', 'logo3', 'sdsd');
INSERT INTO `lrkr_link` VALUES ('4', 'logo4', 'asdsa');
INSERT INTO `lrkr_link` VALUES ('5', 'logo5', 'sadsa');
INSERT INTO `lrkr_link` VALUES ('6', 'logo6', 'sadsad');
INSERT INTO `lrkr_link` VALUES ('7', 'logo7', 'asdsa');
INSERT INTO `lrkr_link` VALUES ('8', 'logo8', 'asdsad');

-- ----------------------------
-- Table structure for `lrkr_msg`
-- ----------------------------
DROP TABLE IF EXISTS `lrkr_msg`;
CREATE TABLE `lrkr_msg` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `msg_user` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '留言姓名',
  `msg_email` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '留言电邮',
  `content` text CHARACTER SET utf8 NOT NULL COMMENT '留言内容',
  `msg_phone` varchar(60) CHARACTER SET utf8 NOT NULL COMMENT '留言电话',
  `msg_time` int(10) unsigned DEFAULT NULL,
  `title` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '留言标题',
  `type` tinyint(1) unsigned DEFAULT '0' COMMENT '1代表已回复；0代表没回复',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of lrkr_msg
-- ----------------------------
INSERT INTO `lrkr_msg` VALUES ('2', 'dsds', 'dsdsd', 'nihaop', 'sds', null, 'sdsds', '1');
INSERT INTO `lrkr_msg` VALUES ('3', 'jj', 'aa@aa.com', 'nihao ', '188888888', null, '2010低碳年节能灯装修大行其道', '1');
INSERT INTO `lrkr_msg` VALUES ('4', 'jj', 'aa@aa.com', 'ssssss', '18888888852', '1530102941', '世博园低碳中国红LED节能7成', '0');
INSERT INTO `lrkr_msg` VALUES ('5', 'jj', 'aa@aa.com', 'ssssss', '18888888852', '1530102944', '世博园低碳中国红LED节能7成', '0');
INSERT INTO `lrkr_msg` VALUES ('9', 'www', 'sssdd@qq.com', '你更好你更好你更好你更好你更好你更好你更好你更好你更好你更好你更好你更好你更好', '13523155212', '1530708491', 'baioti1', '0');
INSERT INTO `lrkr_msg` VALUES ('10', 'www', 'sssdd@qq.com', '你更好你更好你更好你更好你更好你更好你更好你更好你更好你更好你更好你更好你更好', '13523155212', '1530708497', 'baioti1', '0');
INSERT INTO `lrkr_msg` VALUES ('11', '琐琐琐', '三', '琐琐琐', 's琐琐琐琐', '1530709632', 's琐琐琐', '0');

-- ----------------------------
-- Table structure for `lrkr_nav`
-- ----------------------------
DROP TABLE IF EXISTS `lrkr_nav`;
CREATE TABLE `lrkr_nav` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `nav_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '首页',
  `c` varchar(50) DEFAULT NULL,
  `a` varchar(50) DEFAULT NULL,
  `pid` int(11) unsigned DEFAULT NULL,
  `is_show` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of lrkr_nav
-- ----------------------------
INSERT INTO `lrkr_nav` VALUES ('1', '管理员中心', 'adminuser', '', '0', '1');
INSERT INTO `lrkr_nav` VALUES ('2', '新闻中心', 'news', null, '0', '1');
INSERT INTO `lrkr_nav` VALUES ('3', '产品中心', 'product', null, '0', '1');
INSERT INTO `lrkr_nav` VALUES ('4', '公司介绍', 'article', null, '0', '1');
INSERT INTO `lrkr_nav` VALUES ('5', '图片轮播', 'banner', null, '0', '1');
INSERT INTO `lrkr_nav` VALUES ('6', '分类中心', 'category', null, '0', '1');
INSERT INTO `lrkr_nav` VALUES ('7', '前台留言', 'msg', null, '0', '1');
INSERT INTO `lrkr_nav` VALUES ('8', '系统信息', 'setup', null, '0', '1');
INSERT INTO `lrkr_nav` VALUES ('9', '管理员列表', 'adminuser', 'index', '1', '1');
INSERT INTO `lrkr_nav` VALUES ('10', '管理员添加', 'adminuser', 'add', '1', '1');
INSERT INTO `lrkr_nav` VALUES ('11', '管理员更新', 'adminuser', 'update', '1', '0');
INSERT INTO `lrkr_nav` VALUES ('12', '管理员删除', 'adminuser', 'del', '1', '0');
INSERT INTO `lrkr_nav` VALUES ('13', '新闻列表', 'news', 'index', '2', '1');
INSERT INTO `lrkr_nav` VALUES ('14', '新闻添加', 'news', 'add', '2', '1');
INSERT INTO `lrkr_nav` VALUES ('15', '新闻更新', 'news', 'update', '2', '0');
INSERT INTO `lrkr_nav` VALUES ('16', '新闻删除', 'news', 'del', '2', '0');
INSERT INTO `lrkr_nav` VALUES ('17', '产品列表', 'product', 'index', '3', '1');
INSERT INTO `lrkr_nav` VALUES ('18', '产品添加', 'product', 'add', '3', '1');
INSERT INTO `lrkr_nav` VALUES ('19', '产品更新', 'product', 'update', '3', '0');
INSERT INTO `lrkr_nav` VALUES ('20', '产品删除', 'product', 'del', '3', '0');
INSERT INTO `lrkr_nav` VALUES ('21', '文章列表', 'article', 'index', '4', '1');
INSERT INTO `lrkr_nav` VALUES ('22', '文章添加', 'article', 'add', '4', '1');
INSERT INTO `lrkr_nav` VALUES ('23', '文章更新', 'article', 'update', '4', '0');
INSERT INTO `lrkr_nav` VALUES ('24', '图片列表', 'banner', 'index', '5', '1');
INSERT INTO `lrkr_nav` VALUES ('25', '图片添加', 'banner', 'add', '5', '1');
INSERT INTO `lrkr_nav` VALUES ('26', '图片更新', 'banner', 'update', '5', '0');
INSERT INTO `lrkr_nav` VALUES ('27', '图片删除', 'banner', 'del', '5', '0');
INSERT INTO `lrkr_nav` VALUES ('28', '分类列表', 'category', 'index', '6', '1');
INSERT INTO `lrkr_nav` VALUES ('29', '分类添加', 'category', 'add', '6', '1');
INSERT INTO `lrkr_nav` VALUES ('30', '分类更新', 'category', 'update', '6', '0');
INSERT INTO `lrkr_nav` VALUES ('31', '分类删除', 'category', 'del', '6', '0');
INSERT INTO `lrkr_nav` VALUES ('32', '系统列表', 'setup', 'index', '8', '1');
INSERT INTO `lrkr_nav` VALUES ('33', '系统添加', 'setup', 'add', '8', '1');
INSERT INTO `lrkr_nav` VALUES ('34', '系统更新', 'setup', 'update', '8', '0');
INSERT INTO `lrkr_nav` VALUES ('35', '文章删除', 'article', 'del', '4', '0');
INSERT INTO `lrkr_nav` VALUES ('36', '系统删除', 'setup', 'del', '8', '0');
INSERT INTO `lrkr_nav` VALUES ('37', '留言列表', 'msg', 'index', '7', '1');
INSERT INTO `lrkr_nav` VALUES ('38', '留言添加', 'msg', 'add', '7', '1');
INSERT INTO `lrkr_nav` VALUES ('39', '留言更新', 'msg', 'update', '7', '0');
INSERT INTO `lrkr_nav` VALUES ('40', '留言删除', 'msg', 'del', '7', '0');
INSERT INTO `lrkr_nav` VALUES ('41', '权限中心', 'group', '', '0', '1');
INSERT INTO `lrkr_nav` VALUES ('42', '权限添加', 'group', 'add', '41', '1');
INSERT INTO `lrkr_nav` VALUES ('43', '权限删除', 'group', 'del', '41', '0');
INSERT INTO `lrkr_nav` VALUES ('44', '权限更新', 'group', 'update', '41', '0');
INSERT INTO `lrkr_nav` VALUES ('45', '权限列表', 'group', 'index', '41', '1');

-- ----------------------------
-- Table structure for `lrkr_news`
-- ----------------------------
DROP TABLE IF EXISTS `lrkr_news`;
CREATE TABLE `lrkr_news` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `title` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '新闻标题',
  `description` text CHARACTER SET utf8 NOT NULL COMMENT '新闻描述',
  `content` text CHARACTER SET utf8 NOT NULL COMMENT '新闻内容',
  `author` varchar(10) CHARACTER SET utf8 NOT NULL COMMENT '新闻作者',
  `ftime` int(11) unsigned NOT NULL COMMENT '发布时间',
  `hits` int(10) unsigned NOT NULL COMMENT '点击数',
  `news_photo` text CHARACTER SET utf8 NOT NULL COMMENT '新闻图片',
  `category_id` int(20) unsigned NOT NULL COMMENT '分类ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of lrkr_news
-- ----------------------------
INSERT INTO `lrkr_news` VALUES ('1', '台湾首超韩日成全球最大LED产地', '台湾首超韩日成全球最大LED产地', '<a href=\"http://localhost/zzy/index.php?c=news-detail&amp;a=index&amp;admin=0\">台湾首超韩日成全球最大LED产地</a><a href=\"http://localhost/zzy/index.php?c=news-detail&amp;a=index&amp;admin=0\">台湾首超韩日成全球最大LED产地</a><a href=\"http://localhost/zzy/index.php?c=news-detail&amp;a=index&amp;admin=0\">台湾首超韩日成全球最大LED产地</a><a href=\"http://localhost/zzy/index.php?c=news-detail&amp;a=index&amp;admin=0\">台湾首超韩日成全球最大LED产地</a><a href=\"http://localhost/zzy/index.php?c=news-detail&amp;a=index&amp;admin=0\">台湾首超韩日成全球最大LED产地</a><a href=\"http://localhost/zzy/index.php?c=news-detail&amp;a=index&amp;admin=0\">台湾首超韩日成全球最大LED产地</a><a href=\"http://localhost/zzy/index.php?c=news-detail&amp;a=index&amp;admin=0\">台湾首超韩日成全球最大LED产地</a><a href=\"http://localhost/zzy/index.php?c=news-detail&amp;a=index&amp;admin=0\">台湾首超韩日成全球最大LED产地</a><a href=\"http://localhost/zzy/index.php?c=news-detail&amp;a=index&amp;admin=0\">台湾首超韩日成全球最大LED产地</a>', '台湾首超韩日成全球最', '1530070477', '0', '', '10');
INSERT INTO `lrkr_news` VALUES ('2', '太阳能与LED大放异彩护驾世博', '太阳能与LED大放异彩护驾世博', '<a href=\"http://localhost/zzy/index.php?c=news-detail&amp;a=index&amp;admin=0\">太阳能与LED大放异彩护驾世博</a><a href=\"http://localhost/zzy/index.php?c=news-detail&amp;a=index&amp;admin=0\">太阳能与LED大放异彩护驾世博</a><a href=\"http://localhost/zzy/index.php?c=news-detail&amp;a=index&amp;admin=0\">太阳能与LED大放异彩护驾世博</a><a href=\"http://localhost/zzy/index.php?c=news-detail&amp;a=index&amp;admin=0\">太阳能与LED大放异彩护驾世博</a><a href=\"http://localhost/zzy/index.php?c=news-detail&amp;a=index&amp;admin=0\">太阳能与LED大放异彩护驾世博</a><a href=\"http://localhost/zzy/index.php?c=news-detail&amp;a=index&amp;admin=0\">太阳能与LED大放异彩护驾世博</a>', '太阳能与LED大放异', '1530070531', '0', '', '10');
INSERT INTO `lrkr_news` VALUES ('3', '世博园低碳中国红 LED节能7成 ', '世博园低碳中国红 LED节能7成 ', '<a href=\"http://localhost/zzy/news-decail.php\">世博园低碳中国红 LED节能7成 </a><a href=\"http://localhost/zzy/news-decail.php\">世博园低碳中国红 LED节能7成 </a><a href=\"http://localhost/zzy/news-decail.php\">世博园低碳中国红 LED节能7成 </a><a href=\"http://localhost/zzy/news-decail.php\">世博园低碳中国红 LED节能7成 </a><a href=\"http://localhost/zzy/news-decail.php\">世博园低碳中国红 LED节能7成 </a><a href=\"http://localhost/zzy/news-decail.php\">世博园低碳中国红 LED节能7成 </a><a href=\"http://localhost/zzy/news-decail.php\">世博园低碳中国红 LED节能7成 </a><a href=\"http://localhost/zzy/news-decail.php\">世博园低碳中国红 LED节能7成 </a><a href=\"http://localhost/zzy/news-decail.php\">世博园低碳中国红 LED节能7成 </a><a href=\"http://localhost/zzy/news-decail.php\">世博园低碳中国红 LED节能7成 </a><a href=\"http://localhost/zzy/news-decail.php\">世博园低碳中国红 LED节能7成 </a><a href=\"http://localhost/zzy/news-decail.php\">世博园低碳中国红 LED节能7成 </a><a href=\"http://localhost/zzy/news-decail.php\">世博园低碳中国红 LED节能7成 </a><a href=\"http://localhost/zzy/news-decail.php\">世博园低碳中国红 LED节能7成 </a>', '世博园低碳中国红 L', '1530070701', '0', '', '10');
INSERT INTO `lrkr_news` VALUES ('4', '2010低碳年 节能灯装修大行其道 ', '2010低碳年 节能灯装修大行其道 ', '<a href=\"http://localhost/zzy/index.php?c=news-detail&amp;a=index&amp;admin=0\">2010低碳年 节能灯装修大行其道 </a><a href=\"http://localhost/zzy/index.php?c=news-detail&amp;a=index&amp;admin=0\">2010低碳年 节能灯装修大行其道 </a><a href=\"http://localhost/zzy/index.php?c=news-detail&amp;a=index&amp;admin=0\">2010低碳年 节能灯装修大行其道 </a><a href=\"http://localhost/zzy/index.php?c=news-detail&amp;a=index&amp;admin=0\">2010低碳年 节能灯装修大行其道 </a><a href=\"http://localhost/zzy/index.php?c=news-detail&amp;a=index&amp;admin=0\">2010低碳年 节能灯装修大行其道 </a><a href=\"http://localhost/zzy/index.php?c=news-detail&amp;a=index&amp;admin=0\">2010低碳年 节能灯装修大行其道 </a><a href=\"http://localhost/zzy/index.php?c=news-detail&amp;a=index&amp;admin=0\">2010低碳年 节能灯装修大行其道 </a><a href=\"http://localhost/zzy/index.php?c=news-detail&amp;a=index&amp;admin=0\">2010低碳年 节能灯装修大行其道 </a><a href=\"http://localhost/zzy/index.php?c=news-detail&amp;a=index&amp;admin=0\">2010低碳年 节能灯装修大行其道 </a><a href=\"http://localhost/zzy/index.php?c=news-detail&amp;a=index&amp;admin=0\">2010低碳年 节能灯装修大行其道 </a><a href=\"http://localhost/zzy/index.php?c=news-detail&amp;a=index&amp;admin=0\">2010低碳年 节能灯装修大行其道 </a><a href=\"http://localhost/zzy/index.php?c=news-detail&amp;a=index&amp;admin=0\">2010低碳年 节能灯装修大行其道 </a><a href=\"http://localhost/zzy/index.php?c=news-detail&amp;a=index&amp;admin=0\">2010低碳年 节能灯装修大行其道 </a><a href=\"http://localhost/zzy/index.php?c=news-detail&amp;a=index&amp;admin=0\">2010低碳年 节能灯装修大行其道 </a>', '2010低碳年 节能', '1530082123', '0', '', '10');
INSERT INTO `lrkr_news` VALUES ('5', '六千盏XXX照明应急灯护航世博场馆', '六千盏XXX照明应急灯护航世博场馆', '<a href=\"http://localhost/zzy/index.php?c=news-detail&a=index&admin=0\">六千盏XXX照明应急灯护航世博场馆</a><a href=\"http://localhost/zzy/index.php?c=news-detail&a=index&admin=0\">六千盏XXX照明应急灯护航世博场馆</a><a href=\"http://localhost/zzy/index.php?c=news-detail&a=index&admin=0\">六千盏XXX照明应急灯护航世博场馆</a><a href=\"http://localhost/zzy/index.php?c=news-detail&a=index&admin=0\">六千盏XXX照明应急灯护航世博场馆</a><a href=\"http://localhost/zzy/index.php?c=news-detail&a=index&admin=0\">六千盏XXX照明应急灯护航世博场馆</a><a href=\"http://localhost/zzy/index.php?c=news-detail&a=index&admin=0\">六千盏XXX照明应急灯护航世博场馆</a><a href=\"http://localhost/zzy/index.php?c=news-detail&a=index&admin=0\">六千盏XXX照明应急灯护航世博场馆</a><a href=\"http://localhost/zzy/index.php?c=news-detail&a=index&admin=0\">六千盏XXX照明应急灯护航世博场馆</a><a href=\"http://localhost/zzy/index.php?c=news-detail&a=index&admin=0\">六千盏XXX照明应急灯护航世博场馆</a><a href=\"http://localhost/zzy/index.php?c=news-detail&a=index&admin=0\">六千盏XXX照明应急灯护航世博场馆</a>', '六千盏XXX照明应急', '2018', '0', '', '12');
INSERT INTO `lrkr_news` VALUES ('6', 'XXX照明被认定为省级企业技术中心 ', 'XXX照明被认定为省级企业技术中心 ', '<a href=\"http://localhost/zzy/index.php?c=news-detail&amp;a=index&amp;admin=0\">XXX照明被认定为省级企业技术中心 </a><a href=\"http://localhost/zzy/index.php?c=news-detail&amp;a=index&amp;admin=0\">XXX照明被认定为省级企业技术中心 </a><a href=\"http://localhost/zzy/index.php?c=news-detail&amp;a=index&amp;admin=0\">XXX照明被认定为省级企业技术中心 </a><a href=\"http://localhost/zzy/index.php?c=news-detail&amp;a=index&amp;admin=0\">XXX照明被认定为省级企业技术中心 </a><a href=\"http://localhost/zzy/index.php?c=news-detail&amp;a=index&amp;admin=0\">XXX照明被认定为省级企业技术中心 </a><a href=\"http://localhost/zzy/index.php?c=news-detail&amp;a=index&amp;admin=0\">XXX照明被认定为省级企业技术中心 </a><a href=\"http://localhost/zzy/index.php?c=news-detail&amp;a=index&amp;admin=0\">XXX照明被认定为省级企业技术中心 </a><a href=\"http://localhost/zzy/index.php?c=news-detail&amp;a=index&amp;admin=0\">XXX照明被认定为省级企业技术中心 </a><a href=\"http://localhost/zzy/index.php?c=news-detail&amp;a=index&amp;admin=0\">XXX照明被认定为省级企业技术中心 </a><a href=\"http://localhost/zzy/index.php?c=news-detail&amp;a=index&amp;admin=0\">XXX照明被认定为省级企业技术中心 </a><a href=\"http://localhost/zzy/index.php?c=news-detail&amp;a=index&amp;admin=0\">XXX照明被认定为省级企业技术中心 </a><a href=\"http://localhost/zzy/index.php?c=news-detail&amp;a=index&amp;admin=0\">XXX照明被认定为省级企业技术中心 </a>', 'XXX照明被认定为省', '1530082220', '0', '', '10');
INSERT INTO `lrkr_news` VALUES ('7', '日本LED灯泡销售额比重突破50% ', '日本LED灯泡销售额比重突破50% ', '<a href=\"http://localhost/zzy/index.php?c=news-detail&amp;a=index&amp;admin=0\">日本LED灯泡销售额比重突破50% </a><a href=\"http://localhost/zzy/index.php?c=news-detail&amp;a=index&amp;admin=0\">日本LED灯泡销售额比重突破50% </a><a href=\"http://localhost/zzy/index.php?c=news-detail&amp;a=index&amp;admin=0\">日本LED灯泡销售额比重突破50% </a><a href=\"http://localhost/zzy/index.php?c=news-detail&amp;a=index&amp;admin=0\">日本LED灯泡销售额比重突破50% </a><a href=\"http://localhost/zzy/index.php?c=news-detail&amp;a=index&amp;admin=0\">日本LED灯泡销售额比重突破50% </a><a href=\"http://localhost/zzy/index.php?c=news-detail&amp;a=index&amp;admin=0\">日本LED灯泡销售额比重突破50% </a><a href=\"http://localhost/zzy/index.php?c=news-detail&amp;a=index&amp;admin=0\">日本LED灯泡销售额比重突破50% </a><a href=\"http://localhost/zzy/index.php?c=news-detail&amp;a=index&amp;admin=0\">日本LED灯泡销售额比重突破50% </a><a href=\"http://localhost/zzy/index.php?c=news-detail&amp;a=index&amp;admin=0\">日本LED灯泡销售额比重突破50% </a><a href=\"http://localhost/zzy/index.php?c=news-detail&amp;a=index&amp;admin=0\">日本LED灯泡销售额比重突破50% </a><a href=\"http://localhost/zzy/index.php?c=news-detail&amp;a=index&amp;admin=0\">日本LED灯泡销售额比重突破50% </a>', '日本LED灯泡销售额', '1530082242', '0', '', '12');
INSERT INTO `lrkr_news` VALUES ('8', 'XXX照明三年欲成为世界第一LED电源企业', 'XXX照明三年欲成为世界第一LED电源企业', '<a href=\"http://localhost/zzy/index.php?c=news-detail&a=index&admin=0\">XXX照明三年欲成为世界第一LED电源企业</a><a href=\"http://localhost/zzy/index.php?c=news-detail&a=index&admin=0\">XXX照明三年欲成为世界第一LED电源企业</a><a href=\"http://localhost/zzy/index.php?c=news-detail&a=index&admin=0\">XXX照明三年欲成为世界第一LED电源企业</a><a href=\"http://localhost/zzy/index.php?c=news-detail&a=index&admin=0\">XXX照明三年欲成为世界第一LED电源企业</a><a href=\"http://localhost/zzy/index.php?c=news-detail&a=index&admin=0\">XXX照明三年欲成为世界第一LED电源企业</a><a href=\"http://localhost/zzy/index.php?c=news-detail&a=index&admin=0\">XXX照明三年欲成为世界第一LED电源企业</a><a href=\"http://localhost/zzy/index.php?c=news-detail&a=index&admin=0\">XXX照明三年欲成为世界第一LED电源企业</a><a href=\"http://localhost/zzy/index.php?c=news-detail&a=index&admin=0\">XXX照明三年欲成为世界第一LED电源企业</a>', 'XXX照明三年欲成为', '2018', '0', '', '10');
INSERT INTO `lrkr_news` VALUES ('9', '南京XXX照明专卖店隆重开业', '南京XXX照明专卖店隆重开业', '<a href=\"http://localhost/zzy/index.php?c=news-detail&a=index&admin=0\">南京XXX照明专卖店隆重开业</a><a href=\"http://localhost/zzy/index.php?c=news-detail&a=index&admin=0\">南京XXX照明专卖店隆重开业</a><a href=\"http://localhost/zzy/index.php?c=news-detail&a=index&admin=0\">南京XXX照明专卖店隆重开业</a><a href=\"http://localhost/zzy/index.php?c=news-detail&a=index&admin=0\">南京XXX照明专卖店隆重开业</a><a href=\"http://localhost/zzy/index.php?c=news-detail&a=index&admin=0\">南京XXX照明专卖店隆重开业</a><a href=\"http://localhost/zzy/index.php?c=news-detail&a=index&admin=0\">南京XXX照明专卖店隆重开业</a><a href=\"http://localhost/zzy/index.php?c=news-detail&a=index&admin=0\">南京XXX照明专卖店隆重开业</a><a href=\"http://localhost/zzy/index.php?c=news-detail&a=index&admin=0\">南京XXX照明专卖店隆重开业</a><a href=\"http://localhost/zzy/index.php?c=news-detail&a=index&admin=0\">南京XXX照明专卖店隆重开业</a><a href=\"http://localhost/zzy/index.php?c=news-detail&a=index&admin=0\">南京XXX照明专卖店隆重开业</a>', '南京XXX照明专卖店', '1530082299', '0', '', '12');
INSERT INTO `lrkr_news` VALUES ('10', '首尔半导体切入LEDTV供应链 照明为重心', '首尔半导体切入LEDTV供应链 照明为重心', '<a href=\"http://localhost/zzy/index.php?c=news-detail&amp;a=index&amp;admin=0\">首尔半导体切入LEDTV供应链 照明为重心</a><a href=\"http://localhost/zzy/index.php?c=news-detail&amp;a=index&amp;admin=0\">首尔半导体切入LEDTV供应链 照明为重心</a><a href=\"http://localhost/zzy/index.php?c=news-detail&amp;a=index&amp;admin=0\">首尔半导体切入LEDTV供应链 照明为重心</a><a href=\"http://localhost/zzy/index.php?c=news-detail&amp;a=index&amp;admin=0\">首尔半导体切入LEDTV供应链 照明为重心</a><a href=\"http://localhost/zzy/index.php?c=news-detail&amp;a=index&amp;admin=0\">首尔半导体切入LEDTV供应链 照明为重心</a><a href=\"http://localhost/zzy/index.php?c=news-detail&amp;a=index&amp;admin=0\">首尔半导体切入LEDTV供应链 照明为重心</a><a href=\"http://localhost/zzy/index.php?c=news-detail&amp;a=index&amp;admin=0\">首尔半导体切入LEDTV供应链 照明为重心</a><a href=\"http://localhost/zzy/index.php?c=news-detail&amp;a=index&amp;admin=0\">首尔半导体切入LEDTV供应链 照明为重心</a><a href=\"http://localhost/zzy/index.php?c=news-detail&amp;a=index&amp;admin=0\">首尔半导体切入LEDTV供应链 照明为重心</a><a href=\"http://localhost/zzy/index.php?c=news-detail&amp;a=index&amp;admin=0\">首尔半导体切入LEDTV供应链 照明为重心</a>', '首尔半导体切入LED', '1530082335', '0', '', '12');
INSERT INTO `lrkr_news` VALUES ('11', 'XXX照明在北美发布LED等新照明产品', 'XXX照明在北美发布LED等新照明产品', '<a href=\"http://localhost/zzy/index.php?c=news-detail&amp;a=index&amp;admin=0\">XXX照明在北美发布LED等新照明产品</a><a href=\"http://localhost/zzy/index.php?c=news-detail&amp;a=index&amp;admin=0\">XXX照明在北美发布LED等新照明产品</a><a href=\"http://localhost/zzy/index.php?c=news-detail&amp;a=index&amp;admin=0\">XXX照明在北美发布LED等新照明产品</a><a href=\"http://localhost/zzy/index.php?c=news-detail&amp;a=index&amp;admin=0\">XXX照明在北美发布LED等新照明产品</a><a href=\"http://localhost/zzy/index.php?c=news-detail&amp;a=index&amp;admin=0\">XXX照明在北美发布LED等新照明产品</a><a href=\"http://localhost/zzy/index.php?c=news-detail&amp;a=index&amp;admin=0\">XXX照明在北美发布LED等新照明产品</a><a href=\"http://localhost/zzy/index.php?c=news-detail&amp;a=index&amp;admin=0\">XXX照明在北美发布LED等新照明产品</a><a href=\"http://localhost/zzy/index.php?c=news-detail&amp;a=index&amp;admin=0\">XXX照明在北美发布LED等新照明产品</a><a href=\"http://localhost/zzy/index.php?c=news-detail&amp;a=index&amp;admin=0\">XXX照明在北美发布LED等新照明产品</a><a href=\"http://localhost/zzy/index.php?c=news-detail&amp;a=index&amp;admin=0\">XXX照明在北美发布LED等新照明产品</a>', 'XXX照明在北美发布', '1530082347', '0', '', '11');
INSERT INTO `lrkr_news` VALUES ('12', '凝聚思想 统一意识', '凝聚思想 统一意识', '<a href=\"http://localhost/zzy/news-decail.php\">凝聚思想 统一意识</a><a href=\"http://localhost/zzy/news-decail.php\">凝聚思想 统一意识</a><a href=\"http://localhost/zzy/news-decail.php\">凝聚思想 统一意识</a><a href=\"http://localhost/zzy/news-decail.php\">凝聚思想 统一意识</a><a href=\"http://localhost/zzy/news-decail.php\">凝聚思想 统一意识</a><a href=\"http://localhost/zzy/news-decail.php\">凝聚思想 统一意识</a><a href=\"http://localhost/zzy/news-decail.php\">凝聚思想 统一意识</a><a href=\"http://localhost/zzy/news-decail.php\">凝聚思想 统一意识</a><a href=\"http://localhost/zzy/news-decail.php\">凝聚思想 统一意识</a><a href=\"http://localhost/zzy/news-decail.php\">凝聚思想 统一意识</a><a href=\"http://localhost/zzy/news-decail.php\">凝聚思想 统一意识</a>', '凝聚思想 统一意识', '1530082366', '0', '', '11');
INSERT INTO `lrkr_news` VALUES ('13', '全国换节能灯1年省4个三峡工程 ', '全国换节能灯1年省4个三峡工程 全国换节能灯1年省4个三峡工程 ', '<a href=\"http://localhost/zzy/index.php?c=news-detail&a=index&admin=0\">全国换节能灯1年省4个三峡工程 </a><a href=\"http://localhost/zzy/index.php?c=news-detail&a=index&admin=0\">全国换节能灯1年省4个三峡工程 </a><a href=\"http://localhost/zzy/index.php?c=news-detail&a=index&admin=0\">全国换节能灯1年省4个三峡工程 </a><a href=\"http://localhost/zzy/index.php?c=news-detail&a=index&admin=0\">全国换节能灯1年省4个三峡工程 </a><a href=\"http://localhost/zzy/index.php?c=news-detail&a=index&admin=0\">全国换节能灯1年省4个三峡工程 </a><a href=\"http://localhost/zzy/index.php?c=news-detail&a=index&admin=0\">全国换节能灯1年省4个三峡工程 </a><a href=\"http://localhost/zzy/index.php?c=news-detail&a=index&admin=0\">全国换节能灯1年省4个三峡工程 </a><a href=\"http://localhost/zzy/index.php?c=news-detail&a=index&admin=0\">全国换节能灯1年省4个三峡工程 </a><a href=\"http://localhost/zzy/index.php?c=news-detail&a=index&admin=0\">全国换节能灯1年省4个三峡工程 </a><a href=\"http://localhost/zzy/index.php?c=news-detail&a=index&admin=0\">全国换节能灯1年省4个三峡工程 </a><a href=\"http://localhost/zzy/index.php?c=news-detail&a=index&admin=0\">全国换节能灯1年省4个三峡工程 </a><a href=\"http://localhost/zzy/index.php?c=news-detail&a=index&admin=0\">全国换节能灯1年省4个三峡工程 </a><a href=\"http://localhost/zzy/index.php?c=news-detail&a=index&admin=0\">全国换节能灯1年省4个三峡工程 </a><a href=\"http://localhost/zzy/index.php?c=news-detail&a=index&admin=0\">全国换节能灯1年省4个三峡工程 </a>', '全国换节能灯1年省4', '2018', '0', '', '12');
INSERT INTO `lrkr_news` VALUES ('14', 'XXX照明LED路灯照亮古城扬州角落', 'XXX照明LED路灯照亮古城扬州角落', '<a href=\"http://localhost/zzy/index.php?c=news-detail&a=index&admin=0\">XXX照明LED路灯照亮古城扬州角落</a><a href=\"http://localhost/zzy/index.php?c=news-detail&a=index&admin=0\">XXX照明LED路灯照亮古城扬州角落</a><a href=\"http://localhost/zzy/index.php?c=news-detail&a=index&admin=0\">XXX照明LED路灯照亮古城扬州角落</a><a href=\"http://localhost/zzy/index.php?c=news-detail&a=index&admin=0\">XXX照明LED路灯照亮古城扬州角落</a><a href=\"http://localhost/zzy/index.php?c=news-detail&a=index&admin=0\">XXX照明LED路灯照亮古城扬州角落</a><a href=\"http://localhost/zzy/index.php?c=news-detail&a=index&admin=0\">XXX照明LED路灯照亮古城扬州角落</a><a href=\"http://localhost/zzy/index.php?c=news-detail&a=index&admin=0\">XXX照明LED路灯照亮古城扬州角落</a><a href=\"http://localhost/zzy/index.php?c=news-detail&a=index&admin=0\">XXX照明LED路灯照亮古城扬州角落</a><a href=\"http://localhost/zzy/index.php?c=news-detail&a=index&admin=0\">XXX照明LED路灯照亮古城扬州角落</a><a href=\"http://localhost/zzy/index.php?c=news-detail&a=index&admin=0\">XXX照明LED路灯照亮古城扬州角落</a><a href=\"http://localhost/zzy/index.php?c=news-detail&a=index&admin=0\">XXX照明LED路灯照亮古城扬州角落</a><a href=\"http://localhost/zzy/index.php?c=news-detail&a=index&admin=0\">XXX照明LED路灯照亮古城扬州角落</a><a href=\"http://localhost/zzy/index.php?c=news-detail&a=index&admin=0\">XXX照明LED路灯照亮古城扬州角落</a><a href=\"http://localhost/zzy/index.php?c=news-detail&a=index&admin=0\">XXX照明LED路灯照亮古城扬州角落</a><a href=\"http://localhost/zzy/index.php?c=news-detail&a=index&admin=0\">XXX照明LED路灯照亮古城扬州角落</a>', 'XXX照明LED路灯', '2018', '0', '', '12');

-- ----------------------------
-- Table structure for `lrkr_product`
-- ----------------------------
DROP TABLE IF EXISTS `lrkr_product`;
CREATE TABLE `lrkr_product` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `pro_name` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '产品名称',
  `pro_photo` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '产品预览图',
  `pro_photos` text CHARACTER SET utf8 NOT NULL COMMENT '产品多图',
  `description` text CHARACTER SET utf8 NOT NULL COMMENT '产品描述',
  `content` text CHARACTER SET utf8 NOT NULL COMMENT '产品介绍',
  `addtime` int(11) unsigned NOT NULL COMMENT '添加时间',
  `category_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of lrkr_product
-- ----------------------------
INSERT INTO `lrkr_product` VALUES ('1', '美式复古吊灯', 'uploads/2018-06-27/8266e4bfeda1bd42d8f9794eb4ea0a13.png', '', '', '						<h4>创意个性人字形灯具</h4>\r\n						<p>产品名称<span>：固定式LED灯具</span></p>\r\n						<p>证书编号<span>：2017011001968472</span></p>\r\n						<p>吊灯类型<span> : 铁艺吊灯</span></p>\r\n						<p>型号<span>：固定式LED灯具</span></p>\r\n						<p>灯具型状<span> : 吸吊两用型吊灯</span></p>\r\n						<p>灯罩辅材质<span> : PMMA高透光率灯罩</span></p>\r\n						<p>质保年限<span> : 3年</span></p>\r\n						<p>产品名称<span>：固定式LED灯具</span></p>\r\n						<p>证书编号<span>：2017011001968472</span></p>\r\n						<p>吊灯类型<span> : 铁艺吊灯</span></p>\r\n						<p>型号<span>：固定式LED灯具</span></p>\r\n						<p>灯具型状<span> : 吸吊两用型吊灯</span></p>\r\n						<p>灯罩辅材质<span> : PMMA高透光率灯罩</span></p>\r\n						<p>质保年限<span> : 3年</span></p>\r\n						<p>灯罩主材质<span> : PMMA高透光率灯罩</span></p>', '0', '13');
INSERT INTO `lrkr_product` VALUES ('2', '韩式水晶花草吸顶灯', 'uploads/2018-06-27/09dd8c2662b96ce14928333f055c5580.png', '', '韩式水晶花草吸顶灯', '						<p>产品名称<span>：固定式LED灯具</span></p>\r\n						<p>证书编号<span>：2017011001968472</span></p>\r\n						<p>吊灯类型<span> : 铁艺吊灯</span></p>\r\n						<p>型号<span>：固定式LED灯具</span></p>\r\n						<p>灯具型状<span> : 吸吊两用型吊灯</span></p>\r\n						<p>灯罩辅材质<span> : PMMA高透光率灯罩</span></p>\r\n						<p>质保年限<span> : 3年</span></p>\r\n						<p>灯罩主材质<span> : PMMA高透光率灯罩</span></p>', '1529942400', '13');
INSERT INTO `lrkr_product` VALUES ('3', '中式仿古吸顶灯', 'uploads/2018-06-27/8266e4bfeda1bd42d8f9794eb4ea0a13.png', '', '', '						<p>产品名称<span>：固定式LED灯具</span></p>\r\n						<p>证书编号<span>：2017011001968472</span></p>\r\n						<p>吊灯类型<span> : 铁艺吊灯</span></p>\r\n						<p>型号<span>：固定式LED灯具</span></p>\r\n						<p>灯具型状<span> : 吸吊两用型吊灯</span></p>\r\n						<p>灯罩辅材质<span> : PMMA高透光率灯罩</span></p>\r\n						<p>质保年限<span> : 3年</span></p>\r\n						<p>灯罩主材质<span> : PMMA高透光率灯罩</span></p>', '0', '13');
INSERT INTO `lrkr_product` VALUES ('4', '2欧式水晶吸顶灯', 'uploads/2018-06-27/602e8f042f463dc47ebfdf6a94ed5a6d.png', '', '', '												<p>产品名称<span>：固定式LED灯具</span></p>\r\n						<p>证书编号<span>：2017011001968472</span></p>\r\n						<p>吊灯类型<span> : 铁艺吊灯</span></p>\r\n						<p>型号<span>：固定式LED灯具</span></p>\r\n						<p>灯具型状<span> : 吸吊两用型吊灯</span></p>\r\n						<p>灯罩辅材质<span> : PMMA高透光率灯罩</span></p>\r\n						<p>质保年限<span> : 3年</span></p>\r\n						<p>灯罩主材质<span> : PMMA高透光率灯罩</span></p>', '0', '13');
INSERT INTO `lrkr_product` VALUES ('5', '1欧式水晶吸顶灯', 'home/template/img/p1.png', '', '', '						<p>产品名称<span>：固定式LED灯具</span></p>\r\n						<p>证书编号<span>：2017011001968472</span></p>\r\n						<p>吊灯类型<span> : 铁艺吊灯</span></p>\r\n						<p>型号<span>：固定式LED灯具</span></p>\r\n						<p>灯具型状<span> : 吸吊两用型吊灯</span></p>\r\n						<p>灯罩辅材质<span> : PMMA高透光率灯罩</span></p>\r\n						<p>质保年限<span> : 3年</span></p>\r\n						<p>灯罩主材质<span> : PMMA高透光率灯罩</span></p>', '0', '14');
INSERT INTO `lrkr_product` VALUES ('6', '美式复古吊灯', 'uploads/2018-06-27/4a47a0db6e60853dedfcfdf08a5ca249.png', '', 's', '												<p>产品名称<span>：固定式LED灯具</span></p>\r\n						<p>证书编号<span>：2017011001968472</span></p>\r\n						<p>吊灯类型<span> : 铁艺吊灯</span></p>\r\n						<p>型号<span>：固定式LED灯具</span></p>\r\n						<p>灯具型状<span> : 吸吊两用型吊灯</span></p>\r\n						<p>灯罩辅材质<span> : PMMA高透光率灯罩</span></p>\r\n						<p>质保年限<span> : 3年</span></p>\r\n						<p>灯罩主材质<span> : PMMA高透光率灯罩</span></p>', '1530028800', '14');
INSERT INTO `lrkr_product` VALUES ('8', '中式仿古吸顶灯', 'uploads/2018-06-27/10fb15c77258a991b0028080a64fb42d.png', 'uploads/2018-06-27/10fb15c77258a991b0028080a64fb42d.png', '中式仿古吸顶灯', '						<p>产品名称<span>：固定式LED灯具</span></p>\r\n						<p>证书编号<span>：2017011001968472</span></p>\r\n						<p>吊灯类型<span> : 铁艺吊灯</span></p>\r\n						<p>型号<span>：固定式LED灯具</span></p>\r\n						<p>灯具型状<span> : 吸吊两用型吊灯</span></p>\r\n						<p>灯罩辅材质<span> : PMMA高透光率灯罩</span></p>\r\n						<p>质保年限<span> : 3年</span></p>\r\n						<p>灯罩主材质<span> : PMMA高透光率灯罩</span></p>', '1530097705', '14');
INSERT INTO `lrkr_product` VALUES ('9', '欧式水晶吸顶灯', 'uploads/2018-06-27/09dd8c2662b96ce14928333f055c5580.png', 'uploads/2018-06-27/09dd8c2662b96ce14928333f055c5580.png', '欧式水晶吸顶灯', '						<p>产品名称<span>：固定式LED灯具</span></p>\r\n						<p>证书编号<span>：2017011001968472</span></p>\r\n						<p>吊灯类型<span> : 铁艺吊灯</span></p>\r\n						<p>型号<span>：固定式LED灯具</span></p>\r\n						<p>灯具型状<span> : 吸吊两用型吊灯</span></p>\r\n						<p>灯罩辅材质<span> : PMMA高透光率灯罩</span></p>\r\n						<p>质保年限<span> : 3年</span></p>\r\n						<p>灯罩主材质<span> : PMMA高透光率灯罩</span></p>', '1530097726', '14');
INSERT INTO `lrkr_product` VALUES ('10', '花环式吊灯', 'uploads/2018-06-27/8266e4bfeda1bd42d8f9794eb4ea0a13.png', 'uploads/2018-06-27/8266e4bfeda1bd42d8f9794eb4ea0a13.png', '花环式吊灯', '						<p>产品名称<span>：固定式LED灯具</span></p>\r\n						<p>证书编号<span>：2017011001968472</span></p>\r\n						<p>吊灯类型<span> : 铁艺吊灯</span></p>\r\n						<p>型号<span>：固定式LED灯具</span></p>\r\n						<p>灯具型状<span> : 吸吊两用型吊灯</span></p>\r\n						<p>灯罩辅材质<span> : PMMA高透光率灯罩</span></p>\r\n						<p>质保年限<span> : 3年</span></p>\r\n						<p>灯罩主材质<span> : PMMA高透光率灯罩</span></p>', '1530097755', '15');
INSERT INTO `lrkr_product` VALUES ('11', '英式复古吊灯', 'uploads/2018-06-27/f19c9085129709ee14d013be869df69b.png', 'uploads/2018-06-27/f19c9085129709ee14d013be869df69b.png', '英式复古吊灯', '<a href=\"http://localhost/zzy/index.php?c=produt-detail&amp;a=index&amp;admin=0\">英式复古吊灯</a><a href=\"http://localhost/zzy/index.php?c=produt-detail&amp;a=index&amp;admin=0\">英式复古吊灯</a><a href=\"http://localhost/zzy/index.php?c=produt-detail&amp;a=index&amp;admin=0\">英式复古吊灯</a><a href=\"http://localhost/zzy/index.php?c=produt-detail&amp;a=index&amp;admin=0\">英式复古吊灯</a><a href=\"http://localhost/zzy/index.php?c=produt-detail&amp;a=index&amp;admin=0\">英式复古吊灯</a>', '1530097775', '15');
INSERT INTO `lrkr_product` VALUES ('12', '环型LED灯', 'uploads/2018-06-27/9eb9cd58b9ea5e04c890326b5c1f471f.png', 'uploads/2018-06-27/9eb9cd58b9ea5e04c890326b5c1f471f.png', '环型LED灯', '<a href=\"http://localhost/zzy/index.php?c=produt-detail&amp;a=index&amp;admin=0\">环型LED灯</a><a href=\"http://localhost/zzy/index.php?c=produt-detail&amp;a=index&amp;admin=0\">环型LED灯</a><a href=\"http://localhost/zzy/index.php?c=produt-detail&amp;a=index&amp;admin=0\">环型LED灯</a><a href=\"http://localhost/zzy/index.php?c=produt-detail&amp;a=index&amp;admin=0\">环型LED灯</a>', '1530097790', '15');
INSERT INTO `lrkr_product` VALUES ('13', '鹿型夜明灯', 'uploads/2018-06-27/602e8f042f463dc47ebfdf6a94ed5a6d.png', 'uploads/2018-06-27/602e8f042f463dc47ebfdf6a94ed5a6d.png', '鹿型夜明灯', '<a href=\"http://localhost/zzy/index.php?c=produt-detail&amp;a=index&amp;admin=0\">鹿型夜明灯</a><a href=\"http://localhost/zzy/index.php?c=produt-detail&amp;a=index&amp;admin=0\">鹿型夜明灯</a><a href=\"http://localhost/zzy/index.php?c=produt-detail&amp;a=index&amp;admin=0\">鹿型夜明灯</a><a href=\"http://localhost/zzy/index.php?c=produt-detail&amp;a=index&amp;admin=0\">鹿型夜明灯</a><a href=\"http://localhost/zzy/index.php?c=produt-detail&amp;a=index&amp;admin=0\">鹿型夜明灯</a><a href=\"http://localhost/zzy/index.php?c=produt-detail&amp;a=index&amp;admin=0\">鹿型夜明灯</a>', '1530097811', '15');
INSERT INTO `lrkr_product` VALUES ('14', '鹿型夜明灯', 'uploads/2018-06-27/602e8f042f463dc47ebfdf6a94ed5a6d.png', '27/602e8f042f463dc47ebfdf6a94ed5a6d.png', '鹿型夜明灯', '<a href=\"http://localhost/zzy/index.php?c=produt-detail&amp;a=index&amp;admin=0\">鹿型夜明灯</a><a href=\"http://localhost/zzy/index.php?c=produt-detail&amp;a=index&amp;admin=0\">鹿型夜明灯</a><a href=\"http://localhost/zzy/index.php?c=produt-detail&amp;a=index&amp;admin=0\">鹿型夜明灯</a><a href=\"http://localhost/zzy/index.php?c=produt-detail&amp;a=index&amp;admin=0\">鹿型夜明灯</a><a href=\"http://localhost/zzy/index.php?c=produt-detail&amp;a=index&amp;admin=0\">鹿型夜明灯</a><a href=\"http://localhost/zzy/index.php?c=produt-detail&amp;a=index&amp;admin=0\">鹿型夜明灯</a>', '1530097811', '16');
INSERT INTO `lrkr_product` VALUES ('15', '美式复古吊灯', 'uploads/2018-06-27/4a47a0db6e60853dedfcfdf08a5ca249.png', 'uploads/2018-06-27/4a47a0db6e60853dedfcfdf08a5ca249.png', '美式复古吊灯', '<a href=\"http://localhost/zzy/index.php?c=produt-detail&amp;a=index&amp;admin=0\">美式复古吊灯</a><a href=\"http://localhost/zzy/index.php?c=produt-detail&amp;a=index&amp;admin=0\">美式复古吊灯</a><a href=\"http://localhost/zzy/index.php?c=produt-detail&amp;a=index&amp;admin=0\">美式复古吊灯</a><a href=\"http://localhost/zzy/index.php?c=produt-detail&amp;a=index&amp;admin=0\">美式复古吊灯</a><a href=\"http://localhost/zzy/index.php?c=produt-detail&amp;a=index&amp;admin=0\">美式复古吊灯</a>', '1530098015', '16');
INSERT INTO `lrkr_product` VALUES ('16', '韩式水晶花草吸顶灯', 'uploads/2018-06-27/10fb15c77258a991b0028080a64fb42d.png', 'uploads/2018-06-27/10fb15c77258a991b0028080a64fb42d.png', '韩式水晶花草吸顶灯', '<a href=\"http://localhost/zzy/index.php?c=produt-detail&amp;a=index&amp;admin=0\">韩式水晶花草吸顶灯</a><a href=\"http://localhost/zzy/index.php?c=produt-detail&amp;a=index&amp;admin=0\">韩式水晶花草吸顶灯</a><a href=\"http://localhost/zzy/index.php?c=produt-detail&amp;a=index&amp;admin=0\">韩式水晶花草吸顶灯</a>', '1530098034', '16');
INSERT INTO `lrkr_product` VALUES ('17', '欧式水晶吸顶灯', 'uploads/2018-06-27/09dd8c2662b96ce14928333f055c5580.png', 'uploads/2018-06-27/09dd8c2662b96ce14928333f055c5580.png', '欧式水晶吸顶灯', '<a href=\"http://localhost/zzy/index.php?c=produt-detail&amp;a=index&amp;admin=0\">欧式水晶吸顶灯</a><a href=\"http://localhost/zzy/index.php?c=produt-detail&amp;a=index&amp;admin=0\">欧式水晶吸顶灯</a><a href=\"http://localhost/zzy/index.php?c=produt-detail&amp;a=index&amp;admin=0\">欧式水晶吸顶灯</a><a href=\"http://localhost/zzy/index.php?c=produt-detail&amp;a=index&amp;admin=0\">欧式水晶吸顶灯</a><a href=\"http://localhost/zzy/index.php?c=produt-detail&amp;a=index&amp;admin=0\">欧式水晶吸顶灯</a><a href=\"http://localhost/zzy/index.php?c=produt-detail&amp;a=index&amp;admin=0\">欧式水晶吸顶灯</a>', '1530098052', '16');
INSERT INTO `lrkr_product` VALUES ('18', '花环式吊灯', 'uploads/2018-06-27/8266e4bfeda1bd42d8f9794eb4ea0a13.png', 'uploads/2018-06-27/8266e4bfeda1bd42d8f9794eb4ea0a13.png', '花环式吊灯', '<a href=\"http://localhost/zzy/index.php?c=produt-detail&amp;a=index&amp;admin=0\">花环式吊灯</a><a href=\"http://localhost/zzy/index.php?c=produt-detail&amp;a=index&amp;admin=0\">花环式吊灯</a><a href=\"http://localhost/zzy/index.php?c=produt-detail&amp;a=index&amp;admin=0\">花环式吊灯</a><a href=\"http://localhost/zzy/index.php?c=produt-detail&amp;a=index&amp;admin=0\">花环式吊灯</a><a href=\"http://localhost/zzy/index.php?c=produt-detail&amp;a=index&amp;admin=0\">花环式吊灯</a><a href=\"http://localhost/zzy/index.php?c=produt-detail&amp;a=index&amp;admin=0\">花环式吊灯</a><a href=\"http://localhost/zzy/index.php?c=produt-detail&amp;a=index&amp;admin=0\">花环式吊灯</a>', '1530098067', '17');
INSERT INTO `lrkr_product` VALUES ('19', '英式复古吊灯', 'uploads/2018-06-27/f19c9085129709ee14d013be869df69b.png', 'uploads/2018-06-27/f19c9085129709ee14d013be869df69b.png', '英式复古吊灯', '英式复古吊灯英式复古吊灯英式复古吊灯英式复古吊灯英式复古吊灯英式复古吊灯英式复古吊灯英式复古吊灯英式复古吊灯英式复古吊灯英式复古吊灯英式复古吊灯英式复古吊灯英式复古吊灯英式复古吊灯英式复古吊灯英式复古吊灯英式复古吊灯英式复古吊灯英式复古吊灯英式复古吊灯英式复古吊灯英式复古吊灯英式复古吊灯英式复古吊灯英式复古吊灯英式复古吊灯英式复古吊灯英式复古吊灯英式复古吊灯英式复古吊灯英式复古吊灯英式复古吊灯英式复古吊灯', '1530098086', '17');
INSERT INTO `lrkr_product` VALUES ('20', '环型LED灯', 'uploads/2018-06-27/9eb9cd58b9ea5e04c890326b5c1f471f.png', 'uploads/2018-06-27/9eb9cd58b9ea5e04c890326b5c1f471f.png', '环型LED灯', '环型LED灯环型LED灯环型LED灯环型LED灯环型LED灯环型LED灯环型LED灯环型LED灯环型LED灯环型LED灯环型LED灯环型LED灯环型LED灯环型LED灯环型LED灯环型LED灯环型LED灯环型LED灯环型LED灯环型LED灯环型LED灯环型LED灯环型LED灯环型LED灯环型LED灯环型LED灯环型LED灯环型LED灯环型LED灯环型LED灯', '1530098104', '17');
INSERT INTO `lrkr_product` VALUES ('21', '鹿型夜明灯', 'uploads/2018-06-27/602e8f042f463dc47ebfdf6a94ed5a6d.png', 'uploads/2018-06-27/602e8f042f463dc47ebfdf6a94ed5a6d.png', '鹿型夜明灯', '鹿型夜明灯鹿型夜明灯鹿型夜明灯鹿型夜明灯鹿型夜明灯鹿型夜明灯鹿型夜明灯鹿型夜明灯鹿型夜明灯鹿型夜明灯鹿型夜明灯鹿型夜明灯鹿型夜明灯鹿型夜明灯鹿型夜明灯鹿型夜明灯鹿型夜明灯鹿型夜明灯鹿型夜明灯鹿型夜明灯鹿型夜明灯鹿型夜明灯鹿型夜明灯鹿型夜明灯鹿型夜明灯鹿型夜明灯鹿型夜明灯', '1530098140', '17');
INSERT INTO `lrkr_product` VALUES ('22', '花环式吊灯', 'uploads/2018-06-27/f19c9085129709ee14d013be869df69b.png', 'uploads/2018-06-27/f19c9085129709ee14d013be869df69b.png', '花环式吊灯', '花环式吊灯花环式吊灯花环式吊灯花环式吊灯花环式吊灯花环式吊灯花环式吊灯花环式吊灯花环式吊灯花环式吊灯', '1530098351', '18');
INSERT INTO `lrkr_product` VALUES ('23', '英式复古吊灯', 'uploads/2018-06-27/9eb9cd58b9ea5e04c890326b5c1f471f.png', 'uploads/2018-06-27/9eb9cd58b9ea5e04c890326b5c1f471f.png', '英式复古吊灯', '英式复古吊灯英式复古吊灯英式复古吊灯英式复古吊灯英式复古吊灯英式复古吊灯英式复古吊灯英式复古吊灯英式复古吊灯英式复古吊灯', '1530098366', '18');
INSERT INTO `lrkr_product` VALUES ('24', '环型LED灯', 'uploads/2018-06-27/fb5c81ed3a220004b71069645f112867.png', 'uploads/2018-06-27/fb5c81ed3a220004b71069645f112867.png', '环型LED灯', '环型LED灯环型LED灯环型LED灯环型LED灯环型LED灯环型LED灯环型LED灯', '1530098379', '18');
INSERT INTO `lrkr_product` VALUES ('25', '鹿型夜明灯', 'uploads/2018-06-27/602e8f042f463dc47ebfdf6a94ed5a6d.png', 'uploads/2018-06-27/602e8f042f463dc47ebfdf6a94ed5a6d.png', '鹿型夜明灯', '鹿型夜明灯鹿型夜明灯鹿型夜明灯鹿型夜明灯鹿型夜明灯鹿型夜明灯鹿型夜明灯鹿型夜明灯鹿型夜明灯<br />', '1530098396', '18');

-- ----------------------------
-- Table structure for `lrkr_setup`
-- ----------------------------
DROP TABLE IF EXISTS `lrkr_setup`;
CREATE TABLE `lrkr_setup` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name_cn` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `type` tinyint(1) unsigned DEFAULT '0' COMMENT '类型：0 文字 1 图片',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of lrkr_setup
-- ----------------------------
INSERT INTO `lrkr_setup` VALUES ('1', '传真', '86519-85129131', '0');
INSERT INTO `lrkr_setup` VALUES ('2', '邮箱', '2851846035@qq.com', '0');
INSERT INTO `lrkr_setup` VALUES ('3', '地址', '深圳市宝安区松岗街道洪桥头社区学生工业园D栋', '0');
INSERT INTO `lrkr_setup` VALUES ('4', '电话', '0755-290821520755-29082152', '0');
INSERT INTO `lrkr_setup` VALUES ('5', '版权所有', 'Copyright © 2017  &nbsp 深圳市乐瑞科技有限公司 保留所有权利版权所有 © 您的网站名称 未经许可 严禁复制', '0');
INSERT INTO `lrkr_setup` VALUES ('6', 'ICP', '粤ICP备17023849号-1号', '0');
INSERT INTO `lrkr_setup` VALUES ('7', '网站LOGO', 'home/template/img/logo.png', '1');
INSERT INTO `lrkr_setup` VALUES ('9', '网站', 'www.lory-cn.com', '0');
