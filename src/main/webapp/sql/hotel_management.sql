/*
Navicat MySQL Data Transfer

Source Server         : Java1113
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : hotel_management

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2019-05-30 20:58:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `bill`
-- ----------------------------
DROP TABLE IF EXISTS `bill`;
CREATE TABLE `bill` (
  `bid` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) DEFAULT NULL,
  `oid` int(10) DEFAULT NULL,
  `rtype` varchar(30) DEFAULT NULL,
  `btime` varchar(50) DEFAULT NULL,
  `zname` varchar(50) DEFAULT NULL,
  `bprice` double(50,0) DEFAULT NULL,
  `initime` varchar(50) DEFAULT NULL,
  `outtime` varchar(50) DEFAULT NULL,
  `exist` varchar(50) DEFAULT NULL,
  `remark` varchar(155) DEFAULT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bill
-- ----------------------------

-- ----------------------------
-- Table structure for `comment`
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `coid` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) DEFAULT NULL,
  `message` varchar(100) DEFAULT NULL,
  `cotime` varchar(50) DEFAULT NULL,
  `remark` varchar(155) DEFAULT NULL,
  PRIMARY KEY (`coid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------

-- ----------------------------
-- Table structure for `goods`
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `gid` int(10) NOT NULL AUTO_INCREMENT,
  `gname` varchar(50) DEFAULT NULL,
  `gprice` double(50,0) DEFAULT NULL,
  `gnumber` int(50) DEFAULT NULL,
  `remark` varchar(155) DEFAULT NULL,
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------

-- ----------------------------
-- Table structure for `img`
-- ----------------------------
DROP TABLE IF EXISTS `img`;
CREATE TABLE `img` (
  `img_id` int(10) NOT NULL AUTO_INCREMENT,
  `img_info` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`img_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of img
-- ----------------------------

-- ----------------------------
-- Table structure for `news`
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `nid` int(10) NOT NULL AUTO_INCREMENT,
  `nimg` varchar(50) DEFAULT NULL,
  `content` varchar(50) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `author` varchar(30) DEFAULT NULL,
  `ntime` varchar(50) DEFAULT NULL,
  `remark` varchar(155) DEFAULT NULL,
  PRIMARY KEY (`nid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------

-- ----------------------------
-- Table structure for `orders`
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `oid` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) DEFAULT NULL,
  `zid` int(10) DEFAULT NULL,
  `rprice` double(50,0) DEFAULT NULL,
  `rimg` varchar(50) DEFAULT NULL,
  `ocost` double(50,0) DEFAULT NULL,
  `otime` varchar(50) DEFAULT NULL,
  `endtime` varchar(50) DEFAULT NULL,
  `intime` varchar(50) DEFAULT NULL,
  `outtime` varchar(50) DEFAULT NULL,
  `oprice` double(50,0) DEFAULT NULL,
  `remark` varchar(155) DEFAULT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------

-- ----------------------------
-- Table structure for `room`
-- ----------------------------
DROP TABLE IF EXISTS `room`;
CREATE TABLE `room` (
  `rid` int(10) NOT NULL AUTO_INCREMENT,
  `rtype` varchar(50) DEFAULT NULL,
  `rnumber` int(50) DEFAULT NULL,
  `rprice` double(50,0) DEFAULT NULL,
  `rimg` varchar(100) DEFAULT NULL,
  `remark` varchar(155) DEFAULT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of room
-- ----------------------------

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` int(10) NOT NULL AUTO_INCREMENT,
  `uname` varchar(50) DEFAULT NULL,
  `upassword` varchar(50) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `idcard` varchar(120) DEFAULT NULL,
  `jurisdiction` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `regtime` varchar(50) DEFAULT NULL,
  `balance` double(50,0) DEFAULT NULL,
  `remark` varchar(155) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------

-- ----------------------------
-- Table structure for `zroom`
-- ----------------------------
DROP TABLE IF EXISTS `zroom`;
CREATE TABLE `zroom` (
  `zid` int(10) NOT NULL AUTO_INCREMENT,
  `rid` int(10) DEFAULT NULL,
  `zname` varchar(50) DEFAULT NULL,
  `zstatus` varchar(50) DEFAULT NULL,
  `remark` varchar(155) DEFAULT NULL,
  PRIMARY KEY (`zid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zroom
-- ----------------------------
