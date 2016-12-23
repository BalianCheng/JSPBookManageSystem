/*
SQLyog Ultimate v12.08 (64 bit)
MySQL - 5.6.25-log : Database - book
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`book` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `book`;

/*Table structure for table `tb_bookcase` */

DROP TABLE IF EXISTS `tb_bookcase`;

CREATE TABLE `tb_bookcase` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(30) DEFAULT NULL,
  
  PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `tb_bookcase` */

INSERT  INTO `tb_bookcase`(`id`,`name`,`Column_3`) VALUES (3,'A架'),(4,'B架');

/*Table structure for table `tb_bookinfo` */

DROP TABLE IF EXISTS `tb_bookinfo`;

CREATE TABLE `tb_bookinfo` (
  `barcode` VARCHAR(30) DEFAULT NULL,
  `bookname` VARCHAR(70) DEFAULT NULL,
  `typeid` INT(10) UNSIGNED DEFAULT NULL,
  `author` VARCHAR(30) DEFAULT NULL,
  `translator` VARCHAR(30) DEFAULT NULL,
  `ISBN` VARCHAR(20) DEFAULT NULL,
  `price` FLOAT(8,2) DEFAULT NULL,
  `page` INT(10) UNSIGNED DEFAULT NULL,
  `bookcase` INT(10) UNSIGNED DEFAULT NULL,
  `inTime` DATE DEFAULT NULL,
  `operator` VARCHAR(30) DEFAULT NULL,
  `del` TINYINT(1) DEFAULT '0',
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `tb_bookinfo` */

INSERT  INTO `tb_bookinfo`(`barcode`,`bookname`,`typeid`,`author`,`translator`,`ISBN`,`price`,`page`,`bookcase`,`inTime`,`operator`,`del`,`id`) VALUES ('1','Java',1,'php','php','7-302',39.00,440,3,'2016-04-28','admin',0,1),('2','C',1,'php','php','7-302',12.00,55,1,'2016-04-28','admin',1,2),('3','JSP',1,'php','php','978-7',89.00,81,3,'2016-04-28','admin',0,3),('4','html',1,'11','php','7-302',20.00,20,1,'2016-04-28','admin',1,5),('5','php',1,'php','php','7-302',11.00,80,4,'2016-04-28','admin',0,6);

/*Table structure for table `tb_booktype` */

DROP TABLE IF EXISTS `tb_booktype`;

CREATE TABLE `tb_booktype` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `typename` VARCHAR(30) DEFAULT NULL,
  `days` INT(10) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `tb_booktype` */

INSERT  INTO `tb_booktype`(`id`,`typename`,`days`) VALUES (1,'计算机类',30),(3,'文学类',35),(4,'建筑类',20);

/*Table structure for table `tb_borrow` */

DROP TABLE IF EXISTS `tb_borrow`;

CREATE TABLE `tb_borrow` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `readerid` INT(10) UNSIGNED DEFAULT NULL,
  `bookid` INT(10) DEFAULT NULL,
  `borrowTime` DATE DEFAULT NULL,
  `backTime` DATE DEFAULT NULL,
  `operator` VARCHAR(30) DEFAULT NULL,
  `ifback` TINYINT(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `tb_borrow` */

INSERT  INTO `tb_borrow`(`id`,`readerid`,`bookid`,`borrowTime`,`backTime`,`operator`,`ifback`) VALUES (1,1,1,'2016-04-28','2016-06-01','admin',1),(2,1,3,'2016-04-28','2016-06-01','admin',0),(3,1,1,'2016-04-28','2016-06-01','admin',0),(4,3,6,'2016-04-28','2016-06-01','admin',0),(5,3,1,'2016-04-28','2016-06-01','admin',0),(6,3,3,'2016-04-28','2016-06-01','admin',1),(7,1,6,'2016-04-28','2016-06-01','cmz',1),(8,1,6,'2016-04-28','2016-06-01','cmz',1),(9,1,6,'2016-04-28','2016-06-01','cmz',1),(10,1,1,'2016-04-28','2016-06-01','cmz',0);

/*Table structure for table `tb_giveback` */

DROP TABLE IF EXISTS `tb_giveback`;

CREATE TABLE `tb_giveback` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `readerid` INT(11) DEFAULT NULL,
  `bookid` INT(11) DEFAULT NULL,
  `backTime` DATE DEFAULT NULL,
  `operator` VARCHAR(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `tb_giveback` */

INSERT  INTO `tb_giveback`(`id`,`readerid`,`bookid`,`backTime`,`operator`) VALUES (1,1,1,'2016-04-28','admin'),(2,3,3,'2016-04-28','admin'),(3,1,6,'2016-04-28','admin'),(4,1,6,'2016-04-28','cmz'),(5,1,6,'2016-04-28','cmz');

/*Table structure for table `tb_library` */

DROP TABLE IF EXISTS `tb_library`;

CREATE TABLE `tb_library` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `libraryname` VARCHAR(50) DEFAULT NULL,
  `curator` VARCHAR(10) DEFAULT NULL,
  `tel` VARCHAR(20) DEFAULT NULL,
  `address` VARCHAR(100) DEFAULT NULL,
  `email` VARCHAR(100) DEFAULT NULL,
  `url` VARCHAR(100) DEFAULT NULL,
  `createDate` DATE DEFAULT NULL,
  `introduce` TEXT,
  PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `tb_library` */

INSERT  INTO `tb_library`(`id`,`libraryname`,`curator`,`tel`,`address`,`email`,`url`,`createDate`,`introduce`) VALUES (1,'ccnu','cmz','110','ccnu','cmz@ccnu.com','http://','2016-05-25','是');

/*Table structure for table `tb_manager` */

DROP TABLE IF EXISTS `tb_manager`;

CREATE TABLE `tb_manager` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(30) DEFAULT NULL,
  `PWD` VARCHAR(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `tb_manager` */

INSERT  INTO `tb_manager`(`id`,`name`,`PWD`) VALUES (3,'cmz','123456'),(4,'admin','123456');

/*Table structure for table `tb_parameter` */

DROP TABLE IF EXISTS `tb_parameter`;

CREATE TABLE `tb_parameter` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cost` INT(10) UNSIGNED DEFAULT NULL,
  `validity` INT(10) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `tb_parameter` */

INSERT  INTO `tb_parameter`(`id`,`cost`,`validity`) VALUES (1,45,3);

/*Table structure for table `tb_publishing` */

DROP TABLE IF EXISTS `tb_publishing`;

CREATE TABLE `tb_publishing` (
  `ISBN` VARCHAR(20) DEFAULT NULL,
  `pubname` VARCHAR(30) DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Data for the table `tb_publishing` */

INSERT  INTO `tb_publishing`(`ISBN`,`pubname`) VALUES ('7-302','华中师范大学出版社'),('978-7','清华大学出版社');

/*Table structure for table `tb_purview` */

DROP TABLE IF EXISTS `tb_purview`;

CREATE TABLE `tb_purview` (
  `id` INT(11) NOT NULL,
  `sysset` TINYINT(1) DEFAULT '0',
  `readerset` TINYINT(1) DEFAULT '0',
  `bookset` TINYINT(1) DEFAULT '0',
  `borrowback` TINYINT(1) DEFAULT '0',
  `sysquery` TINYINT(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Data for the table `tb_purview` */

INSERT  INTO `tb_purview`(`id`,`sysset`,`readerset`,`bookset`,`borrowback`,`sysquery`) VALUES (3,1,1,1,1,1),(4,1,1,1,1,1);

/*Table structure for table `tb_reader` */

DROP TABLE IF EXISTS `tb_reader`;

CREATE TABLE `tb_reader` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(20) DEFAULT NULL,
  `sex` VARCHAR(4) DEFAULT NULL,
  `barcode` VARCHAR(30) DEFAULT NULL,
  `vocation` VARCHAR(50) DEFAULT NULL,
  `birthday` DATE DEFAULT NULL,
  `paperType` VARCHAR(10) DEFAULT NULL,
  `paperNO` VARCHAR(20) DEFAULT NULL,
  `tel` VARCHAR(20) DEFAULT NULL,
  `email` VARCHAR(100) DEFAULT NULL,
  `createDate` DATE DEFAULT NULL,
  `operator` VARCHAR(30) DEFAULT NULL,
  `remark` TEXT,
  `typeid` INT(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `tb_reader` */

INSERT  INTO `tb_reader`(`id`,`name`,`sex`,`barcode`,`vocation`,`birthday`,`paperType`,`paperNO`,`tel`,`email`,`createDate`,`operator`,`remark`,`typeid`) VALUES (1,'cmz','男','2014214','学生','2016-05-25','身份证','20142146','110','cmz@ccnu.com','2016-05-25','admin','xyy',1),(2,'xyy','女','2014215','学生','2016-05-25','身份证','20142145','120','xyy@ccni.com','2016-05-25','tsoft','cmz\r\n',2);

/*Table structure for table `tb_readertype` */

DROP TABLE IF EXISTS `tb_readertype`;

CREATE TABLE `tb_readertype` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) DEFAULT NULL,
  `number` INT(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `tb_readertype` */

INSERT  INTO `tb_readertype`(`id`,`name`,`number`) VALUES (1,'学生',10),(2,'教师',20),(3,'其他',5);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
