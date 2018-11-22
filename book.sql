/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : book

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2018-11-14 11:09:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(255) DEFAULT NULL,
  `admin_pwd` varchar(255) DEFAULT NULL COMMENT '管理员表',
  `admin_email` varchar(255) DEFAULT NULL,
  `admin_tell` bigint(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', '申奇龙', '123456', null, null, null);

-- ----------------------------
-- Table structure for admin_role
-- ----------------------------
DROP TABLE IF EXISTS `admin_role`;
CREATE TABLE `admin_role` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_role
-- ----------------------------

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `article_id` int(11) NOT NULL AUTO_INCREMENT,
  `article_writer` varchar(255) DEFAULT NULL,
  `article_name` varchar(255) DEFAULT NULL,
  `article_type` bigint(20) DEFAULT NULL,
  `article_desc` text,
  `article_browse` int(11) DEFAULT NULL,
  `article_skr` int(11) DEFAULT NULL,
  `article_time` varchar(255) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`article_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------

-- ----------------------------
-- Table structure for article_type
-- ----------------------------
DROP TABLE IF EXISTS `article_type`;
CREATE TABLE `article_type` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article_type
-- ----------------------------

-- ----------------------------
-- Table structure for day
-- ----------------------------
DROP TABLE IF EXISTS `day`;
CREATE TABLE `day` (
  `day_id` int(11) NOT NULL AUTO_INCREMENT,
  `day_time` char(20) DEFAULT NULL,
  `day_week` varchar(20) DEFAULT NULL,
  `day_sentence` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`day_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of day
-- ----------------------------

-- ----------------------------
-- Table structure for information
-- ----------------------------
DROP TABLE IF EXISTS `information`;
CREATE TABLE `information` (
  `im_id` int(11) NOT NULL,
  `im_email` varchar(255) DEFAULT NULL,
  `im_location` varchar(255) DEFAULT NULL,
  `im_phone` int(11) DEFAULT NULL,
  `im_sex` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`im_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of information
-- ----------------------------

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `mess_id` int(11) NOT NULL AUTO_INCREMENT,
  `mess_content` varchar(100) DEFAULT NULL,
  `mess_time` char(20) DEFAULT NULL,
  `mess_image` varchar(20) DEFAULT NULL,
  `mess_states` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`mess_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) DEFAULT NULL,
  `user_pwd` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------

-- ----------------------------
-- Table structure for web
-- ----------------------------
DROP TABLE IF EXISTS `web`;
CREATE TABLE `web` (
  `web_id` int(11) NOT NULL AUTO_INCREMENT,
  `web_name` varchar(255) DEFAULT NULL,
  `web_location` varchar(255) DEFAULT NULL,
  `web_desc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`web_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web
-- ----------------------------
