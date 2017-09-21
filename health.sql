/*
Navicat MySQL Data Transfer

Source Server         : ling
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : health

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2017-09-21 11:23:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for health_addcm
-- ----------------------------
DROP TABLE IF EXISTS `health_addcm`;
CREATE TABLE `health_addcm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) DEFAULT NULL,
  `chain_id` int(11) DEFAULT NULL,
  `add_time` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of health_addcm
-- ----------------------------
INSERT INTO `health_addcm` VALUES ('1', '1', '3', '1504689293');

-- ----------------------------
-- Table structure for health_chain
-- ----------------------------
DROP TABLE IF EXISTS `health_chain`;
CREATE TABLE `health_chain` (
  `chain_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `chain_title` varchar(50) DEFAULT NULL COMMENT '病案标题',
  `chain_user` varchar(30) DEFAULT NULL COMMENT '姓名',
  `chain_age` int(10) DEFAULT NULL COMMENT '年龄',
  `chain_sex` int(10) DEFAULT NULL COMMENT '性别0:男 1：女',
  `chain_num` char(30) DEFAULT NULL COMMENT '病案号',
  `chain_department` varchar(30) DEFAULT NULL COMMENT '出院科室',
  `chain_lesion` varchar(30) DEFAULT NULL COMMENT '出院病区',
  `chain_file` int(2) DEFAULT '1' COMMENT '归档标志 0：已归档 1：未归档',
  `chain_time` varchar(30) DEFAULT NULL COMMENT '归档的时间',
  `chain_status` int(3) DEFAULT '1' COMMENT '入链操作  0：已入链1：未入链',
  `chain_content` varchar(255) DEFAULT NULL COMMENT '病案备注',
  `health_insurance` char(30) DEFAULT NULL COMMENT '医保类型',
  `archives_modify` int(10) DEFAULT NULL COMMENT '修改标识',
  PRIMARY KEY (`chain_id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of health_chain
-- ----------------------------
INSERT INTO `health_chain` VALUES ('17', '测试标题', '测试姓名1', '58', '0', '81515132165', '脑科', '脑科三区', '1', '', '1', '', null, null);
INSERT INTO `health_chain` VALUES ('16', '希望医院心脏科', '张三', '26', '0', '102648941321', '心脏三科', '希望医院三区', '1', '', '1', '', null, null);
INSERT INTO `health_chain` VALUES ('15', 'demo1', 'demo1', '32', '0', '515+130320', '外科', '第二区', '1', '', '1', '', null, null);
INSERT INTO `health_chain` VALUES ('13', '希望医院心脏科', '张三', '26', '0', '102648941321', '心脏三科', '希望医院三区', '1', '', '1', '', null, null);
INSERT INTO `health_chain` VALUES ('14', '测试标题', '测试姓名1', '58', '0', '81515132165', '脑科', '脑科三区', '1', '', '1', '', null, null);
INSERT INTO `health_chain` VALUES ('8', '测试标题', '测试姓名1', '58', '0', '81515132165', '脑科', '脑科三区', '1', '', '1', '', null, null);
INSERT INTO `health_chain` VALUES ('10', '希望医院心脏科', '张三', '26', '0', '102648941321', '心脏三科', '希望医院三区', '1', '', '1', '', null, null);
INSERT INTO `health_chain` VALUES ('11', '测试标题', '测试姓名1', '58', '0', '81515132165', '脑科', '脑科三区', '1', '', '1', '', null, null);
INSERT INTO `health_chain` VALUES ('12', 'demo1', 'demo1', '32', '0', '515+130320', '外科', '第二区', '1', '', '1', '', null, null);
INSERT INTO `health_chain` VALUES ('18', 'demo1', 'demo1', '32', '0', '515+130320', '外科', '第二区', '1', '', '1', '', null, null);
INSERT INTO `health_chain` VALUES ('19', '希望医院心脏科', '张三', '26', '0', '102648941321', '心脏三科', '希望医院三区', '1', '', '1', '', null, null);
INSERT INTO `health_chain` VALUES ('20', '测试标题', '测试姓名1', '58', '0', '81515132165', '脑科', '脑科三区', '1', '', '1', '', null, null);
INSERT INTO `health_chain` VALUES ('21', 'demo1', 'demo1', '32', '0', '515+130320', '外科', '第二区', '1', '', '1', '', null, null);
INSERT INTO `health_chain` VALUES ('22', '希望医院心脏科', '张三', '26', '0', '102648941321', '心脏三科', '希望医院三区', '1', '', '1', '', null, null);
INSERT INTO `health_chain` VALUES ('23', '测试标题', '测试姓名1', '58', '0', '81515132165', '脑科', '脑科三区', '1', '', '1', '', null, null);
INSERT INTO `health_chain` VALUES ('24', 'demo1', 'demo1', '32', '0', '515+130320', '外科', '第二区', '1', '', '1', '', null, null);
INSERT INTO `health_chain` VALUES ('25', '希望医院心脏科', '张三', '26', '0', '102648941321', '心脏三科', '希望医院三区', '1', '', '1', '', null, null);
INSERT INTO `health_chain` VALUES ('26', '测试标题', '测试姓名1', '58', '0', '81515132165', '脑科', '脑科三区', '1', '', '1', '', null, null);
INSERT INTO `health_chain` VALUES ('27', 'demo1', 'demo1', '32', '0', '515+130320', '外科', '第二区', '1', '', '1', '', null, null);
INSERT INTO `health_chain` VALUES ('28', '希望医院心脏科', '张三', '26', '0', '102648941321', '心脏三科', '希望医院三区', '1', '', '1', '', null, null);
INSERT INTO `health_chain` VALUES ('29', '测试标题', '测试姓名1', '58', '0', '81515132165', '脑科', '脑科三区', '1', '', '1', '', null, null);
INSERT INTO `health_chain` VALUES ('30', 'demo1', 'demo1', '32', '0', '515+130320', '外科', '第二区', '1', '', '1', '', null, null);
INSERT INTO `health_chain` VALUES ('31', '希望医院心脏科', '张三', '26', '0', '102648941321', '心脏三科', '希望医院三区', '1', '', '1', '', null, null);
INSERT INTO `health_chain` VALUES ('32', '测试标题', '测试姓名1', '58', '0', '81515132165', '脑科', '脑科三区', '1', '', '1', '', null, null);
INSERT INTO `health_chain` VALUES ('33', 'demo1', 'demo1', '32', '0', '515+130320', '外科', '第二区', '1', '', '1', '', null, null);
INSERT INTO `health_chain` VALUES ('34', '希望医院心脏科', '张三', '26', '0', '123', '心脏三科', '希望医院三区', '1', '', '1', '', null, null);
INSERT INTO `health_chain` VALUES ('35', '测试标题', '测试姓名1', '58', '0', '81515132165', '脑科', '脑科三区', '1', '', '1', '', null, null);

-- ----------------------------
-- Table structure for health_delcm
-- ----------------------------
DROP TABLE IF EXISTS `health_delcm`;
CREATE TABLE `health_delcm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) DEFAULT NULL,
  `chain_id` int(11) DEFAULT NULL,
  `del_time` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of health_delcm
-- ----------------------------
INSERT INTO `health_delcm` VALUES ('1', '1', '3', '1504693572');
INSERT INTO `health_delcm` VALUES ('2', '1', '7', '1504696070');
INSERT INTO `health_delcm` VALUES ('3', '1', '5', '1504697713');
INSERT INTO `health_delcm` VALUES ('4', '1', '9', '1504698119');
INSERT INTO `health_delcm` VALUES ('5', '1', '6', '1504699546');
INSERT INTO `health_delcm` VALUES ('6', '1', '36', '1504699608');

-- ----------------------------
-- Table structure for health_link
-- ----------------------------
DROP TABLE IF EXISTS `health_link`;
CREATE TABLE `health_link` (
  `chain_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `age` int(3) NOT NULL,
  `sex` char(10) NOT NULL,
  `record_number` char(30) NOT NULL,
  `department` varchar(30) NOT NULL,
  `inpatient_area` varchar(30) NOT NULL,
  `lesion` varchar(30) NOT NULL,
  `file_status` int(2) NOT NULL,
  `file_time` varchar(30) NOT NULL,
  `chain_status` int(2) NOT NULL,
  PRIMARY KEY (`chain_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of health_link
-- ----------------------------

-- ----------------------------
-- Table structure for health_user
-- ----------------------------
DROP TABLE IF EXISTS `health_user`;
CREATE TABLE `health_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) DEFAULT NULL,
  `password` char(32) DEFAULT NULL,
  `user_tel` varchar(32) DEFAULT NULL,
  `user_email` varchar(32) DEFAULT NULL,
  `registered_time` varchar(30) DEFAULT NULL,
  `user_ip` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of health_user
-- ----------------------------
INSERT INTO `health_user` VALUES ('1', 'zhangsan', 'dc483e80a7a0bd9ef71d8cf973673924', '17601261496', '1364096285@qq.com', null, null);
INSERT INTO `health_user` VALUES ('2', 'zhangsana', '43b24999451662038e4e545e91385bbe', '15850982698', 'ltstudy@sina.com', '2017-09-05 14:32:41', '1270');
INSERT INTO `health_user` VALUES ('3', 'zhangsanb', 'c815e162abe7338db1414c70a4420f8b', '15021511566', '123@qq.com', '2017-09-05 14:42:46', '127.0.0.1');
INSERT INTO `health_user` VALUES ('4', 'zhangsanqq', 'c815e162abe7338db1414c70a4420f8b', '1561156161', '123@qq.com', '2017-09-05 14:51:38', '127.0.0.1');
INSERT INTO `health_user` VALUES ('5', 'zhangsanqqaa', 'c815e162abe7338db1414c70a4420f8b', '1561156161', '123@qq.com', '2017-09-05 14:54:23', '127.0.0.1');
INSERT INTO `health_user` VALUES ('6', 'zhangsanqqaaa', 'c815e162abe7338db1414c70a4420f8b', '1561156161', '123@qq.com', '2017-09-05 14:57:00', '127.0.0.1');
INSERT INTO `health_user` VALUES ('7', 'lisiwsas', 'c815e162abe7338db1414c70a4420f8b', '1561156161', '123@qq.com', '2017-09-05 14:59:38', '127.0.0.1');
INSERT INTO `health_user` VALUES ('8', 'zhangsan啊啊所多所多所', 'c815e162abe7338db1414c70a4420f8b', '115615615', '123@qq.com', '2017-09-05 15:12:21', '127.0.0.1');
INSERT INTO `health_user` VALUES ('9', 'a123466', 'c815e162abe7338db1414c70a4420f8b', '115615615', '123@qq.com', '2017-09-05 15:20:56', '127.0.0.1');
INSERT INTO `health_user` VALUES ('10', 'ling', '1e55dbf412cb74d5e2c21fb6452408c7', '18662844268', '546462977@qq.com', '2017-09-07 17:06:08', '127.0.0.1');
SET FOREIGN_KEY_CHECKS=1;
