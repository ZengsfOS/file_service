-- MySQL dump 10.13  Distrib 5.7.23, for Linux (x86_64)
--
-- Host: localhost    Database: shengfen
-- ------------------------------------------------------
-- Server version	5.7.23-0ubuntu0.16.04.1

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
-- Current Database: `shengfen`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `shengfen` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `shengfen`;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `c_id` int(11) DEFAULT NULL,
  `c_name` varchar(15) DEFAULT NULL,
  `cfather_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (1,131100,'石家庄市',130000),(2,131101,'沧州市',130000),(3,131102,'廊坊市',130000),(4,131103,'西安市',140000),(5,131104,'成都市',150000),(6,131105,'重庆市',150000),(7,131106,'广州市',160000),(8,131107,'济南市',170000),(9,131108,'武汉市',180000),(10,131109,'郑州市',190000),(11,131110,'北京市',320000),(12,131111,'天津市',320000),(13,131112,'上海市',320000),(14,131113,'哈尔滨',320001),(15,131114,'雄安新区',320002);
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sheng`
--

DROP TABLE IF EXISTS `sheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `s_id` int(11) DEFAULT NULL,
  `s_name` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sheng`
--

LOCK TABLES `sheng` WRITE;
/*!40000 ALTER TABLE `sheng` DISABLE KEYS */;
INSERT INTO `sheng` VALUES (1,130000,'河北省'),(2,140000,'陕西省'),(3,150000,'四川省'),(4,160000,'广东省'),(5,170000,'山东省'),(6,180000,'湖北省'),(7,190000,'河南省'),(8,200000,'海南省'),(9,200001,'云南省'),(10,200002,'山西省'),(11,3000000,'黑龙江省');
/*!40000 ALTER TABLE `sheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t8888`
--

DROP TABLE IF EXISTS `t8888`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t8888` (
  `id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t8888`
--

LOCK TABLES `t8888` WRITE;
/*!40000 ALTER TABLE `t8888` DISABLE KEYS */;
/*!40000 ALTER TABLE `t8888` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xian`
--

DROP TABLE IF EXISTS `xian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xian` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `x_id` int(11) DEFAULT NULL,
  `x_name` varchar(15) DEFAULT NULL,
  `xfather_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xian`
--

LOCK TABLES `xian` WRITE;
/*!40000 ALTER TABLE `xian` DISABLE KEYS */;
INSERT INTO `xian` VALUES (1,132100,'正定县',131100),(2,132102,'浦东新区',131112),(3,132103,'武昌区',131108),(4,132104,'哈哈',131115),(5,132105,'安新县',131114),(6,132106,'容城县',131114),(7,132107,'雄县',131114),(8,132108,'嘎嘎',131115);
/*!40000 ALTER TABLE `xian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `school`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `school` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `school`;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `students` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `age` tinyint(3) unsigned DEFAULT NULL,
  `sex` enum('男','女') DEFAULT NULL,
  `score` float(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,'zengsf',23,'男',60.00),(2,'liuwei',22,'男',50.00),(3,'fengshao',20,'男',90.00),(NULL,'xiaoli',NULL,NULL,90.00),(NULL,'xiaoliu',NULL,NULL,80.00),(NULL,'xiaoguan',NULL,NULL,100.00);
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `zengsf`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `zengsf` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `zengsf`;

--
-- Table structure for table `scoretab`
--

DROP TABLE IF EXISTS `scoretab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scoretab` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(15) DEFAULT NULL,
  `score` float(5,2) DEFAULT NULL,
  `phnumber` char(11) DEFAULT NULL,
  `class` char(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scoretab`
--

LOCK TABLES `scoretab` WRITE;
/*!40000 ALTER TABLE `scoretab` DISABLE KEYS */;
INSERT INTO `scoretab` VALUES (1,'大空翼',98.50,'13016880001','AID1709'),(2,'松人',98.00,'13016880002','AID1709'),(3,'水冰月',98.00,'13016880003','AID1709'),(4,'星矢',97.50,'13016880004','AID1709'),(5,'紫龙',96.50,'13016880005','AID1709'),(6,'张飞',96.00,'13016880006','AID1709'),(7,'关羽',94.50,'13016880007','AID1709'),(8,'刘备',94.50,'13016880008','AID1709'),(9,'金花婆婆',94.00,'13016880009','AID1709'),(10,'紫衫龙王',93.00,'13016880010','AID1709'),(11,'青翼蝠王',92.50,'13016880011','AID1709'),(12,'白眉鹰王',92.50,'13016880012','AID1709'),(13,'金毛狮王',92.50,'13016880013','AID1709'),(14,'张三丰',92.00,'13016880014','AID1709'),(15,'张无忌',92.00,'13016880015','AID1709'),(16,'赵敏',91.50,'13016880016','AID1709'),(17,'小昭',91.50,'13016880017','AID1709'),(18,'周芷若',91.50,'13016880018','AID1709'),(19,'足球小将',91.00,'13016880019','AID1709'),(20,'圣斗士',90.50,'13016880020','AID1709'),(21,'黄金圣衣',90.00,'13016880021','AID1709'),(22,'胡亥',90.00,'13016880022','AID1709'),(23,'杨贵妃',89.00,'13016880023','AID1709'),(24,'叮当猫',88.50,'13016880024','AID1709'),(25,'吻别',88.50,'13016880025','AID1709'),(26,'抖音',87.50,'13016880026','AID1709'),(27,'火山',87.50,'13016880027','AID1709'),(28,'火箭',87.00,'13016880028','AID1709'),(29,'骑士',86.00,'13016880029','AID1709'),(30,'小可乐',85.00,'13016880030','AID1709'),(31,'小雪碧',83.50,'13016880031','AID1709'),(32,'美年达',82.50,'13016880032','AID1709'),(33,'小甜甜',81.00,'13016880033','AID1709'),(34,'欢欢',81.00,'13016880034','AID1709'),(35,'乐乐',81.00,'13016880035','AID1709'),(36,'秋秋',80.00,'13016880036','AID1709'),(37,'辉辉',79.50,'13016880037','AID1709'),(38,'军军',77.00,'13016880038','AID1709'),(39,'阳阳',74.50,'13016880039','AID1709'),(40,'白眉大侠',73.00,'13016880040','AID1709'),(41,'杨过',68.00,'13016880041','AID1709'),(42,'小龙女',66.00,'13016880042','AID1709'),(43,'郭襄',64.50,'13016880043','AID1709'),(44,'周芷若',60.00,'13016880044','AID1709'),(45,'神雕',60.00,'13016880045','AID1709'),(46,'战神',60.00,'13016880046','AID1709'),(47,'只手遮天',60.00,'13016880047','AID1709'),(48,'王者荣耀',60.00,'13016880048','AID1709');
/*!40000 ALTER TABLE `scoretab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t1`
--

DROP TABLE IF EXISTS `t1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t1` (
  `id` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t1`
--

LOCK TABLES `t1` WRITE;
/*!40000 ALTER TABLE `t1` DISABLE KEYS */;
INSERT INTO `t1` VALUES (20001,'fengshao');
/*!40000 ALTER TABLE `t1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t2`
--

DROP TABLE IF EXISTS `t2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `ordr` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t2`
--

LOCK TABLES `t2` WRITE;
/*!40000 ALTER TABLE `t2` DISABLE KEYS */;
INSERT INTO `t2` VALUES (3,'sdf','ip'),(4,'曾少锋','nihao'),(5,'wangwu','iwatch');
/*!40000 ALTER TABLE `t2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t3`
--

DROP TABLE IF EXISTS `t3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t3` (
  `id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t3`
--

LOCK TABLES `t3` WRITE;
/*!40000 ALTER TABLE `t3` DISABLE KEYS */;
/*!40000 ALTER TABLE `t3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userinfo`
--

DROP TABLE IF EXISTS `userinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userinfo` (
  `id` int(3) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `pass` varchar(20) DEFAULT NULL,
  `UID` int(11) DEFAULT NULL,
  `GID` int(11) DEFAULT NULL,
  `descr` varchar(50) DEFAULT NULL,
  `catal` varchar(50) DEFAULT NULL,
  `etlimit` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userinfo`
--

LOCK TABLES `userinfo` WRITE;
/*!40000 ALTER TABLE `userinfo` DISABLE KEYS */;
INSERT INTO `userinfo` VALUES (001,'root','x',0,0,'root','/root','/bin/bash'),(002,'daemon','x',1,1,'daemon','/usr/sbin','/usr/sbin/nologin'),(003,'bin','x',2,2,'bin','/bin','/usr/sbin/nologin'),(004,'sys','x',3,3,'sys','/dev','/usr/sbin/nologin'),(005,'sync','x',4,65534,'sync','/bin','/bin/sync'),(006,'games','x',5,60,'games','/usr/games','/usr/sbin/nologin'),(007,'man','x',6,12,'man','/var/cache/man','/usr/sbin/nologin'),(008,'lp','x',7,7,'lp','/var/spool/lpd','/usr/sbin/nologin'),(009,'mail','x',8,8,'mail','/var/mail','/usr/sbin/nologin'),(010,'news','x',9,9,'news','/var/spool/news','/usr/sbin/nologin'),(011,'uucp','x',10,10,'uucp','/var/spool/uucp','/usr/sbin/nologin'),(012,'proxy','x',13,13,'proxy','/bin','/usr/sbin/nologin'),(013,'www-data','x',33,33,'www-data','/var/www','/usr/sbin/nologin'),(014,'backup','x',34,34,'backup','/var/backups','/usr/sbin/nologin'),(015,'list','x',38,38,'Mailing List Manager','/var/list','/usr/sbin/nologin'),(016,'irc','x',39,39,'ircd','/var/run/ircd','/usr/sbin/nologin'),(017,'gnats','x',41,41,'Gnats Bug-Reporting System (admin)','/var/lib/gnats','/usr/sbin/nologin'),(018,'nobody','x',65534,65534,'nobody','/nonexistent','/usr/sbin/nologin'),(019,'systemd-timesync','x',100,102,'systemd Time Synchronization,,,','/run/systemd','/bin/false'),(020,'systemd-network','x',101,103,'systemd Network Management,,,','/run/systemd/netif','/bin/false'),(021,'systemd-resolve','x',102,104,'systemd Resolver,,,','/run/systemd/resolve','/bin/false'),(022,'systemd-bus-proxy','x',103,105,'systemd Bus Proxy,,,','/run/systemd','/bin/false'),(023,'syslog','x',104,108,'','/home/syslog','/bin/false'),(024,'_apt','x',105,65534,'','/nonexistent','/bin/false'),(025,'messagebus','x',106,110,'','/var/run/dbus','/bin/false'),(026,'uuidd','x',107,111,'','/run/uuidd','/bin/false'),(027,'lightdm','x',108,114,'Light Display Manager','/var/lib/lightdm','/bin/false'),(028,'whoopsie','x',109,116,'','/nonexistent','/bin/false'),(029,'avahi-autoipd','x',110,119,'Avahi autoip daemon,,,','/var/lib/avahi-autoipd','/bin/false'),(030,'avahi','x',111,120,'Avahi mDNS daemon,,,','/var/run/avahi-daemon','/bin/false'),(031,'dnsmasq','x',112,65534,'dnsmasq,,,','/var/lib/misc','/bin/false'),(032,'colord','x',113,123,'colord colour management daemon,,,','/var/lib/colord','/bin/false'),(033,'speech-dispatcher','x',114,29,'Speech Dispatcher,,,','/var/run/speech-dispatcher','/bin/false'),(034,'hplip','x',115,7,'HPLIP system user,,,','/var/run/hplip','/bin/false'),(035,'kernoops','x',116,65534,'Kernel Oops Tracking Daemon,,,','/','/bin/false'),(036,'pulse','x',117,124,'PulseAudio daemon,,,','/var/run/pulse','/bin/false'),(037,'rtkit','x',118,126,'RealtimeKit,,,','/proc','/bin/false'),(038,'saned','x',119,127,'','/var/lib/saned','/bin/false'),(039,'usbmux','x',120,46,'usbmux daemon,,,','/var/lib/usbmux','/bin/false'),(040,'tarena','x',1000,1000,'tarena,,,','/home/tarena','/bin/bash'),(041,'sshd','x',121,65534,'','/var/run/sshd','/usr/sbin/nologin'),(042,'mysql','x',122,129,'MySQL Server,,,','/nonexistent','/bin/false'),(043,'mongodb','x',123,65534,'','/var/lib/mongodb','/bin/false'),(044,'redis','x',124,131,'','/var/lib/redis','/bin/false'),(045,'guest-rwox1u','x',999,999,'访客','/tmp/guest-rwox1u','/bin/bash'),(046,'guest-todo70','x',998,998,'访客','/tmp/guest-todo70','/bin/bash'),(047,'guest-xgmfer','x',997,997,'访客','/tmp/guest-xgmfer','/bin/bash'),(048,'guest-onksxf','x',996,996,'访客','/tmp/guest-onksxf','/bin/bash');
/*!40000 ALTER TABLE `userinfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-04 10:40:56
