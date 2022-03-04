/*
MySQL Data Transfer
Source Host: localhost
Source Database: shop
Target Host: localhost
Target Database: shop
Date: 2022-3-4 22:57:10
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cyk_logname` varchar(111) DEFAULT NULL,
  `cyk_typename` varchar(111) DEFAULT NULL,
  `cyk_sImageId` int(11) DEFAULT NULL,
  `cyk_money` varchar(111) DEFAULT NULL,
  `cyk_beizhu` varchar(111) DEFAULT NULL,
  `cyk_time` varchar(111) NOT NULL,
  `cyk_year` int(111) NOT NULL,
  `cyk_month` int(111) NOT NULL,
  `cyk_day` int(111) NOT NULL,
  `cyk_kind` int(111) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `publisher` varchar(100) DEFAULT NULL,
  `content` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `articleId` int(100) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`articleId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for basketball_table
-- ----------------------------
DROP TABLE IF EXISTS `basketball_table`;
CREATE TABLE `basketball_table` (
  `num` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `age` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL,
  `nationality` varchar(100) NOT NULL,
  `salary` varchar(100) NOT NULL,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `creater` varchar(100) DEFAULT NULL,
  `create_time` varchar(100) DEFAULT NULL,
  `publishing` varchar(100) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for login
-- ----------------------------
DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `id` int(111) NOT NULL AUTO_INCREMENT,
  `logname` varchar(111) DEFAULT NULL,
  `password` varchar(111) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for manger
-- ----------------------------
DROP TABLE IF EXISTS `manger`;
CREATE TABLE `manger` (
  `id` int(111) NOT NULL AUTO_INCREMENT,
  `number` varchar(111) DEFAULT NULL,
  `password` varchar(111) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
  `timestamp` varchar(111) DEFAULT NULL,
  `price` varchar(111) DEFAULT NULL,
  `date` varchar(111) DEFAULT NULL,
  `type` varchar(111) DEFAULT NULL,
  `img` varchar(111) DEFAULT NULL,
  `logname` varchar(111) DEFAULT NULL,
  `password` varchar(111) DEFAULT NULL,
  `number` int(111) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`number`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `gender` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `number` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `id` int(100) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `account` VALUES ('1', '123', 'else', '2131492879', '122', 'gfdg', '2021.06.21 04:35', '2021', '6', '21', '0');
INSERT INTO `account` VALUES ('2', '123', 'traffic', '2131492873', '123', '123', '2021.06.21 05:46', '2021', '6', '21', '0');
INSERT INTO `account` VALUES ('3', '123', 'borrow', '2131492909', '358', '123', '2021.06.21 06:37', '2021', '6', '21', '1');
INSERT INTO `account` VALUES ('4', '123', 'transaction', '2131492905', '755', '123', '2021.06.21 06:40', '2021', '6', '21', '1');
INSERT INTO `account` VALUES ('5', '123', 'catering', '2131492866', '34', 'qwe', '2021.06.21 08:35', '2021', '6', '21', '0');
INSERT INTO `account` VALUES ('6', '123', 'shopping', '2131492870', '65', '123', '2021.06.21 08:46', '2021', '6', '21', '0');
INSERT INTO `account` VALUES ('7', '123', 'shopping', '2131492870', '25', '123', '2021.06.21 09:30', '2021', '6', '21', '0');
INSERT INTO `account` VALUES ('8', '123', 'entertainment', '2131492897', '255', '123', '2021.06.21 12:12', '2021', '6', '21', '0');
INSERT INTO `account` VALUES ('9', '123', 'life', '2131492887', '122', '123', '2021.06.21 09:33', '2021', '6', '21', '0');
INSERT INTO `account` VALUES ('10', 'duyi', 'snack', '2131492877', '256', 'dgdnfjgh', '2021.06.21 09:45', '2021', '6', '21', '0');
INSERT INTO `account` VALUES ('11', 'duyi', 'traffic', '2131492873', '22', '123', '2021.06.21 09:55', '2021', '6', '21', '0');
INSERT INTO `account` VALUES ('16', '123', 'else', '2131492879', '122', '123', '2021.06.21 12:46', '2021', '6', '21', '0');
INSERT INTO `account` VALUES ('17', '123', 'catering', '2131492866', '23', 'asdf', '2021.06.21 12:50', '2021', '6', '21', '0');
INSERT INTO `account` VALUES ('18', '123', 'entertainment', '2131492897', '555', '123', '2021.06.21 12:51', '2021', '6', '21', '0');
INSERT INTO `account` VALUES ('19', '123', 'social', '2131492881', '32', '123', '2021.06.21 12:55', '2021', '6', '21', '0');
INSERT INTO `account` VALUES ('20', 'duyi', 'life', '2131492887', '24', '1234', '2021.06.21 12:59', '2021', '6', '21', '0');
INSERT INTO `account` VALUES ('21', '123', 'entertainment', '2131492897', '55', '34', '2021.06.21 13:17', '2021', '6', '21', '0');
INSERT INTO `account` VALUES ('22', '123', 'daily', '2131492883', '123', '123', '2021.06.21 13:20', '2021', '6', '21', '0');
INSERT INTO `account` VALUES ('23', 'duyi', 'life', '2131492887', '12', '234', '2021.06.21 13:21', '2021', '6', '21', '0');
INSERT INTO `account` VALUES ('24', '123', 'entertainment', '2131492897', '555', '123', '2021.06.21 13:36', '2021', '6', '21', '0');
INSERT INTO `account` VALUES ('25', '123', 'bonus', '2131492907', '123', '234', '2021.06.21 13:38', '2021', '6', '21', '1');
INSERT INTO `account` VALUES ('26', 'duyi', 'entertainment', '2131492897', '2', 'sdf', '2021.06.21 13:43', '2021', '6', '21', '0');
INSERT INTO `account` VALUES ('27', 'duyi', 'else', '2131492879', '2555', '123', '2021.06.21 15:44', '2021', '6', '21', '0');
INSERT INTO `account` VALUES ('28', '123', 'snack', '2131492877', '255', '123', '2021.06.22 00:20', '2021', '6', '22', '0');
INSERT INTO `account` VALUES ('29', '123', 'transaction', '2131492905', '55', '1234', '2021.06.22 00:21', '2021', '6', '22', '1');
INSERT INTO `account` VALUES ('30', 'duyi', 'life', '2131492887', '55', 'ewew', '2021.06.22 00:32', '2021', '6', '22', '0');
INSERT INTO `article` VALUES ('陈源锴', '中国科学实验室在量子计算机领域取得重大成功', '中国量子计算机研究成功', '1');
INSERT INTO `article` VALUES ('王元均', '三星杯比赛上，柯洁再下一城，以2:0的成绩战胜对手', '柯洁取得三星杯冠军', '2');
INSERT INTO `article` VALUES ('赵明浩', '美国新闻网消息，特朗普在推特上发布信息', '特朗普不承认大选失败', '3');
INSERT INTO `article` VALUES ('df', 'df', 'df', '4');
INSERT INTO `basketball_table` VALUES ('1', 'kd', '20', 'PG', 'usa', '2000w');
INSERT INTO `basketball_table` VALUES ('5', 'kobe', '21', 'sf', 'USA', '100w');
INSERT INTO `basketball_table` VALUES ('6', 'kobe', '21', 'sf', 'china', '1000w');
INSERT INTO `book` VALUES ('1', '来自星星的你', '三毛', '2020-03-12', '清华大学出版社', '26元');
INSERT INTO `book` VALUES ('2', '梦溪笔谈', '沈括', '2020-02-04', '暨南大学出版社', '24元');
INSERT INTO `comment` VALUES ('5', '小曹', '这本书的内容很好', '2000.2.3');
INSERT INTO `comment` VALUES ('7', '曹志阳', '仙侠小说让我在书中遨游', '2020.3.5');
INSERT INTO `comment` VALUES ('8', '陈晓红', '总裁的系列很棒', '2019.3.4');
INSERT INTO `login` VALUES ('1', '123', '123');
INSERT INTO `login` VALUES ('2', 'hhh', '123');
INSERT INTO `login` VALUES ('3', 'hhh', '123');
INSERT INTO `login` VALUES ('4', 'hhh', '123');
INSERT INTO `login` VALUES ('5', '1234', '1234');
INSERT INTO `login` VALUES ('6', '1234', '1234');
INSERT INTO `login` VALUES ('7', '1234', '1234');
INSERT INTO `login` VALUES ('8', '1245', '1245');
INSERT INTO `login` VALUES ('9', '11', '11');
INSERT INTO `login` VALUES ('10', '12344', '12344');
INSERT INTO `login` VALUES ('11', '22', '22');
INSERT INTO `login` VALUES ('12', '12344', '12344');
INSERT INTO `login` VALUES ('13', 'duyi', '1234');
INSERT INTO `manger` VALUES ('1', '123', '123');
INSERT INTO `manger` VALUES ('2', '789', '789');
INSERT INTO `member` VALUES (null, null, null, null, null, '5555', '5555', '1');
INSERT INTO `user` VALUES ('男', '2000.1.2', '123123', '2018040592', '陈源锴', '3');
INSERT INTO `user` VALUES ('女', '2000.11.11', '123123', '201415245', '唐成斌', '4');
