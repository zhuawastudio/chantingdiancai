/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - chantingdiancai
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`chantingdiancai` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `chantingdiancai`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614566611577 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1,'2021-01-25 11:42:19',1,'宇宙银河系金星1号','金某','13823888881','否'),(2,'2021-01-25 11:42:19',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-01-25 11:42:19',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-01-25 11:42:19',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-01-25 11:42:19',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-01-25 11:42:19',6,'宇宙银河系月球1号','月某','13823888886','是'),(1611546786896,'2021-01-25 11:53:06',1611546730956,'广东省梅州市梅县区新城街道丽景湾(嘉应西二巷)','1','12312312312','是'),(1614566611576,'2021-03-01 10:43:31',11,'陕西省西安市蓝田县葛牌镇五凤山','123','12312312311','否');

/*Table structure for table `caipin` */

DROP TABLE IF EXISTS `caipin`;

CREATE TABLE `caipin` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `hx_types` tinyint(4) DEFAULT NULL COMMENT '菜品名称',
  `money` decimal(10,2) DEFAULT NULL COMMENT '菜品单价 Search',
  `img_photo` varchar(200) DEFAULT NULL COMMENT '菜品图片',
  `caipin_content` varchar(200) DEFAULT NULL COMMENT '菜品描述',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='食物表';

/*Data for the table `caipin` */

insert  into `caipin`(`id`,`hx_types`,`money`,`img_photo`,`caipin_content`,`clicknum`) values (1,3,'30.00','http://localhost:8080/chantingdiancai/upload/1616677176001.jpg','<p>11111老好吃了</p>',NULL),(2,2,'20.00','http://localhost:8080/chantingdiancai/upload/1616677163192.jpg','<p>也挺好吃</p>',NULL),(5,1,'10.00','http://localhost:8080/chantingdiancai/upload/1615266843278.jpg','<p>非常好吃</p>',NULL),(7,5,'100.00','http://localhost:8080/chantingdiancai/upload/1616677131810.jpg','<p>1232132</p>',NULL);

/*Table structure for table `canzhuo` */

DROP TABLE IF EXISTS `canzhuo`;

CREATE TABLE `canzhuo` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(200) DEFAULT NULL COMMENT '餐桌名称 Search',
  `tableLocation` varchar(200) DEFAULT NULL COMMENT '餐桌位置',
  `sf_types` tinyint(4) DEFAULT NULL COMMENT '是否预定 Search',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='餐桌表';

/*Data for the table `canzhuo` */

insert  into `canzhuo`(`id`,`name`,`tableLocation`,`sf_types`) values (1,'1号餐桌','餐桌位置1',2),(2,'2号餐桌','餐桌位置2',2),(3,'3号餐桌','餐桌位置3',2),(4,'4号餐桌','餐桌位置4',1);

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` int(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616499729429 DEFAULT CHARSET=utf8 COMMENT='购物车表';

/*Data for the table `cart` */

insert  into `cart`(`id`,`addtime`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`) values (1616499729428,'2021-03-23 19:42:08','shangpinxinxi',11,33,'商品名称3','http://localhost:8080/sp-ssmv/upload/1616498421331.webp',1,99.9,0);

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` int(123) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616750223090 DEFAULT CHARSET=utf8 COMMENT='客服聊天表';

/*Data for the table `chat` */

insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (1616750223089,'2021-03-26 17:17:02',1,NULL,'111111',NULL,1);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/chantingdiancai/upload/1616724528763.jpg'),(2,'picture2','http://localhost:8080/chantingdiancai/upload/1616724552478.jpg'),(3,'picture3','http://localhost:8080/chantingdiancai/upload/1616724633152.jpg'),(4,'picture4','http://localhost:8080/chantingdiancai/upload/1616724648906.jpg'),(5,'picture5','http://localhost:8080/chantingdiancai/upload/1616724660864.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` tinyint(4) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'sex_types','性别',1,'男',NULL,'2021-02-25 11:41:54'),(2,'sex_types','性别',2,'女',NULL,'2021-02-25 11:41:54'),(3,'sf_types','是否',1,'是',NULL,'2021-02-25 11:41:54'),(4,'sf_types','是否',2,'否',NULL,'2021-02-25 11:41:54');

/*Table structure for table `dingdanxiangqing` */

DROP TABLE IF EXISTS `dingdanxiangqing`;

CREATE TABLE `dingdanxiangqing` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `odd` varchar(200) DEFAULT NULL COMMENT '订单号 Search',
  `hx_types` tinyint(4) DEFAULT NULL COMMENT '海鲜名称',
  `number` int(4) DEFAULT NULL COMMENT '数量 Search',
  `money` decimal(10,2) DEFAULT NULL COMMENT '单价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COMMENT='订单详情';

/*Data for the table `dingdanxiangqing` */

insert  into `dingdanxiangqing`(`id`,`odd`,`hx_types`,`number`,`money`) values (1,'1615207060567',1,7,'30.00'),(2,'1615207060567',2,18,'20.00'),(3,'1615207060567',3,29,'10.00'),(11,'1615258272174',1,3,'30.00'),(12,'1615258272174',2,2,'20.00'),(13,'1615258272174',3,23,'10.00'),(14,'1615260728415',1,30,'30.00'),(15,'1616743554501',3,3,'30.00'),(16,'1616743554501',5,5,'100.00'),(17,'1616750385629',1,1,'10.00'),(18,'1616750385629',2,2,'20.00'),(19,'1616750385629',5,5,'100.00'),(20,'1616750385629',6,6,'50.00'),(21,'1620365812257',2,2,'20.00'),(22,'1620365812257',3,3,'30.00'),(23,'1620365812257',5,5,'100.00'),(24,'1620366454527',1,1,'10.00'),(25,'1620366454527',2,2,'20.00'),(26,'1620366454527',3,3,'30.00'),(27,'1620366454527',5,5,'100.00'),(28,'1620366541616',1,1,'10.00'),(29,'1620366541616',5,5,'100.00'),(30,'1620367047486',2,2,'20.00'),(31,'1620367047486',3,3,'30.00');

/*Table structure for table `kuchuen` */

DROP TABLE IF EXISTS `kuchuen`;

CREATE TABLE `kuchuen` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(200) DEFAULT NULL COMMENT '菜品名称 Search',
  `number` int(4) DEFAULT NULL COMMENT '库存数量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='库存表';

/*Data for the table `kuchuen` */

insert  into `kuchuen`(`id`,`name`,`number`) values (1,'菜品1',0),(2,'菜品2',0),(3,'菜品3',0),(4,'菜品4',4),(5,'菜品5',0);

/*Table structure for table `liushui` */

DROP TABLE IF EXISTS `liushui`;

CREATE TABLE `liushui` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `odd` varchar(200) DEFAULT NULL COMMENT '订单号',
  `cz_types` tinyint(4) DEFAULT NULL COMMENT '餐桌名称',
  `yh_types` tinyint(4) DEFAULT NULL COMMENT '预定用户',
  `sf_types` tinyint(4) DEFAULT NULL COMMENT '是否支付 Search',
  `maxMoney` decimal(10,2) DEFAULT NULL COMMENT '总价',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '支付时间 Search',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='流水表';

/*Data for the table `liushui` */

insert  into `liushui`(`id`,`odd`,`cz_types`,`yh_types`,`sf_types`,`maxMoney`,`create_time`) values (18,'1616743554501',4,1,1,'500.00','2021-03-26 15:25:55'),(19,'1616750385629',4,1,1,'300.00','2021-04-27 17:19:46'),(20,'1620365812257',4,1,2,'500.00','2021-05-07 13:36:52'),(21,'1620366454527',4,1,2,'500.00','2021-05-07 13:47:50'),(22,'1620366541616',4,1,2,'500.00','2021-05-07 13:49:04'),(23,'1620367047486',4,1,2,'90.00','2021-05-07 13:57:31');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8 COMMENT='商品资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (111,'2021-01-25 11:42:19','标题1','简介1','http://localhost:8080/chantingdiancai/upload/1616724341543.jpg','<p><span style=\"color: rgb(96, 98, 102);\">内容1</span></p>'),(112,'2021-01-25 11:42:19','标题2','简介2','http://localhost:8080/chantingdiancai/upload/1616724431102.jpg','<p>内容2</p>'),(113,'2021-01-25 11:42:19','标题3','简介3','http://localhost:8080/chantingdiancai/upload/1616724461130.jpg','<p>内容3</p>'),(114,'2021-01-25 11:42:19','标题4','简介4','http://localhost:8080/chantingdiancai/upload/1616724473592.jpg','<p>内容4</p>');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` int(20) NOT NULL COMMENT '用户id',
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
) ENGINE=InnoDB AUTO_INCREMENT=1619156725219 DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`) values (1619156535251,'2021-04-23 13:42:15','202142313421357566456','caipin',1,7,'菜品4','http://localhost:8080/chantingdiancai/upload/1616677131810.jpg',1,100,100,100,100,1,'已支付','宇宙银河系金星1号'),(1619156624480,'2021-04-23 13:43:43','20214231343372546745','caipin',1,7,'菜品4','http://localhost:8080/chantingdiancai/upload/1616677131810.jpg',1,100,100,100,100,1,'已支付','宇宙银河系金星1号'),(1619156672572,'2021-04-23 13:44:32','202142313442664996595','caipin',1,7,'菜品4','http://localhost:8080/chantingdiancai/upload/1616677131810.jpg',1,100,100,100,100,1,'已支付','宇宙银河系金星1号'),(1619156724116,'2021-04-23 13:45:23','202142313452379789602','caipin',1,7,'菜品4','http://localhost:8080/chantingdiancai/upload/1616677131810.jpg',1,100,100,100,100,1,'已支付','宇宙银河系金星1号'),(1619156725218,'2021-04-23 13:45:24','202142313452442456127','caipin',1,7,'菜品4','http://localhost:8080/chantingdiancai/upload/1616677131810.jpg',1,100,100,100,100,1,'已支付','宇宙银河系金星1号');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` int(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619149891722 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1616750186150,'2021-03-26 17:16:25',1,2,'caipin','菜品2','http://localhost:8080/chantingdiancai/upload/1616677163192.jpg'),(1616750191544,'2021-03-26 17:16:30',1,1,'caipin','菜品3','http://localhost:8080/chantingdiancai/upload/1616677176001.jpg'),(1619149890090,'2021-04-23 11:51:29',1,5,'caipin','菜品1','http://localhost:8080/chantingdiancai/upload/1615266843278.jpg'),(1619149890101,'2021-04-23 11:51:30',1,5,'caipin','菜品1','http://localhost:8080/chantingdiancai/upload/1615266843278.jpg'),(1619149891236,'2021-04-23 11:51:30',1,5,'caipin','菜品1','http://localhost:8080/chantingdiancai/upload/1615266843278.jpg'),(1619149891721,'2021-04-23 11:51:31',1,5,'caipin','菜品1','http://localhost:8080/chantingdiancai/upload/1615266843278.jpg');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` int(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (5,1,'admin','users','管理员','de6a4m65mls9i419klhuir9fybv0z3md','2021-03-04 11:02:31','2021-05-07 14:52:38'),(6,1,'111','users','用户','xzl54eztam894kldf1t16t3xlntx270i','2021-03-13 19:35:22','2021-05-07 14:56:42');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) NOT NULL DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-03-01 00:00:00');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(200) DEFAULT NULL COMMENT '名称  Search111',
  `username` varchar(255) DEFAULT NULL COMMENT '账号',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `img_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` tinyint(4) DEFAULT NULL COMMENT '性别  Search111',
  `phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `role` varchar(255) DEFAULT NULL COMMENT '身份',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`name`,`username`,`password`,`img_photo`,`sex_types`,`phone`,`role`) values (1,'小金','111','111','http://localhost:8080/chantingdiancai/upload/1615259583314.jpg',1,'17796312333','用户'),(2,'小札','222','222','http://localhost:8080/chantingdiancai/upload/1615259866641.jpg',2,'12312312333','用户');

/*Table structure for table `yudingcanzhuo` */

DROP TABLE IF EXISTS `yudingcanzhuo`;

CREATE TABLE `yudingcanzhuo` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `cz_types` tinyint(4) DEFAULT NULL COMMENT '餐桌名称',
  `yh_types` tinyint(4) DEFAULT NULL COMMENT '预定用户',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '预定时间 Search',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='预定餐桌表';

/*Data for the table `yudingcanzhuo` */

insert  into `yudingcanzhuo`(`id`,`cz_types`,`yh_types`,`create_time`) values (1,4,1,'2021-05-07 13:36:25');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
