/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - dianshangyingyong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`dianshangyingyong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `dianshangyingyong`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(20) NOT NULL COMMENT '创建用户',
  `address_name` varchar(200) NOT NULL COMMENT '收货人 ',
  `address_phone` varchar(200) NOT NULL COMMENT '电话 ',
  `address_dizhi` varchar(200) NOT NULL COMMENT '地址 ',
  `isdefault_types` int(11) NOT NULL COMMENT '是否默认地址 ',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='收货地址';

/*Data for the table `address` */

insert  into `address`(`id`,`yonghu_id`,`address_name`,`address_phone`,`address_dizhi`,`isdefault_types`,`insert_time`,`update_time`,`create_time`) values (1,3,'收货人1','17703786901','地址1',1,'2022-04-20 16:04:58','2022-04-20 16:04:58','2022-04-20 16:04:58'),(2,1,'收货人2','17703786902','地址2',1,'2022-04-20 16:04:58','2022-04-20 16:04:58','2022-04-20 16:04:58'),(3,3,'收货人3','17703786903','地址3',1,'2022-04-20 16:04:58','2022-04-20 16:04:58','2022-04-20 16:04:58'),(4,3,'收货人4','17703786904','地址4',1,'2022-04-20 16:04:58','2022-04-20 16:04:58','2022-04-20 16:04:58'),(5,2,'收货人5','17703786905','地址5',1,'2022-04-20 16:04:58','2022-04-20 16:04:58','2022-04-20 16:04:58');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '所属用户',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='购物车';

/*Data for the table `cart` */

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/dianshangyingyong/upload/config1.jpg'),(2,'轮播图2','http://localhost:8080/dianshangyingyong/upload/config2.jpg'),(3,'轮播图3','http://localhost:8080/dianshangyingyong/upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'jifen_types','类型',1,'消费',NULL,NULL,'2022-04-20 16:04:54'),(2,'jifen_types','类型',2,'增加',NULL,NULL,'2022-04-20 16:04:54'),(3,'isdefault_types','是否默认地址',1,'否',NULL,NULL,'2022-04-20 16:04:54'),(4,'isdefault_types','是否默认地址',2,'是',NULL,NULL,'2022-04-20 16:04:54'),(5,'shangxia_types','上下架',1,'上架',NULL,NULL,'2022-04-20 16:04:54'),(6,'shangxia_types','上下架',2,'下架',NULL,NULL,'2022-04-20 16:04:54'),(7,'shangpin_types','商品类型',1,'商品类型1',NULL,NULL,'2022-04-20 16:04:54'),(8,'shangpin_types','商品类型',2,'商品类型2',NULL,NULL,'2022-04-20 16:04:54'),(9,'shangpin_types','商品类型',3,'商品类型3',NULL,NULL,'2022-04-20 16:04:54'),(10,'shangpin_types','商品类型',4,'商品类型4',NULL,NULL,'2022-04-20 16:04:54'),(11,'shangpin_order_types','订单类型',1,'已支付',NULL,NULL,'2022-04-20 16:04:55'),(12,'shangpin_order_types','订单类型',2,'退款',NULL,NULL,'2022-04-20 16:04:55'),(13,'shangpin_order_types','订单类型',3,'已发货',NULL,NULL,'2022-04-20 16:04:55'),(14,'shangpin_order_types','订单类型',4,'已收货',NULL,NULL,'2022-04-20 16:04:55'),(15,'shangpin_order_types','订单类型',5,'已评价',NULL,NULL,'2022-04-20 16:04:55'),(16,'shangpin_order_payment_types','订单支付类型',1,'现金',NULL,NULL,'2022-04-20 16:04:55'),(17,'shangpin_order_payment_types','订单支付类型',2,'积分',NULL,NULL,'2022-04-20 16:04:55'),(18,'shangpin_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2022-04-20 16:04:55'),(19,'sex_types','性别类型',1,'男',NULL,NULL,'2022-04-20 16:04:55'),(20,'sex_types','性别类型',2,'女',NULL,NULL,'2022-04-20 16:04:55'),(21,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2022-04-20 16:04:55'),(22,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2022-04-20 16:04:55'),(23,'news_types','公告类型',3,'活动信息',NULL,NULL,'2022-04-20 16:04:55'),(24,'huiyuandengji_types','会员等级类型',1,'青铜会员',NULL,'0.98','2022-04-20 16:04:55'),(25,'huiyuandengji_types','会员等级类型',2,'白银会员',NULL,'0.96','2022-04-20 16:04:55'),(26,'huiyuandengji_types','会员等级类型',3,'黄金会员',NULL,'0.94','2022-04-20 16:04:55'),(27,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2022-04-20 16:04:55'),(28,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2022-04-20 16:04:55');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',3,NULL,'发布内容1',NULL,1,'2022-04-20 16:04:58','2022-04-20 16:04:58','2022-04-20 16:04:58'),(2,'帖子标题2',1,NULL,'发布内容2',NULL,1,'2022-04-20 16:04:58','2022-04-20 16:04:58','2022-04-20 16:04:58'),(3,'帖子标题3',2,NULL,'发布内容3',NULL,1,'2022-04-20 16:04:58','2022-04-20 16:04:58','2022-04-20 16:04:58'),(4,'帖子标题4',3,NULL,'发布内容4',NULL,1,'2022-04-20 16:04:58','2022-04-20 16:04:58','2022-04-20 16:04:58'),(5,'帖子标题5',2,NULL,'发布内容5',NULL,1,'2022-04-20 16:04:58','2022-04-20 16:04:58','2022-04-20 16:04:58'),(6,NULL,1,NULL,'评论13123',5,2,'2022-04-20 16:08:23',NULL,'2022-04-20 16:08:23'),(7,NULL,NULL,1,'管理评论2312',5,2,'2022-04-20 16:08:53',NULL,'2022-04-20 16:08:53');

/*Table structure for table `jifenjilu` */

DROP TABLE IF EXISTS `jifenjilu`;

CREATE TABLE `jifenjilu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户姓名 ',
  `jifenjilu_name` varchar(200) DEFAULT NULL COMMENT '原因 ',
  `jifenjilu_number` decimal(10,2) DEFAULT NULL COMMENT '积分数量 ',
  `jifen_types` int(11) DEFAULT NULL COMMENT '类型 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '插入时间  ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='积分记录';

/*Data for the table `jifenjilu` */

insert  into `jifenjilu`(`id`,`yonghu_id`,`jifenjilu_name`,`jifenjilu_number`,`jifen_types`,`insert_time`,`create_time`) values (1,1,'购买 商品名称5 1 个 花费金额 433.57 获得积分10.0','10.00',2,'2022-04-20 16:08:07','2022-04-20 16:08:07'),(2,1,'购买 商品名称1 1 个 花费金额 337.78 获得积分461.0','461.00',2,'2022-04-20 16:08:07','2022-04-20 16:08:07'),(3,1,'购买 商品名称2 1 个 花费金额 247.87 获得积分161.0','161.00',2,'2022-04-20 16:08:07','2022-04-20 16:08:07'),(4,1,'退款已购买的商品名称5 1 个 增加的 10.0 积分','433.57',1,'2022-04-20 16:08:13','2022-04-20 16:08:13'),(5,1,'消费 商品名称2 1 个 花费积分 247.87','247.87',1,'2022-04-20 16:13:23','2022-04-20 16:13:23');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',2,'http://localhost:8080/dianshangyingyong/upload/news1.jpg','2022-04-20 16:04:58','公告详情1','2022-04-20 16:04:58'),(2,'公告标题2',1,'http://localhost:8080/dianshangyingyong/upload/news2.jpg','2022-04-20 16:04:58','公告详情2','2022-04-20 16:04:58'),(3,'公告标题3',1,'http://localhost:8080/dianshangyingyong/upload/news3.jpg','2022-04-20 16:04:58','公告详情3','2022-04-20 16:04:58'),(4,'公告标题4',2,'http://localhost:8080/dianshangyingyong/upload/news4.jpg','2022-04-20 16:04:58','公告详情4','2022-04-20 16:04:58'),(5,'公告标题5',2,'http://localhost:8080/dianshangyingyong/upload/news5.jpg','2022-04-20 16:04:58','公告详情5','2022-04-20 16:04:58');

/*Table structure for table `shangpin` */

DROP TABLE IF EXISTS `shangpin`;

CREATE TABLE `shangpin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shangpin_uuid_number` varchar(200) DEFAULT NULL COMMENT '商品编号  Search111 ',
  `shangpin_name` varchar(200) DEFAULT NULL COMMENT '商品名称  Search111 ',
  `shangpin_photo` varchar(200) DEFAULT NULL COMMENT '商品照片',
  `shangpin_types` int(11) DEFAULT NULL COMMENT '商品类型 Search111',
  `shangpin_kucun_number` int(11) DEFAULT NULL COMMENT '商品库存',
  `shangpin_price` int(11) DEFAULT NULL COMMENT '购买获得积分 ',
  `shangpin_old_money` decimal(10,2) DEFAULT NULL COMMENT '商品原价 ',
  `shangpin_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价/积分 ',
  `shangpin_clicknum` int(11) DEFAULT NULL COMMENT '点击次数 ',
  `shangpin_content` text COMMENT '商品介绍 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `shangpin_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='商品';

/*Data for the table `shangpin` */

insert  into `shangpin`(`id`,`shangpin_uuid_number`,`shangpin_name`,`shangpin_photo`,`shangpin_types`,`shangpin_kucun_number`,`shangpin_price`,`shangpin_old_money`,`shangpin_new_money`,`shangpin_clicknum`,`shangpin_content`,`shangxia_types`,`shangpin_delete`,`create_time`) values (1,'165044189899311','商品名称1','http://localhost:8080/dianshangyingyong/upload/shangpin1.jpg',4,100,461,'889.50','337.78',303,'商品介绍1',1,1,'2022-04-20 16:04:58'),(2,'16504418989931','商品名称2','http://localhost:8080/dianshangyingyong/upload/shangpin2.jpg',2,100,161,'939.36','247.87',98,'商品介绍2',1,1,'2022-04-20 16:04:58'),(3,'165044189899319','商品名称3','http://localhost:8080/dianshangyingyong/upload/shangpin3.jpg',3,103,334,'667.31','397.23',325,'商品介绍3',1,1,'2022-04-20 16:04:58'),(4,'16504418989930','商品名称4','http://localhost:8080/dianshangyingyong/upload/shangpin4.jpg',3,104,43,'838.35','271.67',284,'商品介绍4',2,1,'2022-04-20 16:04:58'),(5,'165044189899318','商品名称5','http://localhost:8080/dianshangyingyong/upload/shangpin5.jpg',2,100,10,'924.74','433.57',51,'商品介绍5',1,1,'2022-04-20 16:04:58');

/*Table structure for table `shangpin_collection` */

DROP TABLE IF EXISTS `shangpin_collection`;

CREATE TABLE `shangpin_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shangpin_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='商品收藏';

/*Data for the table `shangpin_collection` */

insert  into `shangpin_collection`(`id`,`shangpin_id`,`yonghu_id`,`shangpin_collection_types`,`insert_time`,`create_time`) values (1,1,1,1,'2022-04-20 16:04:58','2022-04-20 16:04:58'),(2,2,1,1,'2022-04-20 16:04:58','2022-04-20 16:04:58'),(3,3,3,1,'2022-04-20 16:04:58','2022-04-20 16:04:58'),(4,4,3,1,'2022-04-20 16:04:58','2022-04-20 16:04:58'),(5,5,1,1,'2022-04-20 16:04:58','2022-04-20 16:04:58');

/*Table structure for table `shangpin_commentback` */

DROP TABLE IF EXISTS `shangpin_commentback`;

CREATE TABLE `shangpin_commentback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shangpin_commentback_text` text COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='商品评价';

/*Data for the table `shangpin_commentback` */

insert  into `shangpin_commentback`(`id`,`shangpin_id`,`yonghu_id`,`shangpin_commentback_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,3,'评价内容1','2022-04-20 16:04:58','回复信息1','2022-04-20 16:04:58','2022-04-20 16:04:58'),(2,2,2,'评价内容2','2022-04-20 16:04:58','回复信息2','2022-04-20 16:04:58','2022-04-20 16:04:58'),(3,3,2,'评价内容3','2022-04-20 16:04:58','回复信息3','2022-04-20 16:04:58','2022-04-20 16:04:58'),(4,4,2,'评价内容4','2022-04-20 16:04:58','回复信息4','2022-04-20 16:04:58','2022-04-20 16:04:58'),(5,5,2,'评价内容5','2022-04-20 16:04:58','回复信息5','2022-04-20 16:04:58','2022-04-20 16:04:58'),(6,2,1,'购买完成后的 后台评论111','2022-04-20 16:12:38',NULL,NULL,'2022-04-20 16:12:38'),(7,1,1,'前台评论23','2022-04-20 16:12:56',NULL,NULL,'2022-04-20 16:12:56');

/*Table structure for table `shangpin_order` */

DROP TABLE IF EXISTS `shangpin_order`;

CREATE TABLE `shangpin_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号 Search111 ',
  `address_id` int(11) DEFAULT NULL COMMENT '收货地址 ',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `shangpin_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `shangpin_order_courier_name` varchar(200) DEFAULT NULL COMMENT '快递公司',
  `shangpin_order_courier_number` varchar(200) DEFAULT NULL COMMENT '订单快递单号',
  `shangpin_order_types` int(11) DEFAULT NULL COMMENT '订单类型 Search111 ',
  `shangpin_order_payment_types` int(11) DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='商品订单';

/*Data for the table `shangpin_order` */

insert  into `shangpin_order`(`id`,`shangpin_order_uuid_number`,`address_id`,`shangpin_id`,`yonghu_id`,`buy_number`,`shangpin_order_true_price`,`shangpin_order_courier_name`,`shangpin_order_courier_number`,`shangpin_order_types`,`shangpin_order_payment_types`,`insert_time`,`create_time`) values (1,'1650442086951',2,5,1,1,'433.57',NULL,NULL,2,1,'2022-04-20 16:08:07','2022-04-20 16:08:07'),(2,'1650442086951',2,1,1,1,'337.78','顺风','SF: 1121421254115231',5,1,'2022-04-20 16:08:07','2022-04-20 16:08:07'),(3,'1650442086951',2,2,1,1,'247.87','京东','JD:111231231231241251',5,1,'2022-04-20 16:08:07','2022-04-20 16:08:07'),(4,'1650442402925',2,2,1,1,'247.87',NULL,NULL,1,2,'2022-04-20 16:13:23','2022-04-20 16:13:23');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','用户','2koz31xes06n8r9pgw239zowlh8qxf72','2022-04-20 16:01:40','2022-04-20 17:12:43'),(2,1,'admin','users','管理员','kl8rs2r2l08hhx5kazf53evx9j4pqt4p','2022-04-20 16:08:38','2022-04-20 17:13:33');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2022-05-01 00:00:00');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `yonghu_sum_jifen` decimal(10,2) DEFAULT NULL COMMENT '总积分',
  `yonghu_new_jifen` decimal(10,2) DEFAULT NULL COMMENT '现积分',
  `huiyuandengji_types` int(11) DEFAULT NULL COMMENT '会员等级',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`new_money`,`yonghu_sum_jifen`,`yonghu_new_jifen`,`huiyuandengji_types`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199610232001','http://localhost:8080/dianshangyingyong/upload/yonghu1.jpg',1,'1@qq.com','10025.99','1442.95','545.91',1,'2022-04-20 16:04:58'),(2,'a2','123456','用户姓名2','17703786902','410224199610232002','http://localhost:8080/dianshangyingyong/upload/yonghu2.jpg',1,'2@qq.com','308.56','717.35','57.00',1,'2022-04-20 16:04:58'),(3,'a3','123456','用户姓名3','17703786903','410224199610232003','http://localhost:8080/dianshangyingyong/upload/yonghu3.jpg',2,'3@qq.com','896.88','745.38','81.86',1,'2022-04-20 16:04:58');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
