/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50724
Source Host           : localhost:3306
Source Database       : ssm_hrms

Target Server Type    : MYSQL
Target Server Version : 50724
File Encoding         : 65001

Date: 2019-07-16 10:35:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tbl_dept
-- ----------------------------
DROP TABLE IF EXISTS `tbl_dept`;
CREATE TABLE `tbl_dept` (
  `dept_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `dept_name` varchar(255) NOT NULL DEFAULT '',
  `dept_leader` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_dept
-- ----------------------------
INSERT INTO `tbl_dept` VALUES ('1', '研发部', 'Tomsom');
INSERT INTO `tbl_dept` VALUES ('2', '人事部', 'Deak');
INSERT INTO `tbl_dept` VALUES ('3', '销售部', 'jack');
INSERT INTO `tbl_dept` VALUES ('4', '行政部', 'boob');
INSERT INTO `tbl_dept` VALUES ('5', '财务部', 'Alan');
INSERT INTO `tbl_dept` VALUES ('6', '生产部', 'Beel');
INSERT INTO `tbl_dept` VALUES ('7', '公关部', 'doopl');

-- ----------------------------
-- Table structure for tbl_emp
-- ----------------------------
DROP TABLE IF EXISTS `tbl_emp`;
CREATE TABLE `tbl_emp` (
  `emp_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `emp_name` varchar(22) NOT NULL DEFAULT '',
  `emp_email` varchar(256) NOT NULL DEFAULT '',
  `gender` char(2) NOT NULL DEFAULT '',
  `department_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=206 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_emp
-- ----------------------------
INSERT INTO `tbl_emp` VALUES ('1', 'aa', 'aa@qq.com', 'M', '1');
INSERT INTO `tbl_emp` VALUES ('2', 'name_db540', 'db540@qq.com', 'M', '3');
INSERT INTO `tbl_emp` VALUES ('3', 'name_0f98e', '0f98e@qq.com', 'F', '3');
INSERT INTO `tbl_emp` VALUES ('4', 'name_23995', '23995@qq.com', 'M', '4');
INSERT INTO `tbl_emp` VALUES ('5', 'name_db3e8', 'db3e8@qq.com', 'F', '5');
INSERT INTO `tbl_emp` VALUES ('6', 'name_ab588', 'ab588@qq.com', 'M', '6');
INSERT INTO `tbl_emp` VALUES ('7', 'name_250cb', '250cb@qq.com', 'F', '1');
INSERT INTO `tbl_emp` VALUES ('8', 'name_22c62', '22c62@qq.com', 'M', '2');
INSERT INTO `tbl_emp` VALUES ('9', 'name_4c737', '4c737@qq.com', 'F', '3');
INSERT INTO `tbl_emp` VALUES ('10', 'name_6ef97', '6ef97@qq.com', 'M', '4');
INSERT INTO `tbl_emp` VALUES ('11', 'name_ac495', 'ac495@qq.com', 'F', '5');
INSERT INTO `tbl_emp` VALUES ('12', 'name_5bccd', '5bccd@qq.com', 'M', '6');
INSERT INTO `tbl_emp` VALUES ('13', 'name_ce5ce', 'ce5ce@qq.com', 'F', '1');
INSERT INTO `tbl_emp` VALUES ('14', 'name_a7fc7', 'a7fc7@qq.com', 'M', '2');
INSERT INTO `tbl_emp` VALUES ('15', 'name_328bf', '328bf@qq.com', 'F', '3');
INSERT INTO `tbl_emp` VALUES ('16', 'name_ca517', 'ca517@qq.com', 'M', '4');
INSERT INTO `tbl_emp` VALUES ('17', 'name_b0e9f', 'b0e9f@qq.com', 'F', '5');
INSERT INTO `tbl_emp` VALUES ('18', 'name_72af5', '72af5@qq.com', 'M', '6');
INSERT INTO `tbl_emp` VALUES ('19', 'name_1f46f', '1f46f@qq.com', 'F', '1');
INSERT INTO `tbl_emp` VALUES ('20', 'name_f51ba', 'f51ba@qq.com', 'M', '2');
INSERT INTO `tbl_emp` VALUES ('21', 'name_52c3d', '52c3d@qq.com', 'F', '4');
INSERT INTO `tbl_emp` VALUES ('22', 'name_20b50', '20b50@qq.com', 'M', '4');
INSERT INTO `tbl_emp` VALUES ('23', 'name_1649d', '1649d@qq.com', 'F', '5');
INSERT INTO `tbl_emp` VALUES ('24', 'name_d8b81', 'd8b81@qq.com', 'M', '6');
INSERT INTO `tbl_emp` VALUES ('25', 'name_be908', 'be908@qq.com', 'F', '2');
INSERT INTO `tbl_emp` VALUES ('26', 'name_3e783', '3e783@qq.com', 'M', '2');
INSERT INTO `tbl_emp` VALUES ('27', 'name_bf7a0', 'bf7a0@qq.com', 'F', '3');
INSERT INTO `tbl_emp` VALUES ('28', 'name_86f01', '86f01@qq.com', 'M', '4');
INSERT INTO `tbl_emp` VALUES ('29', 'name_325f8', '325f8@qq.com', 'F', '5');
INSERT INTO `tbl_emp` VALUES ('30', 'name_ae94b', 'ae94b@qq.com', 'M', '6');
INSERT INTO `tbl_emp` VALUES ('31', 'name_6e7ec', '6e7ec@qq.com', 'F', '1');
INSERT INTO `tbl_emp` VALUES ('32', 'name_b68a2', 'b68a2@qq.com', 'M', '2');
INSERT INTO `tbl_emp` VALUES ('33', 'name_51206', '51206@qq.com', 'F', '3');
INSERT INTO `tbl_emp` VALUES ('34', 'name_864fb', '864fb@qq.com', 'M', '4');
INSERT INTO `tbl_emp` VALUES ('35', 'name_49ac9', '49ac9@qq.com', 'F', '5');
INSERT INTO `tbl_emp` VALUES ('36', 'name_7f43c', '7f43c@qq.com', 'M', '6');
INSERT INTO `tbl_emp` VALUES ('37', 'name_62ee9', '62ee9@qq.com', 'F', '1');
INSERT INTO `tbl_emp` VALUES ('38', 'name_ad20f', 'ad20f@qq.com', 'M', '2');
INSERT INTO `tbl_emp` VALUES ('39', 'name_5cac2', '5cac2@qq.com', 'F', '3');
INSERT INTO `tbl_emp` VALUES ('40', 'name_e0c44', 'e0c44@qq.com', 'M', '4');
INSERT INTO `tbl_emp` VALUES ('41', 'name_1fdaa', '1fdaa@qq.com', 'F', '5');
INSERT INTO `tbl_emp` VALUES ('42', 'name_be07b', 'be07b@qq.com', 'M', '6');
INSERT INTO `tbl_emp` VALUES ('43', 'name_c4890', 'c4890@qq.com', 'F', '1');
INSERT INTO `tbl_emp` VALUES ('44', 'name_95827', '95827@qq.com', 'M', '2');
INSERT INTO `tbl_emp` VALUES ('45', 'name_c4f39', 'c4f39@qq.com', 'F', '3');
INSERT INTO `tbl_emp` VALUES ('46', 'name_26f50', '26f50@qq.com', 'M', '4');
INSERT INTO `tbl_emp` VALUES ('47', 'name_8d199', '8d199@qq.com', 'F', '5');
INSERT INTO `tbl_emp` VALUES ('48', 'name_ee2ac', 'ee2ac@qq.com', 'M', '6');
INSERT INTO `tbl_emp` VALUES ('49', 'name_59cfa', '59cfa@qq.com', 'F', '1');
INSERT INTO `tbl_emp` VALUES ('50', 'name_a32b4', 'a32b4@qq.com', 'M', '2');
INSERT INTO `tbl_emp` VALUES ('51', 'name_486b8', '486b8@qq.com', 'F', '3');
INSERT INTO `tbl_emp` VALUES ('52', 'name_f697c', 'f697c@qq.com', 'M', '4');
INSERT INTO `tbl_emp` VALUES ('53', 'name_b8049', 'b8049@qq.com', 'F', '5');
INSERT INTO `tbl_emp` VALUES ('54', 'name_f0644', 'f0644@qq.com', 'M', '6');
INSERT INTO `tbl_emp` VALUES ('55', 'name_c2fcf', 'c2fcf@qq.com', 'F', '1');
INSERT INTO `tbl_emp` VALUES ('56', 'name_229a7', '229a7@qq.com', 'M', '2');
INSERT INTO `tbl_emp` VALUES ('57', 'name_a87c7', 'a87c7@qq.com', 'F', '3');
INSERT INTO `tbl_emp` VALUES ('58', 'name_60708', '60708@qq.com', 'M', '4');
INSERT INTO `tbl_emp` VALUES ('59', 'name_e8b3f', 'e8b3f@qq.com', 'F', '5');
INSERT INTO `tbl_emp` VALUES ('60', 'name_c7e2e', 'c7e2e@qq.com', 'M', '6');
INSERT INTO `tbl_emp` VALUES ('61', 'name_b9b67', 'b9b67@qq.com', 'F', '1');
INSERT INTO `tbl_emp` VALUES ('62', 'name_74e94', '74e94@qq.com', 'M', '2');
INSERT INTO `tbl_emp` VALUES ('63', 'name_eda91', 'eda91@qq.com', 'F', '3');
INSERT INTO `tbl_emp` VALUES ('64', 'name_b503e', 'b503e@qq.com', 'M', '4');
INSERT INTO `tbl_emp` VALUES ('65', 'name_4c472', '4c472@qq.com', 'F', '5');
INSERT INTO `tbl_emp` VALUES ('66', 'name_002b3', '002b3@qq.com', 'M', '6');
INSERT INTO `tbl_emp` VALUES ('67', 'name_5b384', '5b384@qq.com', 'F', '1');
INSERT INTO `tbl_emp` VALUES ('68', 'name_7787b', '7787b@qq.com', 'M', '2');
INSERT INTO `tbl_emp` VALUES ('69', 'name_ea02f', 'ea02f@qq.com', 'F', '3');
INSERT INTO `tbl_emp` VALUES ('70', 'name_099f3', '099f3@qq.com', 'M', '4');
INSERT INTO `tbl_emp` VALUES ('71', 'name_7fdc8', '7fdc8@qq.com', 'F', '5');
INSERT INTO `tbl_emp` VALUES ('72', 'name_9aa49', '9aa49@qq.com', 'M', '6');
INSERT INTO `tbl_emp` VALUES ('73', 'name_d4036', 'd4036@qq.com', 'F', '1');
INSERT INTO `tbl_emp` VALUES ('74', 'name_2cb9d', '2cb9d@qq.com', 'M', '2');
INSERT INTO `tbl_emp` VALUES ('75', 'name_a854a', 'a854a@qq.com', 'F', '3');
INSERT INTO `tbl_emp` VALUES ('76', 'name_b4202', 'b4202@qq.com', 'M', '4');
INSERT INTO `tbl_emp` VALUES ('77', 'name_4f117', '4f117@qq.com', 'F', '5');
INSERT INTO `tbl_emp` VALUES ('78', 'name_80bdd', '80bdd@qq.com', 'M', '6');
INSERT INTO `tbl_emp` VALUES ('79', 'name_93a38', '93a38@qq.com', 'F', '1');
INSERT INTO `tbl_emp` VALUES ('80', 'name_7cc0f', '7cc0f@qq.com', 'M', '2');
INSERT INTO `tbl_emp` VALUES ('81', 'name_6cf7f', '6cf7f@qq.com', 'F', '3');
INSERT INTO `tbl_emp` VALUES ('82', 'name_4e2b0', '4e2b0@qq.com', 'M', '4');
INSERT INTO `tbl_emp` VALUES ('83', 'name_d2d33', 'd2d33@qq.com', 'F', '5');
INSERT INTO `tbl_emp` VALUES ('84', 'name_23213', '23213@qq.com', 'M', '6');
INSERT INTO `tbl_emp` VALUES ('85', 'name_be70d', 'be70d@qq.com', 'F', '1');
INSERT INTO `tbl_emp` VALUES ('86', 'name_98cff', '98cff@qq.com', 'M', '2');
INSERT INTO `tbl_emp` VALUES ('87', 'name_14d37', '14d37@qq.com', 'F', '3');
INSERT INTO `tbl_emp` VALUES ('88', 'name_dabb7', 'dabb7@qq.com', 'M', '4');
INSERT INTO `tbl_emp` VALUES ('89', 'name_f0465', 'f0465@qq.com', 'F', '5');
INSERT INTO `tbl_emp` VALUES ('90', 'name_5cba4', '5cba4@qq.com', 'M', '6');
INSERT INTO `tbl_emp` VALUES ('91', 'name_80e8d', '80e8d@qq.com', 'F', '1');
INSERT INTO `tbl_emp` VALUES ('92', 'name_a0b59', 'a0b59@qq.com', 'M', '2');
INSERT INTO `tbl_emp` VALUES ('93', 'name_2bf60', '2bf60@qq.com', 'F', '3');
INSERT INTO `tbl_emp` VALUES ('94', 'name_5d4e3', '5d4e3@qq.com', 'M', '4');
INSERT INTO `tbl_emp` VALUES ('95', 'name_db162', 'db162@qq.com', 'F', '5');
INSERT INTO `tbl_emp` VALUES ('96', 'name_88387', '88387@qq.com', 'M', '6');
INSERT INTO `tbl_emp` VALUES ('97', 'name_481f9', '481f9@qq.com', 'F', '1');
INSERT INTO `tbl_emp` VALUES ('98', 'name_02bd0', '02bd0@qq.com', 'M', '2');
INSERT INTO `tbl_emp` VALUES ('99', 'name_c3daf', 'c3daf@qq.com', 'F', '3');
INSERT INTO `tbl_emp` VALUES ('100', 'name_15c6b', '15c6b@qq.com', 'M', '4');
INSERT INTO `tbl_emp` VALUES ('101', 'name_ca5bb', 'ca5bb@qq.com', 'F', '5');
INSERT INTO `tbl_emp` VALUES ('102', 'name_b492e', 'b492e@qq.com', 'M', '6');
INSERT INTO `tbl_emp` VALUES ('103', 'name_14354', '14354@qq.com', 'F', '1');
INSERT INTO `tbl_emp` VALUES ('104', 'name_16a12', '16a12@qq.com', 'M', '2');
INSERT INTO `tbl_emp` VALUES ('105', 'name_e08a8', 'e08a8@qq.com', 'F', '3');
INSERT INTO `tbl_emp` VALUES ('106', 'name_26e3b', '26e3b@qq.com', 'M', '4');
INSERT INTO `tbl_emp` VALUES ('107', 'name_a03d7', 'a03d7@qq.com', 'F', '5');
INSERT INTO `tbl_emp` VALUES ('108', 'name_cf419', 'cf419@qq.com', 'M', '6');
INSERT INTO `tbl_emp` VALUES ('109', 'name_8d6b9', '8d6b9@qq.com', 'F', '1');
INSERT INTO `tbl_emp` VALUES ('110', 'name_c518b', 'c518b@qq.com', 'M', '2');
INSERT INTO `tbl_emp` VALUES ('111', 'name_f8af6', 'f8af6@qq.com', 'F', '3');
INSERT INTO `tbl_emp` VALUES ('112', 'name_a866a', 'a866a@qq.com', 'M', '4');
INSERT INTO `tbl_emp` VALUES ('113', 'name_a96f6', 'a96f6@qq.com', 'F', '5');
INSERT INTO `tbl_emp` VALUES ('114', 'name_1eb38', '1eb38@qq.com', 'M', '6');
INSERT INTO `tbl_emp` VALUES ('115', 'name_4e77f', '4e77f@qq.com', 'F', '1');
INSERT INTO `tbl_emp` VALUES ('116', 'name_5bab5', '5bab5@qq.com', 'M', '2');
INSERT INTO `tbl_emp` VALUES ('117', 'name_d1068', 'd1068@qq.com', 'F', '3');
INSERT INTO `tbl_emp` VALUES ('118', 'name_f33b8', 'f33b8@qq.com', 'M', '4');
INSERT INTO `tbl_emp` VALUES ('119', 'name_9f214', '9f214@qq.com', 'F', '5');
INSERT INTO `tbl_emp` VALUES ('120', 'name_7e43a', '7e43a@qq.com', 'M', '6');
INSERT INTO `tbl_emp` VALUES ('121', 'name_ede63', 'ede63@qq.com', 'F', '1');
INSERT INTO `tbl_emp` VALUES ('122', 'name_e9a81', 'e9a81@qq.com', 'M', '2');
INSERT INTO `tbl_emp` VALUES ('123', 'name_93782', '93782@qq.com', 'F', '3');
INSERT INTO `tbl_emp` VALUES ('124', 'name_b06bc', 'b06bc@qq.com', 'M', '4');
INSERT INTO `tbl_emp` VALUES ('125', 'name_48f51', '48f51@qq.com', 'F', '5');
INSERT INTO `tbl_emp` VALUES ('126', 'name_c569a', 'c569a@qq.com', 'M', '6');
INSERT INTO `tbl_emp` VALUES ('127', 'name_867f1', '867f1@qq.com', 'F', '1');
INSERT INTO `tbl_emp` VALUES ('128', 'name_021d3', '021d3@qq.com', 'M', '2');
INSERT INTO `tbl_emp` VALUES ('129', 'name_f248f', 'f248f@qq.com', 'F', '3');
INSERT INTO `tbl_emp` VALUES ('130', 'name_27082', '27082@qq.com', 'M', '4');
INSERT INTO `tbl_emp` VALUES ('131', 'name_6a9f8', '6a9f8@qq.com', 'F', '5');
INSERT INTO `tbl_emp` VALUES ('132', 'name_b0da1', 'b0da1@qq.com', 'M', '6');
INSERT INTO `tbl_emp` VALUES ('133', 'name_9d288', '9d288@qq.com', 'F', '1');
INSERT INTO `tbl_emp` VALUES ('134', 'name_f7ac8', 'f7ac8@qq.com', 'M', '2');
INSERT INTO `tbl_emp` VALUES ('135', 'name_3c871', '3c871@qq.com', 'F', '3');
INSERT INTO `tbl_emp` VALUES ('136', 'name_99ad9', '99ad9@qq.com', 'M', '4');
INSERT INTO `tbl_emp` VALUES ('137', 'name_a7309', 'a7309@qq.com', 'F', '5');
INSERT INTO `tbl_emp` VALUES ('138', 'name_13ce0', '13ce0@qq.com', 'M', '6');
INSERT INTO `tbl_emp` VALUES ('139', 'name_0d844', '0d844@qq.com', 'F', '1');
INSERT INTO `tbl_emp` VALUES ('140', 'name_a62de', 'a62de@qq.com', 'M', '2');
INSERT INTO `tbl_emp` VALUES ('141', 'name_23135', '23135@qq.com', 'F', '3');
INSERT INTO `tbl_emp` VALUES ('142', 'name_471e5', '471e5@qq.com', 'M', '4');
INSERT INTO `tbl_emp` VALUES ('143', 'name_d435c', 'd435c@qq.com', 'F', '5');
INSERT INTO `tbl_emp` VALUES ('144', 'name_6126d', '6126d@qq.com', 'M', '6');
INSERT INTO `tbl_emp` VALUES ('145', 'name_1afd5', '1afd5@qq.com', 'F', '1');
INSERT INTO `tbl_emp` VALUES ('146', 'name_a1b21', 'a1b21@qq.com', 'M', '2');
INSERT INTO `tbl_emp` VALUES ('147', 'name_8bbed', '8bbed@qq.com', 'F', '3');
INSERT INTO `tbl_emp` VALUES ('148', 'name_60278', '60278@qq.com', 'M', '4');
INSERT INTO `tbl_emp` VALUES ('149', 'name_ccb40', 'ccb40@qq.com', 'F', '5');
INSERT INTO `tbl_emp` VALUES ('150', 'name_ad199', 'ad199@qq.com', 'M', '6');
INSERT INTO `tbl_emp` VALUES ('151', 'name_6004b', '6004b@qq.com', 'F', '1');
INSERT INTO `tbl_emp` VALUES ('152', 'name_c3997', 'c3997@qq.com', 'M', '2');
INSERT INTO `tbl_emp` VALUES ('153', 'name_14078', '14078@qq.com', 'F', '3');
INSERT INTO `tbl_emp` VALUES ('154', 'name_3680e', '3680e@qq.com', 'M', '4');
INSERT INTO `tbl_emp` VALUES ('155', 'name_d7824', 'd7824@qq.com', 'F', '5');
INSERT INTO `tbl_emp` VALUES ('156', 'name_c36bd', 'c36bd@qq.com', 'M', '6');
INSERT INTO `tbl_emp` VALUES ('157', 'name_3c0b4', '3c0b4@qq.com', 'F', '1');
INSERT INTO `tbl_emp` VALUES ('158', 'name_b0bf5', 'b0bf5@qq.com', 'M', '2');
INSERT INTO `tbl_emp` VALUES ('159', 'name_d721c', 'd721c@qq.com', 'F', '3');
INSERT INTO `tbl_emp` VALUES ('160', 'name_181af', '181af@qq.com', 'M', '4');
INSERT INTO `tbl_emp` VALUES ('161', 'name_e2d3d', 'e2d3d@qq.com', 'F', '5');
INSERT INTO `tbl_emp` VALUES ('162', 'name_64092', '64092@qq.com', 'M', '6');
INSERT INTO `tbl_emp` VALUES ('163', 'name_982ca', '982ca@qq.com', 'F', '1');
INSERT INTO `tbl_emp` VALUES ('164', 'name_02277', '02277@qq.com', 'M', '2');
INSERT INTO `tbl_emp` VALUES ('165', 'name_57b1f', '57b1f@qq.com', 'F', '3');
INSERT INTO `tbl_emp` VALUES ('166', 'name_146a9', '146a9@qq.com', 'M', '4');
INSERT INTO `tbl_emp` VALUES ('167', 'name_269f2', '269f2@qq.com', 'F', '5');
INSERT INTO `tbl_emp` VALUES ('168', 'name_fa408', 'fa408@qq.com', 'M', '6');
INSERT INTO `tbl_emp` VALUES ('169', 'name_23499', '23499@qq.com', 'F', '1');
INSERT INTO `tbl_emp` VALUES ('170', 'name_6f3f4', '6f3f4@qq.com', 'M', '2');
INSERT INTO `tbl_emp` VALUES ('171', 'name_68339', '68339@qq.com', 'F', '3');
INSERT INTO `tbl_emp` VALUES ('172', 'name_3a130', '3a130@qq.com', 'M', '4');
INSERT INTO `tbl_emp` VALUES ('173', 'name_c2785', 'c2785@qq.com', 'F', '5');
INSERT INTO `tbl_emp` VALUES ('174', 'name_574a2', '574a2@qq.com', 'M', '6');
INSERT INTO `tbl_emp` VALUES ('175', 'name_e7554', 'e7554@qq.com', 'F', '1');
INSERT INTO `tbl_emp` VALUES ('176', 'name_7eac2', '7eac2@qq.com', 'M', '2');
INSERT INTO `tbl_emp` VALUES ('177', 'name_b12fe', 'b12fe@qq.com', 'F', '3');
INSERT INTO `tbl_emp` VALUES ('178', 'name_d3941', 'd3941@qq.com', 'M', '4');
INSERT INTO `tbl_emp` VALUES ('179', 'name_e2f02', 'e2f02@qq.com', 'F', '3');
INSERT INTO `tbl_emp` VALUES ('180', 'name_56bbc', '56bbc@qq.com', 'M', '6');
INSERT INTO `tbl_emp` VALUES ('181', 'name_d2e42', 'd2e42@qq.com', 'F', '1');
INSERT INTO `tbl_emp` VALUES ('182', 'name_9ca0a', '9ca0a@qq.com', 'M', '2');
INSERT INTO `tbl_emp` VALUES ('183', 'name_a68d7', 'a68d7@qq.com', 'F', '3');
INSERT INTO `tbl_emp` VALUES ('184', 'name_11a93', '11a93@qq.com', 'M', '4');
INSERT INTO `tbl_emp` VALUES ('185', 'name_a9da5', 'a9da5@qq.com', 'F', '5');
INSERT INTO `tbl_emp` VALUES ('186', 'name_e9fa5', 'e9fa5@qq.com', 'M', '6');
INSERT INTO `tbl_emp` VALUES ('187', 'name_36a15', '36a15@qq.com', 'F', '1');
INSERT INTO `tbl_emp` VALUES ('188', 'name_54fc3', '54fc3@qq.com', 'M', '2');
INSERT INTO `tbl_emp` VALUES ('189', 'name_2ee88', '2ee88@qq.com', 'F', '3');
INSERT INTO `tbl_emp` VALUES ('190', 'name_24865', '24865@qq.com', 'M', '4');
INSERT INTO `tbl_emp` VALUES ('191', 'name_696e1', '696e1@qq.com', 'F', '5');
INSERT INTO `tbl_emp` VALUES ('192', 'name_9b29c', '9b29c@qq.com', 'M', '6');
INSERT INTO `tbl_emp` VALUES ('193', 'name_8112e', '8112e@qq.com', 'F', '1');
INSERT INTO `tbl_emp` VALUES ('194', 'name_f51e1', 'f51e1@qq.com', 'M', '2');
INSERT INTO `tbl_emp` VALUES ('195', 'name_45c78', '45c78@qq.com', 'F', '3');
INSERT INTO `tbl_emp` VALUES ('196', 'name_e3ef4', 'e3ef4@qq.com', 'M', '4');
INSERT INTO `tbl_emp` VALUES ('204', 'zshhhh', 'zshhhh@qq.com', 'F', '7');
INSERT INTO `tbl_emp` VALUES ('205', 'lisihhhh', 'lisihhhh@qq.com', 'M', '7');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'kuxu', '666666');
INSERT INTO `users` VALUES ('2', 'kukuxu', '888888');
