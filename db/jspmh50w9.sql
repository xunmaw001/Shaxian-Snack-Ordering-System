-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: jspmh50w9
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'2021-03-16 02:42:16',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-03-16 02:42:16',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-03-16 02:42:16',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-03-16 02:42:16',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-03-16 02:42:16',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-03-16 02:42:16',6,'宇宙银河系月球1号','月某','13823888886','是');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'xiaochixinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物车表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='客服聊天表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (61,'2021-03-16 02:42:15',1,1,'提问1','回复1',1),(62,'2021-03-16 02:42:15',2,2,'提问2','回复2',2),(63,'2021-03-16 02:42:15',3,3,'提问3','回复3',3),(64,'2021-03-16 02:42:15',4,4,'提问4','回复4',4),(65,'2021-03-16 02:42:15',5,5,'提问5','回复5',5),(66,'2021-03-16 02:42:15',6,6,'提问6','回复6',6);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/jspmh50w9/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/jspmh50w9/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspmh50w9/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussmendianxinxi`
--

DROP TABLE IF EXISTS `discussmendianxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussmendianxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='门店信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussmendianxinxi`
--

LOCK TABLES `discussmendianxinxi` WRITE;
/*!40000 ALTER TABLE `discussmendianxinxi` DISABLE KEYS */;
INSERT INTO `discussmendianxinxi` VALUES (121,'2021-03-16 02:42:16',1,1,'用户名1','评论内容1','回复内容1'),(122,'2021-03-16 02:42:16',2,2,'用户名2','评论内容2','回复内容2'),(123,'2021-03-16 02:42:16',3,3,'用户名3','评论内容3','回复内容3'),(124,'2021-03-16 02:42:16',4,4,'用户名4','评论内容4','回复内容4'),(125,'2021-03-16 02:42:16',5,5,'用户名5','评论内容5','回复内容5'),(126,'2021-03-16 02:42:16',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discussmendianxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussxiaochixinxi`
--

DROP TABLE IF EXISTS `discussxiaochixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussxiaochixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='小吃信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussxiaochixinxi`
--

LOCK TABLES `discussxiaochixinxi` WRITE;
/*!40000 ALTER TABLE `discussxiaochixinxi` DISABLE KEYS */;
INSERT INTO `discussxiaochixinxi` VALUES (111,'2021-03-16 02:42:16',1,1,'用户名1','评论内容1','回复内容1'),(112,'2021-03-16 02:42:16',2,2,'用户名2','评论内容2','回复内容2'),(113,'2021-03-16 02:42:16',3,3,'用户名3','评论内容3','回复内容3'),(114,'2021-03-16 02:42:16',4,4,'用户名4','评论内容4','回复内容4'),(115,'2021-03-16 02:42:16',5,5,'用户名5','评论内容5','回复内容5'),(116,'2021-03-16 02:42:16',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discussxiaochixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mendianxinxi`
--

DROP TABLE IF EXISTS `mendianxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mendianxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mendianbianhao` varchar(200) NOT NULL COMMENT '门店编号',
  `mendianmingcheng` varchar(200) NOT NULL COMMENT '门店名称',
  `mendiandizhi` varchar(200) DEFAULT NULL COMMENT '门店地址',
  `lianxiren` varchar(200) DEFAULT NULL COMMENT '联系人',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `mendiantupian` varchar(200) DEFAULT NULL COMMENT '门店图片',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mendianbianhao` (`mendianbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='门店信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mendianxinxi`
--

LOCK TABLES `mendianxinxi` WRITE;
/*!40000 ALTER TABLE `mendianxinxi` DISABLE KEYS */;
INSERT INTO `mendianxinxi` VALUES (31,'2021-03-16 02:42:15','门店编号1','门店名称1','门店地址1','联系人1','13823888881','http://localhost:8080/jspmh50w9/upload/mendianxinxi_mendiantupian1.jpg','2021-03-16',1,1),(32,'2021-03-16 02:42:15','门店编号2','门店名称2','门店地址2','联系人2','13823888882','http://localhost:8080/jspmh50w9/upload/mendianxinxi_mendiantupian2.jpg','2021-03-16',2,2),(33,'2021-03-16 02:42:15','门店编号3','门店名称3','门店地址3','联系人3','13823888883','http://localhost:8080/jspmh50w9/upload/mendianxinxi_mendiantupian3.jpg','2021-03-16',3,3),(34,'2021-03-16 02:42:15','门店编号4','门店名称4','门店地址4','联系人4','13823888884','http://localhost:8080/jspmh50w9/upload/mendianxinxi_mendiantupian4.jpg','2021-03-16',4,4),(35,'2021-03-16 02:42:15','门店编号5','门店名称5','门店地址5','联系人5','13823888885','http://localhost:8080/jspmh50w9/upload/mendianxinxi_mendiantupian5.jpg','2021-03-16',5,5),(36,'2021-03-16 02:42:15','门店编号6','门店名称6','门店地址6','联系人6','13823888886','http://localhost:8080/jspmh50w9/upload/mendianxinxi_mendiantupian6.jpg','2021-03-16',6,6);
/*!40000 ALTER TABLE `mendianxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'xiaochixinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-03-16 02:42:16');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xiaochileixing`
--

DROP TABLE IF EXISTS `xiaochileixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xiaochileixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xiaochileixing` varchar(200) NOT NULL COMMENT '小吃类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='小吃类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xiaochileixing`
--

LOCK TABLES `xiaochileixing` WRITE;
/*!40000 ALTER TABLE `xiaochileixing` DISABLE KEYS */;
INSERT INTO `xiaochileixing` VALUES (51,'2021-03-16 02:42:15','小吃类型1'),(52,'2021-03-16 02:42:15','小吃类型2'),(53,'2021-03-16 02:42:15','小吃类型3'),(54,'2021-03-16 02:42:15','小吃类型4'),(55,'2021-03-16 02:42:15','小吃类型5'),(56,'2021-03-16 02:42:15','小吃类型6');
/*!40000 ALTER TABLE `xiaochileixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xiaochixinxi`
--

DROP TABLE IF EXISTS `xiaochixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xiaochixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xinxibianhao` varchar(200) NOT NULL COMMENT '信息编号',
  `mendianmingcheng` varchar(200) DEFAULT NULL COMMENT '门店名称',
  `xiaochimingcheng` varchar(200) NOT NULL COMMENT '小吃名称',
  `xiaochileixing` varchar(200) DEFAULT NULL COMMENT '小吃类型',
  `jianjie` longtext COMMENT '简介',
  `meishitupian` varchar(200) DEFAULT NULL COMMENT '美食图片',
  `shangjiariqi` date DEFAULT NULL COMMENT '上架日期',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xinxibianhao` (`xinxibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='小吃信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xiaochixinxi`
--

LOCK TABLES `xiaochixinxi` WRITE;
/*!40000 ALTER TABLE `xiaochixinxi` DISABLE KEYS */;
INSERT INTO `xiaochixinxi` VALUES (21,'2021-03-16 02:42:15','信息编号1','门店名称1','小吃名称1','小吃类型1','简介1','http://localhost:8080/jspmh50w9/upload/xiaochixinxi_meishitupian1.jpg','2021-03-16',1,1,'2021-03-16 10:42:15',1,99.9),(22,'2021-03-16 02:42:15','信息编号2','门店名称2','小吃名称2','小吃类型2','简介2','http://localhost:8080/jspmh50w9/upload/xiaochixinxi_meishitupian2.jpg','2021-03-16',2,2,'2021-03-16 10:42:15',2,99.9),(23,'2021-03-16 02:42:15','信息编号3','门店名称3','小吃名称3','小吃类型3','简介3','http://localhost:8080/jspmh50w9/upload/xiaochixinxi_meishitupian3.jpg','2021-03-16',3,3,'2021-03-16 10:42:15',3,99.9),(24,'2021-03-16 02:42:15','信息编号4','门店名称4','小吃名称4','小吃类型4','简介4','http://localhost:8080/jspmh50w9/upload/xiaochixinxi_meishitupian4.jpg','2021-03-16',4,4,'2021-03-16 10:42:15',4,99.9),(25,'2021-03-16 02:42:15','信息编号5','门店名称5','小吃名称5','小吃类型5','简介5','http://localhost:8080/jspmh50w9/upload/xiaochixinxi_meishitupian5.jpg','2021-03-16',5,5,'2021-03-16 10:42:15',5,99.9),(26,'2021-03-16 02:42:15','信息编号6','门店名称6','小吃名称6','小吃类型6','简介6','http://localhost:8080/jspmh50w9/upload/xiaochixinxi_meishitupian6.jpg','2021-03-16',6,6,'2021-03-16 10:42:15',6,99.9);
/*!40000 ALTER TABLE `xiaochixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gerenzhanghao` varchar(200) NOT NULL COMMENT '个人账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `shenfenzhenghaoma` varchar(200) DEFAULT NULL COMMENT '身份证号码',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `xiangpian` varchar(200) DEFAULT NULL COMMENT '相片',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gerenzhanghao` (`gerenzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-03-16 02:42:15','用户1','123456','姓名1','男',1,'440300199101010001','13823888881','http://localhost:8080/jspmh50w9/upload/yonghu_xiangpian1.jpg',100),(12,'2021-03-16 02:42:15','用户2','123456','姓名2','男',2,'440300199202020002','13823888882','http://localhost:8080/jspmh50w9/upload/yonghu_xiangpian2.jpg',100),(13,'2021-03-16 02:42:15','用户3','123456','姓名3','男',3,'440300199303030003','13823888883','http://localhost:8080/jspmh50w9/upload/yonghu_xiangpian3.jpg',100),(14,'2021-03-16 02:42:15','用户4','123456','姓名4','男',4,'440300199404040004','13823888884','http://localhost:8080/jspmh50w9/upload/yonghu_xiangpian4.jpg',100),(15,'2021-03-16 02:42:15','用户5','123456','姓名5','男',5,'440300199505050005','13823888885','http://localhost:8080/jspmh50w9/upload/yonghu_xiangpian5.jpg',100),(16,'2021-03-16 02:42:15','用户6','123456','姓名6','男',6,'440300199606060006','13823888886','http://localhost:8080/jspmh50w9/upload/yonghu_xiangpian6.jpg',100);
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuyuexinxi`
--

DROP TABLE IF EXISTS `yuyuexinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuyuexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuyuebianhao` varchar(200) NOT NULL COMMENT '预约编号',
  `mendianmingcheng` varchar(200) DEFAULT NULL COMMENT '门店名称',
  `mendiandizhi` varchar(200) DEFAULT NULL COMMENT '门店地址',
  `yuyuezhuangtai` varchar(200) DEFAULT NULL COMMENT '预约状态',
  `gerenzhanghao` varchar(200) DEFAULT NULL COMMENT '个人账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shenqingriqi` date DEFAULT NULL COMMENT '申请日期',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yuyuebianhao` (`yuyuebianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='预约信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuyuexinxi`
--

LOCK TABLES `yuyuexinxi` WRITE;
/*!40000 ALTER TABLE `yuyuexinxi` DISABLE KEYS */;
INSERT INTO `yuyuexinxi` VALUES (41,'2021-03-16 02:42:15','预约编号1','门店名称1','门店地址1','打包','个人账号1','姓名1','2021-03-16','是',''),(42,'2021-03-16 02:42:15','预约编号2','门店名称2','门店地址2','打包','个人账号2','姓名2','2021-03-16','是',''),(43,'2021-03-16 02:42:15','预约编号3','门店名称3','门店地址3','打包','个人账号3','姓名3','2021-03-16','是',''),(44,'2021-03-16 02:42:15','预约编号4','门店名称4','门店地址4','打包','个人账号4','姓名4','2021-03-16','是',''),(45,'2021-03-16 02:42:15','预约编号5','门店名称5','门店地址5','打包','个人账号5','姓名5','2021-03-16','是',''),(46,'2021-03-16 02:42:15','预约编号6','门店名称6','门店地址6','打包','个人账号6','姓名6','2021-03-16','是','');
/*!40000 ALTER TABLE `yuyuexinxi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-16 14:40:45
