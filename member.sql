/*
Navicat MySQL Data Transfer

Source Server         : connContact
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : contactdb

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2014-12-02 13:30:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `member`
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
  `id` int(11) NOT NULL DEFAULT '0',
  `first_name` varchar(100) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `last_name` varchar(100) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO `member` VALUES ('1', 'vinh', 'phan', 'vinhphan@gmail.com');
INSERT INTO `member` VALUES ('2', 'phan', 'vinh', 'phanvinh@gmail.com');
INSERT INTO `member` VALUES ('3', 'quoc', 'vinh', 'quocvinh@yahoo.com');
INSERT INTO `member` VALUES ('4', 'tung', 'dang', 'tungdang@gmail.com');
