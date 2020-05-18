/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50644
Source Host           : localhost:3306
Source Database       : 2

Target Server Type    : MYSQL
Target Server Version : 50644
File Encoding         : 65001

Date: 2019-10-12 21:40:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for codepay_order
-- ----------------------------
DROP TABLE IF EXISTS `codepay_order`;
CREATE TABLE `codepay_order` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pay_id` varchar(50) NOT NULL COMMENT '用户ID或订单ID',
  `money` decimal(6,2) unsigned NOT NULL COMMENT '实际金额',
  `price` decimal(6,2) unsigned NOT NULL COMMENT '原价',
  `type` int(1) NOT NULL DEFAULT '1' COMMENT '支付方式',
  `pay_no` varchar(100) NOT NULL COMMENT '流水号',
  `param` varchar(200) DEFAULT NULL COMMENT '自定义参数',
  `pay_time` bigint(11) NOT NULL DEFAULT '0' COMMENT '付款时间',
  `pay_tag` varchar(100) NOT NULL DEFAULT '0' COMMENT '金额的备注',
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '订单状态',
  `creat_time` bigint(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `up_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `main` (`pay_id`,`pay_time`,`money`,`type`,`pay_tag`),
  UNIQUE KEY `pay_no` (`pay_no`,`type`)
) ENGINE=MyISAM AUTO_INCREMENT=126 DEFAULT CHARSET=utf8 COMMENT='用于区分是否已经处理';

-- ----------------------------
-- Records of codepay_order
-- ----------------------------
INSERT INTO `codepay_order` VALUES ('124', '17000007803', '3.00', '3.00', '1', '2019100122001437280514498418', null, '1569902851', '0', '2', '1569905766', '2019-10-01 12:56:07');
INSERT INTO `codepay_order` VALUES ('125', '17000007803', '3.00', '3.00', '1', '2019100122001437280515812484', null, '1569908035', '0', '2', '1569908074', '2019-10-01 13:34:35');

-- ----------------------------
-- Table structure for codepay_user
-- ----------------------------
DROP TABLE IF EXISTS `codepay_user`;
CREATE TABLE `codepay_user` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `user` varchar(100) NOT NULL DEFAULT '' COMMENT '用户名',
  `money` decimal(6,2) NOT NULL DEFAULT '0.00' COMMENT '金额',
  `vip` int(1) NOT NULL DEFAULT '0' COMMENT '会员开通',
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '会员状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of codepay_user
-- ----------------------------
INSERT INTO `codepay_user` VALUES ('1', 'admin', '0.00', '0', '0');

-- ----------------------------
-- Table structure for ds_announce
-- ----------------------------
DROP TABLE IF EXISTS `ds_announce`;
CREATE TABLE `ds_announce` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(60) NOT NULL DEFAULT '' COMMENT '标题',
  `content` text NOT NULL COMMENT '内容',
  `operator` varchar(45) NOT NULL DEFAULT '' COMMENT '发布人',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  `image` varchar(255) NOT NULL COMMENT '标题图像',
  `viewer` varchar(10) NOT NULL DEFAULT 'all' COMMENT '查看权限 all:所有人  member:会员  center:报单中心 ',
  `tid` int(10) unsigned NOT NULL COMMENT '类别ID',
  PRIMARY KEY (`id`),
  KEY `tid` (`tid`)
) ENGINE=MyISAM AUTO_INCREMENT=157 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=755 ROW_FORMAT=DYNAMIC COMMENT='公告信息表';

-- ----------------------------
-- Records of ds_announce
-- ----------------------------
INSERT INTO `ds_announce` VALUES ('156', '多少收入才能提现？提现要多久？', '答：满30元提现，提现是10的倍数，24小时内到账！', 'admin', '1569736813', '1569736813', '/Public/Uploads/zixun/20190929/5d9048a9525a0.jpg', 'all', '2');
INSERT INTO `ds_announce` VALUES ('154', '收益宝机器人从哪几个方面赚钱呢？', '答：现在全部的商家和知名的品牌还有企业都在百度广告联盟、谷歌广告联盟、123广告联盟、A5广告联盟、359广告联盟、天天广告联盟、AP广告联盟等这些知名的大平台投放广告，这些平台 70%的收益都来源于点击量！智能机器人对接这些平台自动点击获取收益！', 'admin', '1565669246', '1569736644', '/Public/Uploads/zixun/20190929/5d9047c44ff7a.jpg', 'all', '2');
INSERT INTO `ds_announce` VALUES ('155', '你们可以用机器人代替点击，为什么不自己做？', '答：重点就在这里，因为点击链接有IP限制，同时出现一个IP地址点击次数过多广告联盟后台会检测到对我们进行封号，同一个IP所以无法大量点击，平台需要结合大量的IP地址才可以实现赚取佣金，更多人参与我们便能够接更多的广告单！', 'admin', '1565669269', '1569736529', '/Public/Uploads/zixun/20190929/5d904751805dd.jpg', 'all', '2');
INSERT INTO `ds_announce` VALUES ('152', '我应该怎样推广比较快？如何收益最大化？', '答：1、多发朋友圈；2、一对一信息，微信、qq等通讯工具；3、建项目群 展示收益宝智能机器人介绍，（包含项目内容，前景分析，收益展示、推广海报等有关资料）', 'admin', '1565590164', '1569736781', '/Public/Uploads/zixun/20190929/5d90484de8512.jpg', 'all', '2');
INSERT INTO `ds_announce` VALUES ('153', '以前不是都手动点击的吗？你们怎么可以用软件代替呢？', '以往的传统广告点击和阅读文章都是需要每个人坐在电脑前一个一个去手动点击才能赚到佣金，而我们公司在技术团队日以继夜研发下，成功开发出一款智能点击阅读的智能机器人，并对接各大广告联盟平台，收益宝智能机器人连接所有用户闲置IP自动领取广告联盟点击任务，全程托管自动完成各大广告联盟的点击任务，任务完成后后台自动将佣金秒结用户，让你真正实现一个手机加一个收益宝APP就能赚钱。', 'admin', '1565590164', '1569736970', '/Public/Uploads/zixun/20190929/5d90490a7b1f0.jpg', 'all', '2');

-- ----------------------------
-- Table structure for ds_announcetype
-- ----------------------------
DROP TABLE IF EXISTS `ds_announcetype`;
CREATE TABLE `ds_announcetype` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '类别ID',
  `name` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=24 ROW_FORMAT=DYNAMIC COMMENT='公告类别';

-- ----------------------------
-- Records of ds_announcetype
-- ----------------------------
INSERT INTO `ds_announcetype` VALUES ('1', '每日早报');
INSERT INTO `ds_announcetype` VALUES ('2', '新手入门');
INSERT INTO `ds_announcetype` VALUES ('3', '会员答疑');
INSERT INTO `ds_announcetype` VALUES ('4', '教程');

-- ----------------------------
-- Table structure for ds_announce_click
-- ----------------------------
DROP TABLE IF EXISTS `ds_announce_click`;
CREATE TABLE `ds_announce_click` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `news_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=131519 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ds_announce_click
-- ----------------------------

-- ----------------------------
-- Table structure for ds_auth_group
-- ----------------------------
DROP TABLE IF EXISTS `ds_auth_group`;
CREATE TABLE `ds_auth_group` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(100) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `rules` varchar(500) NOT NULL DEFAULT '',
  `description` char(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ds_auth_group
-- ----------------------------
INSERT INTO `ds_auth_group` VALUES ('7', '首页管理员', '1', '13,14,15,16,17,18,19,20,21,22,23,24,25,26,9', '能够管理首页推荐位');
INSERT INTO `ds_auth_group` VALUES ('4', '超级管理员', '1', '13,14,15,16,17,18,19,20,21,22,23,24,25,26,89,27,28,29,30,31,32,80,81,33,34,35,36,37,38,39,41,42,43,44,45,46,47,48,49,50,51,52,82,83,84,85,87,88,9,10,11,12,86,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,7913,14,15,16,17,18,19,20,21,22,23,24,25,26,89,27,28,29,30,31,32,80,81,33,34,35,36,37,38,39,41,42,43,44,45,46,47,48,49,50,51,52,82,83,84,85,87,88,9,10,11,12,86,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79', '拥有所有权限的管理员');
INSERT INTO `ds_auth_group` VALUES ('8', '广告管理员', '1', '27,28,29,30,31,32,9', '管理全部广告');
INSERT INTO `ds_auth_group` VALUES ('9', '分类管理员', '1', '33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,9', '分类管理员');
INSERT INTO `ds_auth_group` VALUES ('10', '优惠券管理', '1', '53,54,55,56,57,58,59,60', '优惠券管理');

-- ----------------------------
-- Table structure for ds_auth_group_access
-- ----------------------------
DROP TABLE IF EXISTS `ds_auth_group_access`;
CREATE TABLE `ds_auth_group_access` (
  `uid` mediumint(8) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ds_auth_group_access
-- ----------------------------
INSERT INTO `ds_auth_group_access` VALUES ('2651', '4');

-- ----------------------------
-- Table structure for ds_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `ds_auth_rule`;
CREATE TABLE `ds_auth_rule` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(80) NOT NULL DEFAULT '',
  `title` char(20) NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `condition` char(100) NOT NULL DEFAULT '',
  `mid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ds_auth_rule
-- ----------------------------
INSERT INTO `ds_auth_rule` VALUES ('9', 'Admin/Index/index', '登录首页', '1', '1', '', '9');
INSERT INTO `ds_auth_rule` VALUES ('10', 'Admin/Websetting/index', '基础配置', '1', '1', '', '9');
INSERT INTO `ds_auth_rule` VALUES ('11', 'Admin/Navsetting/index', '导航配置', '1', '1', '', '9');
INSERT INTO `ds_auth_rule` VALUES ('12', 'Admin/Friendlink/index', '友情链接配置', '1', '1', '', '9');
INSERT INTO `ds_auth_rule` VALUES ('13', 'Admin/Indexset/index', '查看首页管理', '1', '1', '', '1');
INSERT INTO `ds_auth_rule` VALUES ('14', 'Admin/Indexset/addFloor', '添加楼层', '1', '1', '', '1');
INSERT INTO `ds_auth_rule` VALUES ('15', 'Admin/Indexset/modifyFloor', '修改楼层', '1', '1', '', '1');
INSERT INTO `ds_auth_rule` VALUES ('16', 'Admin/Indexset/deleteFloor', '删除楼层', '1', '1', '', '1');
INSERT INTO `ds_auth_rule` VALUES ('17', 'Admin/Indexset/loadData', '显示楼层图片广告', '1', '1', '', '1');
INSERT INTO `ds_auth_rule` VALUES ('18', 'Admin/Indexset/viewClass', '查看可添加楼层', '1', '1', '', '1');
INSERT INTO `ds_auth_rule` VALUES ('19', 'Admin/Indexset/editAd', '修改楼层广告', '1', '1', '', '1');
INSERT INTO `ds_auth_rule` VALUES ('20', 'Admin/Indexset/insertAd', '添加楼层广告', '1', '1', '', '1');
INSERT INTO `ds_auth_rule` VALUES ('21', 'Admin/Indexset/deleteAd', '删除楼层广告', '1', '1', '', '1');
INSERT INTO `ds_auth_rule` VALUES ('22', 'Admin/Indexset/createPic', '添加楼层广告页面', '1', '1', '', '1');
INSERT INTO `ds_auth_rule` VALUES ('23', 'Admin/Indexset/createText', '添加楼层文字广告页面', '1', '1', '', '1');
INSERT INTO `ds_auth_rule` VALUES ('24', 'Admin/Indexset/editPic', '修改楼层广告页面', '1', '1', '', '1');
INSERT INTO `ds_auth_rule` VALUES ('25', 'Admin/Indexset/editText', '修改楼层文字广告页面', '1', '1', '', '1');
INSERT INTO `ds_auth_rule` VALUES ('26', 'Admin/Indexset/loadText', '显示楼层文字广告', '1', '1', '', '1');
INSERT INTO `ds_auth_rule` VALUES ('27', 'Admin/Adset/index', '广告管理首页', '1', '1', '', '2');
INSERT INTO `ds_auth_rule` VALUES ('28', 'Admin/Adset/createAd', '广告添加页面', '1', '1', '', '2');
INSERT INTO `ds_auth_rule` VALUES ('29', 'Admin/Adset/insertAd', '广告添加', '1', '1', '', '2');
INSERT INTO `ds_auth_rule` VALUES ('30', 'Admin/Adset/editAd', '广告修改页面', '1', '1', '', '2');
INSERT INTO `ds_auth_rule` VALUES ('31', 'Admin/Adset/updataAd', '广告修改', '1', '1', '', '2');
INSERT INTO `ds_auth_rule` VALUES ('32', 'Admin/Adset/deleteAd', '广告删除', '1', '1', '', '2');
INSERT INTO `ds_auth_rule` VALUES ('33', 'Admin/GoodsClass/index', '商品分类显示', '1', '1', '', '4');
INSERT INTO `ds_auth_rule` VALUES ('34', 'Admin/GoodsClass/addClass', '商品分类添加页面', '1', '1', '', '4');
INSERT INTO `ds_auth_rule` VALUES ('35', 'Admin/GoodsClass/modifyClass', '商品分类修改页面', '1', '1', '', '4');
INSERT INTO `ds_auth_rule` VALUES ('36', 'Admin/GoodsClass/insertClass', '商品分类添加', '1', '1', '', '4');
INSERT INTO `ds_auth_rule` VALUES ('37', 'Admin/GoodsClass/updataClass', '商品分类修改', '1', '1', '', '4');
INSERT INTO `ds_auth_rule` VALUES ('38', 'Admin/GoodsClass/deleteClass', '商品分类删除', '1', '1', '', '4');
INSERT INTO `ds_auth_rule` VALUES ('39', 'Admin/GoodsClass/viewClassId', '商品分类显示分类id', '1', '1', '', '4');
INSERT INTO `ds_auth_rule` VALUES ('41', 'Admin/Goodsattr/index', '商品属性查看', '1', '1', '', '4');
INSERT INTO `ds_auth_rule` VALUES ('42', 'Admin/Goodsattr/addAttr', '商品属性添加页面', '1', '1', '', '4');
INSERT INTO `ds_auth_rule` VALUES ('43', 'Admin/Goodsattr/modifyAttr', '商品属性修改页面', '1', '1', '', '4');
INSERT INTO `ds_auth_rule` VALUES ('44', 'Admin/Goodsattr/insertAttr', '商品属性添加', '1', '1', '', '4');
INSERT INTO `ds_auth_rule` VALUES ('45', 'Admin/Goodsattr/updataAttr', '商品属性修改', '1', '1', '', '4');
INSERT INTO `ds_auth_rule` VALUES ('46', 'Admin/Goodsattr/deleteAttr', '商品属性删除', '1', '1', '', '4');
INSERT INTO `ds_auth_rule` VALUES ('47', 'Admin/Goodsbrand/index', '商品品牌查看', '1', '1', '', '4');
INSERT INTO `ds_auth_rule` VALUES ('48', 'Admin/Goodsbrand/addBrand', '商品品牌添加页面', '1', '1', '', '4');
INSERT INTO `ds_auth_rule` VALUES ('49', 'Admin/Goodsbrand/modifyBrand', '商品品牌修改页面', '1', '1', '', '4');
INSERT INTO `ds_auth_rule` VALUES ('50', 'Admin/Goodsbrand/insertBrand', '商品品牌添加', '1', '1', '', '4');
INSERT INTO `ds_auth_rule` VALUES ('51', 'Admin/Goodsbrand/updataBrand', '商品品牌修改', '1', '1', '', '4');
INSERT INTO `ds_auth_rule` VALUES ('52', 'Admin/Goodsbrand/deleteBrand', '商品品牌删除', '1', '1', '', '4');
INSERT INTO `ds_auth_rule` VALUES ('53', 'Admin/Couponmanage/index', '显示优惠券组列表', '1', '1', '', '7');
INSERT INTO `ds_auth_rule` VALUES ('54', 'Admin/Couponmanage/coupons', '优惠券详情列表', '1', '1', '', '7');
INSERT INTO `ds_auth_rule` VALUES ('55', 'Admin/Couponmanage/addCoupon', '添加优惠券', '1', '1', '', '7');
INSERT INTO `ds_auth_rule` VALUES ('56', 'Admin/Couponmanage/modifyCoupon', '修改优惠券', '1', '1', '', '7');
INSERT INTO `ds_auth_rule` VALUES ('57', 'Admin/Couponmanage/insertCoupon', '优惠券添加', '1', '1', '', '7');
INSERT INTO `ds_auth_rule` VALUES ('58', 'Admin/Couponmanage/updataCoupon', '优惠券修改', '1', '1', '', '7');
INSERT INTO `ds_auth_rule` VALUES ('59', 'Admin/Couponmanage/deleteCoupon', '删除优惠券', '1', '1', '', '7');
INSERT INTO `ds_auth_rule` VALUES ('60', 'Admin/Couponmanage/couponState', '更新优惠券状态', '1', '1', '', '7');
INSERT INTO `ds_auth_rule` VALUES ('62', 'Admin/Accesslist/index', '权限列表页面', '1', '1', '', '10');
INSERT INTO `ds_auth_rule` VALUES ('63', 'Admin/Accesslist/addAccess', '权限添加页面', '1', '1', '', '10');
INSERT INTO `ds_auth_rule` VALUES ('64', 'Admin/Accesslist/modifyAccess', '权限修改页面', '1', '1', '', '10');
INSERT INTO `ds_auth_rule` VALUES ('65', 'Admin/Accesslist/insertAccess', '权限添加', '1', '1', '', '10');
INSERT INTO `ds_auth_rule` VALUES ('66', 'Admin/Accesslist/updataAccess', '权限修改', '1', '1', '', '10');
INSERT INTO `ds_auth_rule` VALUES ('67', 'Admin/Accesslist/deleteAccess', '权限删除', '1', '1', '', '10');
INSERT INTO `ds_auth_rule` VALUES ('68', 'Admin/Accesslist/accessState', '权限状态更新', '1', '1', '', '10');
INSERT INTO `ds_auth_rule` VALUES ('69', 'Admin/Grouplist/index', '角色管理页面', '1', '1', '', '10');
INSERT INTO `ds_auth_rule` VALUES ('70', 'Admin/Grouplist/addGroup', '角色添加页面', '1', '1', '', '10');
INSERT INTO `ds_auth_rule` VALUES ('71', 'Admin/Grouplist/modifyGroup', '角色修改页面', '1', '1', '', '10');
INSERT INTO `ds_auth_rule` VALUES ('72', 'Admin/Grouplist/insertGroup', '角色添加', '1', '1', '', '10');
INSERT INTO `ds_auth_rule` VALUES ('73', 'Admin/Grouplist/updataGroup', '角色修改', '1', '1', '', '10');
INSERT INTO `ds_auth_rule` VALUES ('74', 'Admin/Grouplist/deleteGroup', '角色删除', '1', '1', '', '10');
INSERT INTO `ds_auth_rule` VALUES ('75', 'Admin/Grouplist/groupState', '角色状态更新', '1', '1', '', '10');
INSERT INTO `ds_auth_rule` VALUES ('76', 'Admin/Grouplist/groupMem', '角色成员管理页面', '1', '1', '', '10');
INSERT INTO `ds_auth_rule` VALUES ('77', 'Admin/Grouplist/addMem', '角色成员添加页面', '1', '1', '', '10');
INSERT INTO `ds_auth_rule` VALUES ('78', 'Admin/Grouplist/insertMem', '角色成员添加', '1', '1', '', '10');
INSERT INTO `ds_auth_rule` VALUES ('79', 'Admin/Grouplist/deleteMem', '角色成员删除', '1', '1', '', '10');
INSERT INTO `ds_auth_rule` VALUES ('80', 'Admin/Member/index', '用户管理', '1', '1', '', '3');
INSERT INTO `ds_auth_rule` VALUES ('81', 'Admin/Memlevel/index', '用户等级', '1', '1', '', '3');
INSERT INTO `ds_auth_rule` VALUES ('82', 'Admin/Goodsissue/index', '商品发布', '1', '1', '', '5');
INSERT INTO `ds_auth_rule` VALUES ('83', 'Admin/Goodsup/index', '商品上架', '1', '1', '', '5');
INSERT INTO `ds_auth_rule` VALUES ('84', 'Admin/Goodsdown/index', '商品下架', '1', '1', '', '5');
INSERT INTO `ds_auth_rule` VALUES ('85', 'Admin/Ordermanage/index', '订单管理', '1', '1', '', '6');
INSERT INTO `ds_auth_rule` VALUES ('86', 'Admin/Reviewmanage/index', '评价管理', '1', '1', '', '9');
INSERT INTO `ds_auth_rule` VALUES ('87', 'Admin/Articleclasses/index', '文章分类', '1', '1', '', '8');
INSERT INTO `ds_auth_rule` VALUES ('88', 'Admin/Articlemanage/index', '文章管理', '1', '1', '', '8');
INSERT INTO `ds_auth_rule` VALUES ('89', 'Admin/index/mang', '网站管理', '1', '1', '', '1');

-- ----------------------------
-- Table structure for ds_bankcard
-- ----------------------------
DROP TABLE IF EXISTS `ds_bankcard`;
CREATE TABLE `ds_bankcard` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL COMMENT '中文名',
  `card` varchar(100) DEFAULT NULL,
  `kaihuhang` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=829 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ds_bankcard
-- ----------------------------

-- ----------------------------
-- Table structure for ds_banner
-- ----------------------------
DROP TABLE IF EXISTS `ds_banner`;
CREATE TABLE `ds_banner` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `path` varchar(100) NOT NULL,
  `href` varchar(100) DEFAULT NULL,
  `addtime` int(10) DEFAULT NULL,
  `sort` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ds_banner
-- ----------------------------
INSERT INTO `ds_banner` VALUES ('13', '/Public/Uploads/20190930/5d91c1ff773c0.jpg', '#', null, null);
INSERT INTO `ds_banner` VALUES ('12', '/Public/Uploads/20190930/5d91c1821f7f1.jpg', '#', null, null);

-- ----------------------------
-- Table structure for ds_complete
-- ----------------------------
DROP TABLE IF EXISTS `ds_complete`;
CREATE TABLE `ds_complete` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '会员编号',
  `pic` varchar(100) NOT NULL COMMENT '头像',
  `jinbi` decimal(10,2) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0',
  `addtime` int(10) NOT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`),
  KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=20131 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=278 ROW_FORMAT=DYNAMIC COMMENT='会员';

-- ----------------------------
-- Records of ds_complete
-- ----------------------------

-- ----------------------------
-- Table structure for ds_emoneydetail
-- ----------------------------
DROP TABLE IF EXISTS `ds_emoneydetail`;
CREATE TABLE `ds_emoneydetail` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL COMMENT '会员号',
  `mode` varchar(100) DEFAULT NULL,
  `amount` decimal(10,0) NOT NULL COMMENT '提现金额',
  `charge` decimal(15,0) DEFAULT NULL COMMENT '手续费',
  `payment` decimal(10,0) DEFAULT NULL COMMENT '实际支付',
  `kaihuhang` varchar(100) DEFAULT NULL,
  `card` varchar(255) NOT NULL COMMENT '提现银行卡',
  `wei` varchar(255) DEFAULT NULL,
  `zhifu` varchar(255) DEFAULT NULL,
  `addtime` int(10) DEFAULT NULL COMMENT '提现时间',
  `type` int(4) NOT NULL DEFAULT '0' COMMENT '状态',
  `remark` varchar(100) NOT NULL COMMENT '描述',
  `status` int(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ds_emoneydetail
-- ----------------------------

-- ----------------------------
-- Table structure for ds_jinbidetail
-- ----------------------------
DROP TABLE IF EXISTS `ds_jinbidetail`;
CREATE TABLE `ds_jinbidetail` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `jid` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `tgaward` varchar(255) DEFAULT NULL,
  `member` varchar(255) DEFAULT '' COMMENT '会员编号',
  `adds` decimal(15,5) unsigned DEFAULT '0.00000' COMMENT '添加',
  `reduce` decimal(15,5) unsigned DEFAULT '0.00000' COMMENT '减少',
  `balance` decimal(15,5) unsigned DEFAULT '0.00000' COMMENT '余额',
  `addtime` int(10) DEFAULT '0' COMMENT '操作时间',
  `statustime` int(11) unsigned NOT NULL DEFAULT '0',
  `desc` varchar(255) DEFAULT '' COMMENT '说明',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `member` (`member`),
  KEY `jid` (`jid`),
  KEY `addtime` (`addtime`)
) ENGINE=MyISAM AUTO_INCREMENT=516250 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=68 ROW_FORMAT=DYNAMIC COMMENT='金币明细';

-- ----------------------------
-- Records of ds_jinbidetail
-- ----------------------------
INSERT INTO `ds_jinbidetail` VALUES ('516246', '0', '0', null, '17000007803', '0.00000', '3.00000', '6.00000', '1569910829', '0', '购买体验版（5天）', '1');
INSERT INTO `ds_jinbidetail` VALUES ('516247', '0', '2', '17000007803', '0', '0.30000', '0.00000', '0.00000', '1569910829', '0', '1级购买奖励', '1');
INSERT INTO `ds_jinbidetail` VALUES ('516248', '0', '2', '17000007803', '', '0.15000', '0.00000', '0.00000', '1569910829', '0', '2级购买奖励', '1');
INSERT INTO `ds_jinbidetail` VALUES ('516249', '0', '2', '17000007803', '', '0.09000', '0.00000', '0.00000', '1569910829', '0', '3级购买奖励', '1');

-- ----------------------------
-- Table structure for ds_log
-- ----------------------------
DROP TABLE IF EXISTS `ds_log`;
CREATE TABLE `ds_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `logtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '操作时间',
  `logaccount` varchar(45) NOT NULL DEFAULT '' COMMENT '操作对应的账号',
  `logip` varchar(100) NOT NULL DEFAULT '' COMMENT '操作者IP',
  `logdesc` varchar(200) NOT NULL DEFAULT '' COMMENT '操作描述',
  `logtype` varchar(10) NOT NULL DEFAULT '' COMMENT '日志类型: member:会员日志 admin:管理员日志',
  `logiplocal` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `logtype` (`logtype`)
) ENGINE=MyISAM AUTO_INCREMENT=18874 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=68 ROW_FORMAT=DYNAMIC COMMENT='系统操作日志';

-- ----------------------------
-- Records of ds_log
-- ----------------------------

-- ----------------------------
-- Table structure for ds_member
-- ----------------------------
DROP TABLE IF EXISTS `ds_member`;
CREATE TABLE `ds_member` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '会员编号',
  `password` varchar(32) DEFAULT NULL COMMENT '一级密码',
  `level` int(4) DEFAULT '0',
  `regaddress` varchar(255) DEFAULT NULL COMMENT 'IP地址',
  `regdate` int(10) DEFAULT NULL COMMENT '注册时间',
  `parent` varchar(255) DEFAULT NULL COMMENT '推荐人',
  `parent_id` int(11) unsigned NOT NULL COMMENT '推荐人ID',
  `pic` varchar(100) NOT NULL COMMENT '头像',
  `jifen` decimal(10,0) DEFAULT '0',
  `erwei` varchar(255) DEFAULT NULL,
  `dongjie` decimal(15,2) DEFAULT '0.00' COMMENT '冻结金额',
  `parentcount` int(11) DEFAULT '0' COMMENT '推荐人数',
  `name` varchar(255) DEFAULT '会员',
  `money` decimal(15,2) unsigned DEFAULT '0.00' COMMENT '金币数量',
  `truename` varchar(255) DEFAULT NULL COMMENT '真实姓名',
  `mobile` varchar(20) DEFAULT NULL COMMENT '手机',
  `logintime` int(10) DEFAULT '0' COMMENT '本次登录时间',
  `gamecount` int(10) DEFAULT '0',
  `robotcount` int(10) DEFAULT '0' COMMENT '智赚手总数',
  `logincount` int(10) DEFAULT '0' COMMENT '登录总次数',
  `parentpath` longtext COMMENT '推荐遗传码',
  `online_time` int(10) DEFAULT NULL COMMENT '最后登陆时间',
  `wei` varchar(100) DEFAULT NULL,
  `zhifu` varchar(100) DEFAULT NULL,
  `lock` tinyint(4) DEFAULT NULL COMMENT '锁定',
  `money2` decimal(15,2) unsigned DEFAULT '0.00' COMMENT '金币数量',
  PRIMARY KEY (`id`),
  KEY `username` (`username`),
  KEY `parent` (`parent`)
) ENGINE=MyISAM AUTO_INCREMENT=1137 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=278 ROW_FORMAT=DYNAMIC COMMENT='会员';

-- ----------------------------
-- Records of ds_member
-- ----------------------------
INSERT INTO `ds_member` VALUES ('1134', '15555000661', '60515e4ce31f7822efed5c0ed10a1ed9', '0', '福建省厦门市电信ADSL', '1569839430', '', '0', '', '0', '/Public/erwei/15555000661.png', '0.00', '2', '会员', '6.00', '', '15555000661', '1569839680', '2', '0', '3', '', '1569944375', null, null, null, '0.00');

-- ----------------------------
-- Table structure for ds_member_award_log
-- ----------------------------
DROP TABLE IF EXISTS `ds_member_award_log`;
CREATE TABLE `ds_member_award_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `send_type` tinyint(1) NOT NULL,
  `userortype_id` int(11) NOT NULL,
  `send_style` tinyint(1) NOT NULL,
  `num` int(11) NOT NULL,
  `add_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ds_member_award_log
-- ----------------------------

-- ----------------------------
-- Table structure for ds_member_recharge
-- ----------------------------
DROP TABLE IF EXISTS `ds_member_recharge`;
CREATE TABLE `ds_member_recharge` (
  `r_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_sn` varchar(100) NOT NULL,
  `fkzh` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `gbc` decimal(15,2) NOT NULL,
  `rmb` decimal(15,2) NOT NULL,
  `bili` varchar(30) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `pay_type` varchar(30) NOT NULL,
  `note` varchar(100) NOT NULL,
  `add_time` int(11) NOT NULL,
  PRIMARY KEY (`r_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员充值表';

-- ----------------------------
-- Records of ds_member_recharge
-- ----------------------------

-- ----------------------------
-- Table structure for ds_message
-- ----------------------------
DROP TABLE IF EXISTS `ds_message`;
CREATE TABLE `ds_message` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `from` varchar(45) NOT NULL DEFAULT '' COMMENT '发件人',
  `pic` varchar(100) DEFAULT NULL COMMENT '头像',
  `truename` varchar(100) DEFAULT NULL,
  `content` text NOT NULL COMMENT '内容',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '发送时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='站内信息表';

-- ----------------------------
-- Records of ds_message
-- ----------------------------

-- ----------------------------
-- Table structure for ds_node
-- ----------------------------
DROP TABLE IF EXISTS `ds_node`;
CREATE TABLE `ds_node` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `title` varchar(50) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `remark` varchar(255) DEFAULT NULL,
  `sort` smallint(6) unsigned DEFAULT NULL,
  `pid` smallint(6) unsigned NOT NULL,
  `level` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `level` (`level`),
  KEY `name` (`name`),
  KEY `pid` (`pid`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=35 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ds_node
-- ----------------------------
INSERT INTO `ds_node` VALUES ('1', 'systemlogined', '后台应用', '1', '', '1', '0', '1');
INSERT INTO `ds_node` VALUES ('6', 'Rbac', 'Rbac权限控制', '1', '', '6', '1', '2');
INSERT INTO `ds_node` VALUES ('7', 'Index', '后台首页', '1', '', '1', '1', '2');
INSERT INTO `ds_node` VALUES ('10', 'index', '用户列表', '1', '', '1', '6', '3');
INSERT INTO `ds_node` VALUES ('11', 'role', '角色列表', '1', '', '1', '6', '3');
INSERT INTO `ds_node` VALUES ('12', 'node', '节点列表', '1', '', '1', '6', '3');
INSERT INTO `ds_node` VALUES ('16', 'index', '后台首页', '1', '', '1', '7', '3');
INSERT INTO `ds_node` VALUES ('17', 'Member', '会员管理', '1', '', '2', '1', '2');
INSERT INTO `ds_node` VALUES ('18', 'uncheck', '未审核会员', '1', '', '1', '17', '3');
INSERT INTO `ds_node` VALUES ('19', 'check', '会员查询', '1', '', '1', '17', '3');
INSERT INTO `ds_node` VALUES ('20', 'pw_list', '团队排位图', '1', '', '1', '17', '3');
INSERT INTO `ds_node` VALUES ('21', 'shu_list', '团队树形图', '1', '', '1', '17', '3');
INSERT INTO `ds_node` VALUES ('22', 'Jinbidetail', '资金管理', '1', '', '4', '1', '2');
INSERT INTO `ds_node` VALUES ('23', 'index', 'pv明细', '1', '', '1', '22', '3');
INSERT INTO `ds_node` VALUES ('24', 'paylists', '充值管理', '1', '', '1', '22', '3');
INSERT INTO `ds_node` VALUES ('25', 'emoneyWithdraw', '提现管理', '1', '', '1', '22', '3');
INSERT INTO `ds_node` VALUES ('26', 'shop', '商城管理', '1', '', '3', '1', '2');
INSERT INTO `ds_node` VALUES ('27', 'type_list', '分类列表', '1', '', '1', '26', '3');
INSERT INTO `ds_node` VALUES ('28', 'Info', '信息交流', '1', '', '5', '1', '2');
INSERT INTO `ds_node` VALUES ('29', 'announce', '公告管理', '1', '', '1', '28', '3');
INSERT INTO `ds_node` VALUES ('30', 'annType', '公告类别', '1', '', '1', '28', '3');
INSERT INTO `ds_node` VALUES ('31', 'msgReceive', '收件箱', '1', '', '1', '28', '3');
INSERT INTO `ds_node` VALUES ('32', 'msgSend', '发件箱', '1', '', '1', '28', '3');
INSERT INTO `ds_node` VALUES ('33', 'System', '系统设置', '1', '', '7', '1', '2');
INSERT INTO `ds_node` VALUES ('34', 'backUp', '数据备份', '1', '', '1', '33', '3');
INSERT INTO `ds_node` VALUES ('35', 'customSetting', '自定义配置', '1', '', '1', '33', '3');
INSERT INTO `ds_node` VALUES ('36', ' jiangjin', '奖金查询', '1', '', '1', '22', '3');
INSERT INTO `ds_node` VALUES ('37', 'member_group', '会员等级', '1', '', '1', '17', '3');
INSERT INTO `ds_node` VALUES ('38', 'lists', '商品列表', '1', '', '1', '26', '3');
INSERT INTO `ds_node` VALUES ('39', 'orderlist', '订单列表', '1', '', '1', '26', '3');
INSERT INTO `ds_node` VALUES ('40', 'paylist', '零售管理', '1', '', '1', '22', '3');
INSERT INTO `ds_node` VALUES ('41', 'jinzhongzi', '重消明细', '1', '', '1', '22', '3');
INSERT INTO `ds_node` VALUES ('42', 'point', '代金券明细', '1', '', '1', '22', '3');
INSERT INTO `ds_node` VALUES ('43', 'editPay', '零售操作', '1', '', '1', '22', '3');
INSERT INTO `ds_node` VALUES ('44', 'editPays', '充值操作', '1', '', '1', '22', '3');
INSERT INTO `ds_node` VALUES ('45', 'editEmoney', '提现操作', '1', '', '1', '22', '3');
INSERT INTO `ds_node` VALUES ('46', 'editPayhandles', '充值提交操作', '1', '', '1', '22', '3');

-- ----------------------------
-- Table structure for ds_order
-- ----------------------------
DROP TABLE IF EXISTS `ds_order`;
CREATE TABLE `ds_order` (
  `id` int(255) unsigned NOT NULL AUTO_INCREMENT,
  `user` varchar(30) DEFAULT NULL,
  `tuijian` varchar(255) DEFAULT NULL COMMENT '推荐人',
  `user_id` int(11) unsigned NOT NULL,
  `project` varchar(30) DEFAULT NULL,
  `count` decimal(10,2) DEFAULT '0.00',
  `sumprice` decimal(10,2) NOT NULL,
  `addtime` varchar(30) DEFAULT NULL,
  `UG_getTime` int(11) unsigned NOT NULL DEFAULT '0',
  `zt` int(10) NOT NULL DEFAULT '0',
  `sid` int(11) DEFAULT NULL,
  `imagepath` text,
  `yxzq` varchar(60) DEFAULT NULL COMMENT '可运行时间小时',
  `shouyi` decimal(15,8) DEFAULT NULL COMMENT '收益每小时',
  `kjbh` varchar(255) DEFAULT NULL,
  `already_profit` decimal(15,8) NOT NULL COMMENT '已经收益',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31604 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ds_order
-- ----------------------------
INSERT INTO `ds_order` VALUES ('31603', '17000007803', '', '1133', '体验版（5天）', '0.00', '3.00', '2019-10-01 14:20:29', '1569910829', '1', '34', '/Public/Uploads/20190928/5d8f492379642.jpg', '120', '0.12510000', 'B011082965', '0.00000000');

-- ----------------------------
-- Table structure for ds_paydetail
-- ----------------------------
DROP TABLE IF EXISTS `ds_paydetail`;
CREATE TABLE `ds_paydetail` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member` varchar(20) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `type` varchar(100) NOT NULL,
  `account` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `content` varchar(100) NOT NULL,
  `remark` varchar(100) NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ds_paydetail
-- ----------------------------

-- ----------------------------
-- Table structure for ds_product
-- ----------------------------
DROP TABLE IF EXISTS `ds_product`;
CREATE TABLE `ds_product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tid` int(11) NOT NULL,
  `title` char(255) NOT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `stock` mediumint(9) NOT NULL DEFAULT '0',
  `yxzq` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `shouyi` decimal(15,8) unsigned NOT NULL DEFAULT '0.00000000',
  `thumb` char(255) NOT NULL DEFAULT 'pic.png',
  `content` varchar(255) NOT NULL,
  `pid` int(11) NOT NULL,
  `inputtime` int(11) unsigned NOT NULL,
  `xiangou` int(11) NOT NULL COMMENT '限购',
  `is_on` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ds_product
-- ----------------------------
INSERT INTO `ds_product` VALUES ('37', '5', '高级版', '298.00', '97135', '4320', '0.62083333', '/Public/Uploads/20190928/5d8f4a7fac69b.jpg', '', '0', '1569671807', '1', '0');
INSERT INTO `ds_product` VALUES ('33', '1', '发圈版', '100.00', '100000', '720', '0.12510000', '/Public/Uploads/20190928/5d8f487f25b4d.jpg', '', '0', '1569671295', '10', '1');
INSERT INTO `ds_product` VALUES ('34', '2', '体验版（5天）', '3.00', '46', '120', '0.12510000', '/Public/Uploads/20190928/5d8f492379642.jpg', '', '0', '1569671459', '1', '0');
INSERT INTO `ds_product` VALUES ('35', '3', '初级版', '98.00', '94589', '4320', '0.18560606', '/Public/Uploads/20190928/5d8f49c88512e.jpg', '', '0', '1569671624', '1', '0');
INSERT INTO `ds_product` VALUES ('36', '4', '中级版', '198.00', '95684', '4320', '0.39285714', '/Public/Uploads/20190928/5d8f4a20cab12.jpg', '', '0', '1569671712', '1', '0');

-- ----------------------------
-- Table structure for ds_qjinbidetail
-- ----------------------------
DROP TABLE IF EXISTS `ds_qjinbidetail`;
CREATE TABLE `ds_qjinbidetail` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `member` varchar(255) DEFAULT '' COMMENT '会员编号',
  `adds` decimal(12,2) unsigned DEFAULT '0.00' COMMENT '添加',
  `reduce` decimal(12,2) unsigned DEFAULT '0.00' COMMENT '减少',
  `balance` decimal(12,2) unsigned DEFAULT '0.00' COMMENT '余额',
  `addtime` int(10) DEFAULT '0' COMMENT '操作时间',
  `statustime` int(11) unsigned NOT NULL DEFAULT '0',
  `desc` varchar(255) DEFAULT '' COMMENT '说明',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `member` (`member`)
) ENGINE=MyISAM AUTO_INCREMENT=6938 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=68 ROW_FORMAT=DYNAMIC COMMENT='欠钱明细';

-- ----------------------------
-- Records of ds_qjinbidetail
-- ----------------------------

-- ----------------------------
-- Table structure for ds_session
-- ----------------------------
DROP TABLE IF EXISTS `ds_session`;
CREATE TABLE `ds_session` (
  `session_id` varchar(255) NOT NULL DEFAULT '',
  `session_expire` int(11) NOT NULL,
  `session_data` blob,
  UNIQUE KEY `session_id` (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=196 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ds_session
-- ----------------------------

-- ----------------------------
-- Table structure for ds_sms_log
-- ----------------------------
DROP TABLE IF EXISTS `ds_sms_log`;
CREATE TABLE `ds_sms_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '表id',
  `mobile` varchar(11) DEFAULT '' COMMENT '手机号',
  `session_id` varchar(128) DEFAULT '' COMMENT 'session_id',
  `add_time` int(11) DEFAULT '0' COMMENT '发送时间',
  `code` varchar(10) DEFAULT '' COMMENT '验证码',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24979 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ds_sms_log
-- ----------------------------

-- ----------------------------
-- Table structure for ds_type
-- ----------------------------
DROP TABLE IF EXISTS `ds_type`;
CREATE TABLE `ds_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(32) NOT NULL,
  `pid` int(11) NOT NULL DEFAULT '0',
  `path` char(30) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ds_type
-- ----------------------------
INSERT INTO `ds_type` VALUES ('1', 'A', '0', '0');
INSERT INTO `ds_type` VALUES ('2', 'B', '0', '0');
INSERT INTO `ds_type` VALUES ('3', 'C', '0', '0');
INSERT INTO `ds_type` VALUES ('4', 'D', '0', '0');
INSERT INTO `ds_type` VALUES ('5', 'E', '0', '0');
INSERT INTO `ds_type` VALUES ('6', 'F', '0', '0');
INSERT INTO `ds_type` VALUES ('7', 'G', '0', '0');
INSERT INTO `ds_type` VALUES ('8', 'H', '0', '0');
INSERT INTO `ds_type` VALUES ('9', 'I', '0', '0');
INSERT INTO `ds_type` VALUES ('10', 'J', '0', '0');
INSERT INTO `ds_type` VALUES ('11', 'K', '0', '0');
INSERT INTO `ds_type` VALUES ('12', 'L', '0', '0');
INSERT INTO `ds_type` VALUES ('13', 'M', '0', '0');
INSERT INTO `ds_type` VALUES ('14', 'N', '0', '0');
INSERT INTO `ds_type` VALUES ('15', 'O', '0', '0');
INSERT INTO `ds_type` VALUES ('16', 'P', '0', '0');
INSERT INTO `ds_type` VALUES ('17', 'Q', '0', '0');
INSERT INTO `ds_type` VALUES ('18', 'R', '0', '0');
INSERT INTO `ds_type` VALUES ('19', 'S', '0', '0');
INSERT INTO `ds_type` VALUES ('20', 'T', '0', '0');
INSERT INTO `ds_type` VALUES ('21', 'U', '0', '0');
INSERT INTO `ds_type` VALUES ('22', 'V', '0', '0');
INSERT INTO `ds_type` VALUES ('23', 'W', '0', '0');
INSERT INTO `ds_type` VALUES ('24', 'X', '0', '0');
INSERT INTO `ds_type` VALUES ('25', 'Y', '0', '0');
INSERT INTO `ds_type` VALUES ('26', 'Z', '0', '0');

-- ----------------------------
-- Table structure for ds_user
-- ----------------------------
DROP TABLE IF EXISTS `ds_user`;
CREATE TABLE `ds_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` char(20) NOT NULL DEFAULT '',
  `password` char(32) NOT NULL DEFAULT '',
  `logtime` int(10) NOT NULL,
  `loginip` char(30) NOT NULL DEFAULT '',
  `lock` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=256 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ds_user
-- ----------------------------
INSERT INTO `ds_user` VALUES ('1', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '1569913424', '59.61.40.132', '0');

-- ----------------------------
-- Table structure for ds_xiangmu
-- ----------------------------
DROP TABLE IF EXISTS `ds_xiangmu`;
CREATE TABLE `ds_xiangmu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(60) NOT NULL DEFAULT '' COMMENT '标题',
  `content` text NOT NULL COMMENT '内容',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=151 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=755 ROW_FORMAT=DYNAMIC COMMENT='公告信息表';

-- ----------------------------
-- Records of ds_xiangmu
-- ----------------------------
INSERT INTO `ds_xiangmu` VALUES ('1', '租赁一台智能机器人每天可以赚多少钱？', '<p style=\"font-size:14px;font-family:\" color:#454545;\"=\"\"><br />\r\n	</p>\r\n<p style=\"font-size:14px;font-family:\" color:#454545;\"=\"\">在互联网时代，崛起了很多大平台，这些大平台靠什么赚钱呢?像百度广告联盟、谷歌广告联盟、123广告联盟、A5广告联盟、359广告联盟、天天广告联盟、AP广告联盟等，这些平台 70%的收益都来源于点击量！经过我们开发，勘探。研发了一款科技产品！智能机器人，自动点击链接产生收益！经过实践与证明，我们的智能机器人收益稳定，科技效果明显！<br />\r\n<br />\r\n智能机器人能赚多少钱？<br />\r\n发圈版（推广获取）：每天收益3~5元<br />\r\n体验版（3元）：每天收益3~5元&nbsp; 每天限量<br />\r\n初级版（98元）：每天收益4~6元<br />\r\n中级版<span style=\"font-size:14px;\">（198元）</span>：每天收益9~13元<br />\r\n高级版<span style=\"font-size:14px;\">（298元）</span>：每天收益14~18元<br />\r\n<br />\r\n推荐下线能赚多少钱？<br />\r\n下线购买奖励&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 下线收益奖励<br />\r\n一级：10%&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 一级：5%<br />\r\n二级：5%&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 二级：3%<br />\r\n三级：3%&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 三级：2%<br />\r\n<br />\r\n直推机器人数量达到30台即可升为金牌代理，金牌代理享有十代下线额外收益<br />\r\n金牌代理下线购买额外奖励5%<br />\r\n金牌代理下线收益额外奖励5%\r\n</p>\r\n<p style=\"font-size:14px;font-family:\" color:#454545;\"=\"\"><br />\r\n	</p>\r\n	<p>\r\n		多少收入才能提现？提现要多久？<br />\r\n答：满30元提现，24小时内到账！\r\n	</p>\r\n<p style=\"font-size:14px;font-family:\" color:#454545;\"=\"\"><br />\r\n</p>', '1542525927', '1569836681');
