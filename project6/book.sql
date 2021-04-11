/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50550
Source Host           : localhost:3306
Source Database       : book

Target Server Type    : MYSQL
Target Server Version : 50550
File Encoding         : 65001

Date: 2021-04-11 17:08:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bookinfo
-- ----------------------------
DROP TABLE IF EXISTS `bookinfo`;
CREATE TABLE `bookinfo` (
  `bookname` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `press` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bookinfo
-- ----------------------------
INSERT INTO `bookinfo` VALUES ('XM详解', '王红丽', '吉林大学出版社', '35', '1');
INSERT INTO `bookinfo` VALUES ('JSP技术大全', '张勇', '清华大学出版社', '45', '2');
INSERT INTO `bookinfo` VALUES ('Java编程快速入门', '赵坤', '东软电子出版社', '39', '3');
