/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmeaog5
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmeaog5` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmeaog5`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmeaog5/upload/1617257642350.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/ssmeaog5/upload/1617257612931.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/ssmeaog5/upload/1617257620340.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `discussjingdianxinxi` */

DROP TABLE IF EXISTS `discussjingdianxinxi`;

CREATE TABLE `discussjingdianxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617258133814 DEFAULT CHARSET=utf8 COMMENT='景点信息评论表';

/*Data for the table `discussjingdianxinxi` */

insert  into `discussjingdianxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (131,'2021-04-01 14:03:41',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discussjingdianxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (132,'2021-04-01 14:03:41',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discussjingdianxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (133,'2021-04-01 14:03:41',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discussjingdianxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (134,'2021-04-01 14:03:41',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discussjingdianxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (135,'2021-04-01 14:03:41',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discussjingdianxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (136,'2021-04-01 14:03:41',6,6,'用户名6','评论内容6','回复内容6');
insert  into `discussjingdianxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (1617258133813,'2021-04-01 14:22:12',1617257469228,1617257699063,'1','很不错的景点，值得一去',NULL);

/*Table structure for table `discussjiudianxinxi` */

DROP TABLE IF EXISTS `discussjiudianxinxi`;

CREATE TABLE `discussjiudianxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8 COMMENT='酒店信息评论表';

/*Data for the table `discussjiudianxinxi` */

insert  into `discussjiudianxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (141,'2021-04-01 14:03:41',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discussjiudianxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (142,'2021-04-01 14:03:41',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discussjiudianxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (143,'2021-04-01 14:03:41',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discussjiudianxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (144,'2021-04-01 14:03:41',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discussjiudianxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (145,'2021-04-01 14:03:41',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discussjiudianxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (146,'2021-04-01 14:03:41',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `discusskefangxinxi` */

DROP TABLE IF EXISTS `discusskefangxinxi`;

CREATE TABLE `discusskefangxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8 COMMENT='客房信息评论表';

/*Data for the table `discusskefangxinxi` */

insert  into `discusskefangxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (151,'2021-04-01 14:03:41',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discusskefangxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (152,'2021-04-01 14:03:41',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discusskefangxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (153,'2021-04-01 14:03:41',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discusskefangxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (154,'2021-04-01 14:03:41',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discusskefangxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (155,'2021-04-01 14:03:41',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discusskefangxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (156,'2021-04-01 14:03:41',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `goupiaoxinxi` */

DROP TABLE IF EXISTS `goupiaoxinxi`;

CREATE TABLE `goupiaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `jingdianmingcheng` varchar(200) DEFAULT NULL COMMENT '景点名称',
  `jingdianfenlei` varchar(200) DEFAULT NULL COMMENT '景点分类',
  `jingdiandizhi` varchar(200) DEFAULT NULL COMMENT '景点地址',
  `menpiaojiage` int(11) DEFAULT NULL COMMENT '门票价格',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `zongjine` varchar(200) DEFAULT NULL COMMENT '总金额',
  `goupiaoriqi` date DEFAULT NULL COMMENT '购票日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1617257807097 DEFAULT CHARSET=utf8 COMMENT='购票信息';

/*Data for the table `goupiaoxinxi` */

insert  into `goupiaoxinxi`(`id`,`addtime`,`dingdanbianhao`,`jingdianmingcheng`,`jingdianfenlei`,`jingdiandizhi`,`menpiaojiage`,`shuliang`,`zongjine`,`goupiaoriqi`,`yonghuming`,`shenfenzheng`,`lianxidianhua`,`sfsh`,`shhf`,`ispay`) values (41,'2021-04-01 14:03:41','订单编号1','景点名称1','景点分类1','景点地址1',1,1,'总金额1','2021-04-01','用户名1','身份证1','联系电话1','是','','未支付');
insert  into `goupiaoxinxi`(`id`,`addtime`,`dingdanbianhao`,`jingdianmingcheng`,`jingdianfenlei`,`jingdiandizhi`,`menpiaojiage`,`shuliang`,`zongjine`,`goupiaoriqi`,`yonghuming`,`shenfenzheng`,`lianxidianhua`,`sfsh`,`shhf`,`ispay`) values (42,'2021-04-01 14:03:41','订单编号2','景点名称2','景点分类2','景点地址2',2,2,'总金额2','2021-04-01','用户名2','身份证2','联系电话2','是','','未支付');
insert  into `goupiaoxinxi`(`id`,`addtime`,`dingdanbianhao`,`jingdianmingcheng`,`jingdianfenlei`,`jingdiandizhi`,`menpiaojiage`,`shuliang`,`zongjine`,`goupiaoriqi`,`yonghuming`,`shenfenzheng`,`lianxidianhua`,`sfsh`,`shhf`,`ispay`) values (43,'2021-04-01 14:03:41','订单编号3','景点名称3','景点分类3','景点地址3',3,3,'总金额3','2021-04-01','用户名3','身份证3','联系电话3','是','','未支付');
insert  into `goupiaoxinxi`(`id`,`addtime`,`dingdanbianhao`,`jingdianmingcheng`,`jingdianfenlei`,`jingdiandizhi`,`menpiaojiage`,`shuliang`,`zongjine`,`goupiaoriqi`,`yonghuming`,`shenfenzheng`,`lianxidianhua`,`sfsh`,`shhf`,`ispay`) values (44,'2021-04-01 14:03:41','订单编号4','景点名称4','景点分类4','景点地址4',4,4,'总金额4','2021-04-01','用户名4','身份证4','联系电话4','是','','未支付');
insert  into `goupiaoxinxi`(`id`,`addtime`,`dingdanbianhao`,`jingdianmingcheng`,`jingdianfenlei`,`jingdiandizhi`,`menpiaojiage`,`shuliang`,`zongjine`,`goupiaoriqi`,`yonghuming`,`shenfenzheng`,`lianxidianhua`,`sfsh`,`shhf`,`ispay`) values (45,'2021-04-01 14:03:41','订单编号5','景点名称5','景点分类5','景点地址5',5,5,'总金额5','2021-04-01','用户名5','身份证5','联系电话5','是','','未支付');
insert  into `goupiaoxinxi`(`id`,`addtime`,`dingdanbianhao`,`jingdianmingcheng`,`jingdianfenlei`,`jingdiandizhi`,`menpiaojiage`,`shuliang`,`zongjine`,`goupiaoriqi`,`yonghuming`,`shenfenzheng`,`lianxidianhua`,`sfsh`,`shhf`,`ispay`) values (46,'2021-04-01 14:03:41','订单编号6','景点名称6','景点分类6','景点地址6',6,6,'总金额6','2021-04-01','用户名6','身份证6','联系电话6','是','','未支付');
insert  into `goupiaoxinxi`(`id`,`addtime`,`dingdanbianhao`,`jingdianmingcheng`,`jingdianfenlei`,`jingdiandizhi`,`menpiaojiage`,`shuliang`,`zongjine`,`goupiaoriqi`,`yonghuming`,`shenfenzheng`,`lianxidianhua`,`sfsh`,`shhf`,`ispay`) values (1617257807096,'2021-04-01 14:16:46','2021411416425285801','杭州西湖','古代遗址','杭州市西湖区龙井路1号',100,2,'200','2021-04-01','1','123456789789456123','12312312312','是','ok','已支付');

/*Table structure for table `jingdianfenlei` */

DROP TABLE IF EXISTS `jingdianfenlei`;

CREATE TABLE `jingdianfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jingdianfenlei` varchar(200) NOT NULL COMMENT '景点分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jingdianfenlei` (`jingdianfenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1617257413396 DEFAULT CHARSET=utf8 COMMENT='景点分类';

/*Data for the table `jingdianfenlei` */

insert  into `jingdianfenlei`(`id`,`addtime`,`jingdianfenlei`) values (21,'2021-04-01 14:03:41','景点分类1');
insert  into `jingdianfenlei`(`id`,`addtime`,`jingdianfenlei`) values (22,'2021-04-01 14:03:41','景点分类2');
insert  into `jingdianfenlei`(`id`,`addtime`,`jingdianfenlei`) values (23,'2021-04-01 14:03:41','景点分类3');
insert  into `jingdianfenlei`(`id`,`addtime`,`jingdianfenlei`) values (24,'2021-04-01 14:03:41','景点分类4');
insert  into `jingdianfenlei`(`id`,`addtime`,`jingdianfenlei`) values (25,'2021-04-01 14:03:41','景点分类5');
insert  into `jingdianfenlei`(`id`,`addtime`,`jingdianfenlei`) values (26,'2021-04-01 14:03:41','景点分类6');
insert  into `jingdianfenlei`(`id`,`addtime`,`jingdianfenlei`) values (1617257407868,'2021-04-01 14:10:07','古代遗址');
insert  into `jingdianfenlei`(`id`,`addtime`,`jingdianfenlei`) values (1617257413395,'2021-04-01 14:10:13','主题公园');

/*Table structure for table `jingdianxinxi` */

DROP TABLE IF EXISTS `jingdianxinxi`;

CREATE TABLE `jingdianxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jingdianmingcheng` varchar(200) NOT NULL COMMENT '景点名称',
  `jingdianfenlei` varchar(200) NOT NULL COMMENT '景点分类',
  `jingdiantupian` varchar(200) DEFAULT NULL COMMENT '景点图片',
  `jingdiandengji` varchar(200) DEFAULT NULL COMMENT '景点等级',
  `jingdiandizhi` varchar(200) DEFAULT NULL COMMENT '景点地址',
  `menpiaojiage` int(11) DEFAULT NULL COMMENT '门票价格',
  `kaifangshijian` varchar(200) DEFAULT NULL COMMENT '开放时间',
  `zhuyishixiang` longtext COMMENT '注意事项',
  `jingdianjieshao` longtext COMMENT '景点介绍',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617257469229 DEFAULT CHARSET=utf8 COMMENT='景点信息';

/*Data for the table `jingdianxinxi` */

insert  into `jingdianxinxi`(`id`,`addtime`,`jingdianmingcheng`,`jingdianfenlei`,`jingdiantupian`,`jingdiandengji`,`jingdiandizhi`,`menpiaojiage`,`kaifangshijian`,`zhuyishixiang`,`jingdianjieshao`,`clicktime`,`clicknum`) values (31,'2021-04-01 14:03:41','景点名称1','景点分类1','http://localhost:8080/ssmeaog5/upload/1617257197328.jpg','A','景点地址1',1,'开放时间1','注意事项1','<p>景点介绍1</p>','2021-04-01 14:06:28',2);
insert  into `jingdianxinxi`(`id`,`addtime`,`jingdianmingcheng`,`jingdianfenlei`,`jingdiantupian`,`jingdiandengji`,`jingdiandizhi`,`menpiaojiage`,`kaifangshijian`,`zhuyishixiang`,`jingdianjieshao`,`clicktime`,`clicknum`) values (32,'2021-04-01 14:03:41','景点名称2','景点分类2','http://localhost:8080/ssmeaog5/upload/1617257205803.jpg','A','景点地址2',2,'开放时间2','注意事项2','<p>景点介绍2</p>','2021-04-01 14:06:40',3);
insert  into `jingdianxinxi`(`id`,`addtime`,`jingdianmingcheng`,`jingdianfenlei`,`jingdiantupian`,`jingdiandengji`,`jingdiandizhi`,`menpiaojiage`,`kaifangshijian`,`zhuyishixiang`,`jingdianjieshao`,`clicktime`,`clicknum`) values (33,'2021-04-01 14:03:41','景点名称3','景点分类3','http://localhost:8080/ssmeaog5/upload/1617257216014.jpg','A','景点地址3',3,'开放时间3','注意事项3','<p>景点介绍3</p>','2021-04-01 14:06:49',4);
insert  into `jingdianxinxi`(`id`,`addtime`,`jingdianmingcheng`,`jingdianfenlei`,`jingdiantupian`,`jingdiandengji`,`jingdiandizhi`,`menpiaojiage`,`kaifangshijian`,`zhuyishixiang`,`jingdianjieshao`,`clicktime`,`clicknum`) values (34,'2021-04-01 14:03:41','景点名称4','景点分类4','http://localhost:8080/ssmeaog5/upload/1617257225919.jpg','A','景点地址4',4,'开放时间4','注意事项4','<p>景点介绍4</p>','2021-04-01 14:07:00',5);
insert  into `jingdianxinxi`(`id`,`addtime`,`jingdianmingcheng`,`jingdianfenlei`,`jingdiantupian`,`jingdiandengji`,`jingdiandizhi`,`menpiaojiage`,`kaifangshijian`,`zhuyishixiang`,`jingdianjieshao`,`clicktime`,`clicknum`) values (35,'2021-04-01 14:03:41','景点名称5','景点分类5','http://localhost:8080/ssmeaog5/upload/1617257234442.jpg','A','景点地址5',5,'开放时间5','注意事项5','<p>景点介绍5</p>','2021-04-01 14:15:37',13);
insert  into `jingdianxinxi`(`id`,`addtime`,`jingdianmingcheng`,`jingdianfenlei`,`jingdiantupian`,`jingdiandengji`,`jingdiandizhi`,`menpiaojiage`,`kaifangshijian`,`zhuyishixiang`,`jingdianjieshao`,`clicktime`,`clicknum`) values (36,'2021-04-01 14:03:41','景点名称6','景点分类6','http://localhost:8080/ssmeaog5/upload/1617257242202.jpg','A','景点地址6',6,'开放时间6','注意事项6','<p>景点介绍6</p>','2021-04-01 14:07:18',7);
insert  into `jingdianxinxi`(`id`,`addtime`,`jingdianmingcheng`,`jingdianfenlei`,`jingdiantupian`,`jingdiandengji`,`jingdiandizhi`,`menpiaojiage`,`kaifangshijian`,`zhuyishixiang`,`jingdianjieshao`,`clicktime`,`clicknum`) values (1617257469228,'2021-04-01 14:11:08','杭州西湖','古代遗址','http://localhost:8080/ssmeaog5/upload/1617257424672.jpg','AAAAA','杭州市西湖区龙井路1号',100,'10:00-18:00','全程需佩戴口罩','<p>西湖景区总面积49平方公里，汇水面积为21.22平方公里，湖面面积为6.38平方公里。</p><p>西湖南、西、北三面环山，湖中白堤、苏堤、杨公堤、赵公堤将湖面分割成若干水面。西湖的湖体轮廓呈近椭圆形，湖底部较为平坦，湖泊平均水深为2.27米，最深约5米，最浅不到1米。湖泊天然地表水源是金沙涧、龙泓涧、赤山涧（慧因涧）、长桥溪四条溪流。西湖地处中国东南丘陵边缘和中亚热带北缘，年均太阳总辐射量在100—110千卡/平方厘米之间，日照时数1800—2100小时。&nbsp;</p><p>西湖有100多处公园景点，有“西湖十景”、“新西湖十景”、“三评西湖十景”之说，有60多处国家、省、市级重点文物保护单位和20多座博物馆，有断桥、雷峰塔、钱王祠、净慈寺、苏小小墓等景点。&nbsp;</p><p><img src=\"http://localhost:8080/ssmeaog5/upload/1617257466464.jpg\"></p>','2021-04-01 14:22:15',6);

/*Table structure for table `jiudianxinxi` */

DROP TABLE IF EXISTS `jiudianxinxi`;

CREATE TABLE `jiudianxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiudianmingcheng` varchar(200) NOT NULL COMMENT '酒店名称',
  `tupian` varchar(200) NOT NULL COMMENT '图片',
  `xingji` varchar(200) NOT NULL COMMENT '星级',
  `jiudianleixing` varchar(200) NOT NULL COMMENT '酒店类型',
  `jiudiandizhi` varchar(200) DEFAULT NULL COMMENT '酒店地址',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `jiudianjieshao` longtext COMMENT '酒店介绍',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617257524150 DEFAULT CHARSET=utf8 COMMENT='酒店信息';

/*Data for the table `jiudianxinxi` */

insert  into `jiudianxinxi`(`id`,`addtime`,`jiudianmingcheng`,`tupian`,`xingji`,`jiudianleixing`,`jiudiandizhi`,`lianxidianhua`,`jiudianjieshao`) values (51,'2021-04-01 14:03:41','酒店名称1','http://localhost:8080/ssmeaog5/upload/1617257256263.jpg','一星','民宿','酒店地址1','联系电话1','<p>酒店介绍1</p>');
insert  into `jiudianxinxi`(`id`,`addtime`,`jiudianmingcheng`,`tupian`,`xingji`,`jiudianleixing`,`jiudiandizhi`,`lianxidianhua`,`jiudianjieshao`) values (52,'2021-04-01 14:03:41','酒店名称2','http://localhost:8080/ssmeaog5/upload/jiudianxinxi_tupian2.jpg','一星','民宿','酒店地址2','联系电话2','酒店介绍2');
insert  into `jiudianxinxi`(`id`,`addtime`,`jiudianmingcheng`,`tupian`,`xingji`,`jiudianleixing`,`jiudiandizhi`,`lianxidianhua`,`jiudianjieshao`) values (53,'2021-04-01 14:03:41','酒店名称3','http://localhost:8080/ssmeaog5/upload/1617257264329.jpg','一星','民宿','酒店地址3','联系电话3','<p>酒店介绍3</p>');
insert  into `jiudianxinxi`(`id`,`addtime`,`jiudianmingcheng`,`tupian`,`xingji`,`jiudianleixing`,`jiudiandizhi`,`lianxidianhua`,`jiudianjieshao`) values (54,'2021-04-01 14:03:41','酒店名称4','http://localhost:8080/ssmeaog5/upload/1617257273916.jpg','一星','民宿','酒店地址4','联系电话4','<p>酒店介绍4</p>');
insert  into `jiudianxinxi`(`id`,`addtime`,`jiudianmingcheng`,`tupian`,`xingji`,`jiudianleixing`,`jiudiandizhi`,`lianxidianhua`,`jiudianjieshao`) values (55,'2021-04-01 14:03:41','酒店名称5','http://localhost:8080/ssmeaog5/upload/1617257294902.jpg','一星','民宿','酒店地址5','联系电话5','<p>酒店介绍5</p>');
insert  into `jiudianxinxi`(`id`,`addtime`,`jiudianmingcheng`,`tupian`,`xingji`,`jiudianleixing`,`jiudiandizhi`,`lianxidianhua`,`jiudianjieshao`) values (56,'2021-04-01 14:03:41','酒店名称6','http://localhost:8080/ssmeaog5/upload/1617257284551.jpg','一星','民宿','酒店地址6','联系电话6','<p>酒店介绍6</p>');
insert  into `jiudianxinxi`(`id`,`addtime`,`jiudianmingcheng`,`tupian`,`xingji`,`jiudianleixing`,`jiudiandizhi`,`lianxidianhua`,`jiudianjieshao`) values (1617257524149,'2021-04-01 14:12:03','万凯酒店西湖店','http://localhost:8080/ssmeaog5/upload/1617257485722.jpg','四星','连锁酒店','西湖区龙井路8号','0154-1234567','<p>是由杭州云舍酒店管理有限公司旗下的专业经济型酒店品牌，提倡在传统中发现时尚、感受温馨，万凯连锁追求安全与舒适，强调为住客提供安全、温馨的服务。西湖店的特色是在西湖景区中的特色时尚经济型酒店。</p><p><img src=\"http://localhost:8080/ssmeaog5/upload/1617257521778.jpg\"></p>');

/*Table structure for table `kefangleixing` */

DROP TABLE IF EXISTS `kefangleixing`;

CREATE TABLE `kefangleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kefangleixing` varchar(200) NOT NULL COMMENT '客房类型',
  PRIMARY KEY (`id`),
  UNIQUE KEY `kefangleixing` (`kefangleixing`)
) ENGINE=InnoDB AUTO_INCREMENT=1617257539764 DEFAULT CHARSET=utf8 COMMENT='客房类型';

/*Data for the table `kefangleixing` */

insert  into `kefangleixing`(`id`,`addtime`,`kefangleixing`) values (61,'2021-04-01 14:03:41','客房类型1');
insert  into `kefangleixing`(`id`,`addtime`,`kefangleixing`) values (62,'2021-04-01 14:03:41','客房类型2');
insert  into `kefangleixing`(`id`,`addtime`,`kefangleixing`) values (63,'2021-04-01 14:03:41','客房类型3');
insert  into `kefangleixing`(`id`,`addtime`,`kefangleixing`) values (64,'2021-04-01 14:03:41','客房类型4');
insert  into `kefangleixing`(`id`,`addtime`,`kefangleixing`) values (65,'2021-04-01 14:03:41','客房类型5');
insert  into `kefangleixing`(`id`,`addtime`,`kefangleixing`) values (66,'2021-04-01 14:03:41','客房类型6');
insert  into `kefangleixing`(`id`,`addtime`,`kefangleixing`) values (1617257533007,'2021-04-01 14:12:12','双人房');
insert  into `kefangleixing`(`id`,`addtime`,`kefangleixing`) values (1617257539763,'2021-04-01 14:12:19','标准套房');

/*Table structure for table `kefangxinxi` */

DROP TABLE IF EXISTS `kefangxinxi`;

CREATE TABLE `kefangxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kefangmingcheng` varchar(200) NOT NULL COMMENT '客房名称',
  `kefangleixing` varchar(200) NOT NULL COMMENT '客房类型',
  `kefangtupian` varchar(200) NOT NULL COMMENT '客房图片',
  `kefangsheshi` varchar(200) DEFAULT NULL COMMENT '客房设施',
  `kefangjiage` int(11) NOT NULL COMMENT '客房价格',
  `kefangzhuangtai` varchar(200) NOT NULL COMMENT '客房状态',
  `kefangjieshao` longtext COMMENT '客房介绍',
  `jiudianmingcheng` varchar(200) DEFAULT NULL COMMENT '酒店名称',
  `jiudianleixing` varchar(200) DEFAULT NULL COMMENT '酒店类型',
  `jiudiandizhi` varchar(200) DEFAULT NULL COMMENT '酒店地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617257587708 DEFAULT CHARSET=utf8 COMMENT='客房信息';

/*Data for the table `kefangxinxi` */

insert  into `kefangxinxi`(`id`,`addtime`,`kefangmingcheng`,`kefangleixing`,`kefangtupian`,`kefangsheshi`,`kefangjiage`,`kefangzhuangtai`,`kefangjieshao`,`jiudianmingcheng`,`jiudianleixing`,`jiudiandizhi`) values (71,'2021-04-01 14:03:41','客房名称1','客房类型1','http://localhost:8080/ssmeaog5/upload/kefangxinxi_kefangtupian1.jpg','客房设施1',1,'可预订','客房介绍1','酒店名称1','酒店类型1','酒店地址1');
insert  into `kefangxinxi`(`id`,`addtime`,`kefangmingcheng`,`kefangleixing`,`kefangtupian`,`kefangsheshi`,`kefangjiage`,`kefangzhuangtai`,`kefangjieshao`,`jiudianmingcheng`,`jiudianleixing`,`jiudiandizhi`) values (72,'2021-04-01 14:03:41','客房名称2','客房类型2','http://localhost:8080/ssmeaog5/upload/kefangxinxi_kefangtupian2.jpg','客房设施2',2,'可预订','客房介绍2','酒店名称2','酒店类型2','酒店地址2');
insert  into `kefangxinxi`(`id`,`addtime`,`kefangmingcheng`,`kefangleixing`,`kefangtupian`,`kefangsheshi`,`kefangjiage`,`kefangzhuangtai`,`kefangjieshao`,`jiudianmingcheng`,`jiudianleixing`,`jiudiandizhi`) values (73,'2021-04-01 14:03:41','客房名称3','客房类型3','http://localhost:8080/ssmeaog5/upload/kefangxinxi_kefangtupian3.jpg','客房设施3',3,'可预订','客房介绍3','酒店名称3','酒店类型3','酒店地址3');
insert  into `kefangxinxi`(`id`,`addtime`,`kefangmingcheng`,`kefangleixing`,`kefangtupian`,`kefangsheshi`,`kefangjiage`,`kefangzhuangtai`,`kefangjieshao`,`jiudianmingcheng`,`jiudianleixing`,`jiudiandizhi`) values (74,'2021-04-01 14:03:41','客房名称4','客房类型4','http://localhost:8080/ssmeaog5/upload/kefangxinxi_kefangtupian4.jpg','客房设施4',4,'可预订','客房介绍4','酒店名称4','酒店类型4','酒店地址4');
insert  into `kefangxinxi`(`id`,`addtime`,`kefangmingcheng`,`kefangleixing`,`kefangtupian`,`kefangsheshi`,`kefangjiage`,`kefangzhuangtai`,`kefangjieshao`,`jiudianmingcheng`,`jiudianleixing`,`jiudiandizhi`) values (75,'2021-04-01 14:03:41','客房名称5','客房类型5','http://localhost:8080/ssmeaog5/upload/1617257304636.jpg','客房设施5',5,'可预订','<p>客房介绍5</p>','酒店名称5','酒店类型5','酒店地址5');
insert  into `kefangxinxi`(`id`,`addtime`,`kefangmingcheng`,`kefangleixing`,`kefangtupian`,`kefangsheshi`,`kefangjiage`,`kefangzhuangtai`,`kefangjieshao`,`jiudianmingcheng`,`jiudianleixing`,`jiudiandizhi`) values (76,'2021-04-01 14:03:41','客房名称6','客房类型6','http://localhost:8080/ssmeaog5/upload/kefangxinxi_kefangtupian6.jpg','客房设施6',6,'可预订','客房介绍6','酒店名称6','酒店类型6','酒店地址6');
insert  into `kefangxinxi`(`id`,`addtime`,`kefangmingcheng`,`kefangleixing`,`kefangtupian`,`kefangsheshi`,`kefangjiage`,`kefangzhuangtai`,`kefangjieshao`,`jiudianmingcheng`,`jiudianleixing`,`jiudiandizhi`) values (1617257587707,'2021-04-01 14:13:07','万凯604','双人房','http://localhost:8080/ssmeaog5/upload/1617257550458.jpg','空调冰箱浴缸',398,'可预订','<p>设施齐全，采光较好</p><p><img src=\"http://localhost:8080/ssmeaog5/upload/1617257585613.jpg\"></p>','万凯酒店西湖店','连锁酒店','西湖区龙井路8号');

/*Table structure for table `kefangyuding` */

DROP TABLE IF EXISTS `kefangyuding`;

CREATE TABLE `kefangyuding` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `kefangmingcheng` varchar(200) DEFAULT NULL COMMENT '客房名称',
  `kefangleixing` varchar(200) DEFAULT NULL COMMENT '客房类型',
  `kefangzhuangtai` varchar(200) DEFAULT NULL COMMENT '客房状态',
  `jiudianmingcheng` varchar(200) DEFAULT NULL COMMENT '酒店名称',
  `kefangjiage` int(11) DEFAULT NULL COMMENT '客房价格',
  `yudingtianshu` int(11) NOT NULL COMMENT '预订天数',
  `zongjiage` varchar(200) DEFAULT NULL COMMENT '总价格',
  `xiadanshijian` date DEFAULT NULL COMMENT '下单时间',
  `ruzhushijian` datetime NOT NULL COMMENT '入住时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1617257900512 DEFAULT CHARSET=utf8 COMMENT='客房预订';

/*Data for the table `kefangyuding` */

insert  into `kefangyuding`(`id`,`addtime`,`dingdanbianhao`,`kefangmingcheng`,`kefangleixing`,`kefangzhuangtai`,`jiudianmingcheng`,`kefangjiage`,`yudingtianshu`,`zongjiage`,`xiadanshijian`,`ruzhushijian`,`yonghuming`,`lianxidianhua`,`shenfenzheng`,`sfsh`,`shhf`,`ispay`) values (81,'2021-04-01 14:03:41','订单编号1','客房名称1','客房类型1','客房状态1','酒店名称1',1,1,'总价格1','2021-04-01','2021-04-01 14:03:41','用户名1','联系电话1','身份证1','是','','未支付');
insert  into `kefangyuding`(`id`,`addtime`,`dingdanbianhao`,`kefangmingcheng`,`kefangleixing`,`kefangzhuangtai`,`jiudianmingcheng`,`kefangjiage`,`yudingtianshu`,`zongjiage`,`xiadanshijian`,`ruzhushijian`,`yonghuming`,`lianxidianhua`,`shenfenzheng`,`sfsh`,`shhf`,`ispay`) values (82,'2021-04-01 14:03:41','订单编号2','客房名称2','客房类型2','客房状态2','酒店名称2',2,2,'总价格2','2021-04-01','2021-04-01 14:03:41','用户名2','联系电话2','身份证2','是','','未支付');
insert  into `kefangyuding`(`id`,`addtime`,`dingdanbianhao`,`kefangmingcheng`,`kefangleixing`,`kefangzhuangtai`,`jiudianmingcheng`,`kefangjiage`,`yudingtianshu`,`zongjiage`,`xiadanshijian`,`ruzhushijian`,`yonghuming`,`lianxidianhua`,`shenfenzheng`,`sfsh`,`shhf`,`ispay`) values (83,'2021-04-01 14:03:41','订单编号3','客房名称3','客房类型3','客房状态3','酒店名称3',3,3,'总价格3','2021-04-01','2021-04-01 14:03:41','用户名3','联系电话3','身份证3','是','','未支付');
insert  into `kefangyuding`(`id`,`addtime`,`dingdanbianhao`,`kefangmingcheng`,`kefangleixing`,`kefangzhuangtai`,`jiudianmingcheng`,`kefangjiage`,`yudingtianshu`,`zongjiage`,`xiadanshijian`,`ruzhushijian`,`yonghuming`,`lianxidianhua`,`shenfenzheng`,`sfsh`,`shhf`,`ispay`) values (84,'2021-04-01 14:03:41','订单编号4','客房名称4','客房类型4','客房状态4','酒店名称4',4,4,'总价格4','2021-04-01','2021-04-01 14:03:41','用户名4','联系电话4','身份证4','是','','未支付');
insert  into `kefangyuding`(`id`,`addtime`,`dingdanbianhao`,`kefangmingcheng`,`kefangleixing`,`kefangzhuangtai`,`jiudianmingcheng`,`kefangjiage`,`yudingtianshu`,`zongjiage`,`xiadanshijian`,`ruzhushijian`,`yonghuming`,`lianxidianhua`,`shenfenzheng`,`sfsh`,`shhf`,`ispay`) values (85,'2021-04-01 14:03:41','订单编号5','客房名称5','客房类型5','客房状态5','酒店名称5',5,5,'总价格5','2021-04-01','2021-04-01 14:03:41','用户名5','联系电话5','身份证5','是','','未支付');
insert  into `kefangyuding`(`id`,`addtime`,`dingdanbianhao`,`kefangmingcheng`,`kefangleixing`,`kefangzhuangtai`,`jiudianmingcheng`,`kefangjiage`,`yudingtianshu`,`zongjiage`,`xiadanshijian`,`ruzhushijian`,`yonghuming`,`lianxidianhua`,`shenfenzheng`,`sfsh`,`shhf`,`ispay`) values (86,'2021-04-01 14:03:41','订单编号6','客房名称6','客房类型6','客房状态6','酒店名称6',6,6,'总价格6','2021-04-01','2021-04-01 14:03:41','用户名6','联系电话6','身份证6','是','','未支付');
insert  into `kefangyuding`(`id`,`addtime`,`dingdanbianhao`,`kefangmingcheng`,`kefangleixing`,`kefangzhuangtai`,`jiudianmingcheng`,`kefangjiage`,`yudingtianshu`,`zongjiage`,`xiadanshijian`,`ruzhushijian`,`yonghuming`,`lianxidianhua`,`shenfenzheng`,`sfsh`,`shhf`,`ispay`) values (1617257900511,'2021-04-01 14:18:20','2021411418571195491','万凯604','双人房','可预订','万凯酒店西湖店',398,2,'796','2021-04-01','2021-04-02 14:00:00','1','12312312312','123456789789456123','是','ok','已支付');

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617257921394 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (121,'2021-04-01 14:03:41',1,'用户名1','留言内容1','回复内容1');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (122,'2021-04-01 14:03:41',2,'用户名2','留言内容2','回复内容2');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (123,'2021-04-01 14:03:41',3,'用户名3','留言内容3','回复内容3');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (124,'2021-04-01 14:03:41',4,'用户名4','留言内容4','回复内容4');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (125,'2021-04-01 14:03:41',5,'用户名5','留言内容5','回复内容5');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (126,'2021-04-01 14:03:41',6,'用户名6','留言内容6','回复内容6');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (1617257921393,'2021-04-01 14:18:41',1617257699063,'1','有什么建议可以进行留言','EFR');

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
) ENGINE=InnoDB AUTO_INCREMENT=1617257667223 DEFAULT CHARSET=utf8 COMMENT='景点资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (111,'2021-04-01 14:03:41','标题1','简介1','http://localhost:8080/ssmeaog5/upload/1617257324088.jpg','<p>内容1</p>');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (112,'2021-04-01 14:03:41','标题2','简介2','http://localhost:8080/ssmeaog5/upload/1617257332290.jpg','<p>内容2</p>');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (113,'2021-04-01 14:03:41','标题3','简介3','http://localhost:8080/ssmeaog5/upload/1617257340245.jpg','<p>内容3</p>');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (114,'2021-04-01 14:03:41','标题4','简介4','http://localhost:8080/ssmeaog5/upload/1617257347572.jpg','<p>内容4</p>');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (115,'2021-04-01 14:03:41','标题5','简介5','http://localhost:8080/ssmeaog5/upload/1617257356836.jpg','<p>内容5</p>');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (116,'2021-04-01 14:03:41','标题6','简介6','http://localhost:8080/ssmeaog5/upload/news_picture6.jpg','内容6');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (1617257667222,'2021-04-01 14:14:27','景点资讯A','景点资讯','http://localhost:8080/ssmeaog5/upload/1617257653607.jpg','<p>资讯内容</p><p>IJGKRTYHTKUY</p><p><img src=\"http://localhost:8080/ssmeaog5/upload/1617257665447.jpg\"></p>');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617257884243 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1617257800241,'2021-04-01 14:16:39',1617257699063,1617257469228,'jingdianxinxi','杭州西湖','http://localhost:8080/ssmeaog5/upload/1617257424672.jpg');
insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1617257884242,'2021-04-01 14:18:03',1617257699063,1617257587707,'kefangxinxi','万凯604','http://localhost:8080/ssmeaog5/upload/1617257550458.jpg');

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

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','79kc4oxktvfy2neopk106yjsc7wy2r5v','2021-04-01 14:06:24','2021-04-01 15:21:07');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (2,1617257699063,'1','yonghu','用户','jcz244vdcjr3rer82c5da7yo85nsy7c4','2021-04-01 14:15:04','2021-04-01 15:21:51');

/*Table structure for table `tuifangpingjia` */

DROP TABLE IF EXISTS `tuifangpingjia`;

CREATE TABLE `tuifangpingjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `kefangmingcheng` varchar(200) DEFAULT NULL COMMENT '客房名称',
  `kefangleixing` varchar(200) DEFAULT NULL COMMENT '客房类型',
  `jiudianmingcheng` varchar(200) DEFAULT NULL COMMENT '酒店名称',
  `ruzhushijian` varchar(200) DEFAULT NULL COMMENT '入住时间',
  `tuifangshijian` datetime DEFAULT NULL COMMENT '退房时间',
  `pingfen` varchar(200) DEFAULT NULL COMMENT '评分',
  `zhengtipingjia` longtext COMMENT '整体评价',
  `pingjiariqi` date DEFAULT NULL COMMENT '评价日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617258056262 DEFAULT CHARSET=utf8 COMMENT='退房评价';

/*Data for the table `tuifangpingjia` */

insert  into `tuifangpingjia`(`id`,`addtime`,`dingdanbianhao`,`kefangmingcheng`,`kefangleixing`,`jiudianmingcheng`,`ruzhushijian`,`tuifangshijian`,`pingfen`,`zhengtipingjia`,`pingjiariqi`,`yonghuming`,`sfsh`,`shhf`) values (91,'2021-04-01 14:03:41','订单编号1','客房名称1','客房类型1','酒店名称1','入住时间1','2021-04-01 14:03:41','1','整体评价1','2021-04-01','用户名1','是','');
insert  into `tuifangpingjia`(`id`,`addtime`,`dingdanbianhao`,`kefangmingcheng`,`kefangleixing`,`jiudianmingcheng`,`ruzhushijian`,`tuifangshijian`,`pingfen`,`zhengtipingjia`,`pingjiariqi`,`yonghuming`,`sfsh`,`shhf`) values (92,'2021-04-01 14:03:41','订单编号2','客房名称2','客房类型2','酒店名称2','入住时间2','2021-04-01 14:03:41','1','整体评价2','2021-04-01','用户名2','是','');
insert  into `tuifangpingjia`(`id`,`addtime`,`dingdanbianhao`,`kefangmingcheng`,`kefangleixing`,`jiudianmingcheng`,`ruzhushijian`,`tuifangshijian`,`pingfen`,`zhengtipingjia`,`pingjiariqi`,`yonghuming`,`sfsh`,`shhf`) values (93,'2021-04-01 14:03:41','订单编号3','客房名称3','客房类型3','酒店名称3','入住时间3','2021-04-01 14:03:41','1','整体评价3','2021-04-01','用户名3','是','');
insert  into `tuifangpingjia`(`id`,`addtime`,`dingdanbianhao`,`kefangmingcheng`,`kefangleixing`,`jiudianmingcheng`,`ruzhushijian`,`tuifangshijian`,`pingfen`,`zhengtipingjia`,`pingjiariqi`,`yonghuming`,`sfsh`,`shhf`) values (94,'2021-04-01 14:03:41','订单编号4','客房名称4','客房类型4','酒店名称4','入住时间4','2021-04-01 14:03:41','1','整体评价4','2021-04-01','用户名4','是','');
insert  into `tuifangpingjia`(`id`,`addtime`,`dingdanbianhao`,`kefangmingcheng`,`kefangleixing`,`jiudianmingcheng`,`ruzhushijian`,`tuifangshijian`,`pingfen`,`zhengtipingjia`,`pingjiariqi`,`yonghuming`,`sfsh`,`shhf`) values (95,'2021-04-01 14:03:41','订单编号5','客房名称5','客房类型5','酒店名称5','入住时间5','2021-04-01 14:03:41','1','整体评价5','2021-04-01','用户名5','是','');
insert  into `tuifangpingjia`(`id`,`addtime`,`dingdanbianhao`,`kefangmingcheng`,`kefangleixing`,`jiudianmingcheng`,`ruzhushijian`,`tuifangshijian`,`pingfen`,`zhengtipingjia`,`pingjiariqi`,`yonghuming`,`sfsh`,`shhf`) values (96,'2021-04-01 14:03:41','订单编号6','客房名称6','客房类型6','酒店名称6','入住时间6','2021-04-01 14:03:41','1','整体评价6','2021-04-01','用户名6','是','');
insert  into `tuifangpingjia`(`id`,`addtime`,`dingdanbianhao`,`kefangmingcheng`,`kefangleixing`,`jiudianmingcheng`,`ruzhushijian`,`tuifangshijian`,`pingfen`,`zhengtipingjia`,`pingjiariqi`,`yonghuming`,`sfsh`,`shhf`) values (1617258056261,'2021-04-01 14:20:55','2021411418571195491','万凯604','双人房','万凯酒店西湖店','2021-04-02 14:00:00','2021-04-03 18:00:00','5','房间很干净，服务不错','2021-04-03','1','是','感谢支持');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-01 14:03:41');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1617257699064 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`lianxidianhua`,`shenfenzheng`) values (11,'2021-04-01 14:03:41','用户1','123456','姓名1','http://localhost:8080/ssmeaog5/upload/yonghu_touxiang1.jpg','男','13823888881','440300199101010001');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`lianxidianhua`,`shenfenzheng`) values (12,'2021-04-01 14:03:41','用户2','123456','姓名2','http://localhost:8080/ssmeaog5/upload/yonghu_touxiang2.jpg','男','13823888882','440300199202020002');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`lianxidianhua`,`shenfenzheng`) values (13,'2021-04-01 14:03:41','用户3','123456','姓名3','http://localhost:8080/ssmeaog5/upload/yonghu_touxiang3.jpg','男','13823888883','440300199303030003');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`lianxidianhua`,`shenfenzheng`) values (14,'2021-04-01 14:03:41','用户4','123456','姓名4','http://localhost:8080/ssmeaog5/upload/yonghu_touxiang4.jpg','男','13823888884','440300199404040004');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`lianxidianhua`,`shenfenzheng`) values (15,'2021-04-01 14:03:41','用户5','123456','姓名5','http://localhost:8080/ssmeaog5/upload/yonghu_touxiang5.jpg','男','13823888885','440300199505050005');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`lianxidianhua`,`shenfenzheng`) values (16,'2021-04-01 14:03:41','用户6','123456','姓名6','http://localhost:8080/ssmeaog5/upload/yonghu_touxiang6.jpg','男','13823888886','440300199606060006');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`lianxidianhua`,`shenfenzheng`) values (1617257699063,'2021-04-01 14:14:59','1','1','陈一','http://localhost:8080/ssmeaog5/upload/1617257714158.jpg','女','12312312312','123456789789456123');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
