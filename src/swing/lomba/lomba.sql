/*
SQLyog Enterprise - MySQL GUI v8.05 
MySQL - 5.5.5-10.1.13-MariaDB : Database - lomba
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`lomba` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `lomba`;

/*Table structure for table `pendaftar` */

DROP TABLE IF EXISTS `pendaftar`;

CREATE TABLE `pendaftar` (
  `NIK` varchar(50) NOT NULL,
  `Nama` varchar(50) DEFAULT NULL,
  `jkel` enum('l','p') DEFAULT NULL,
  `alamat` varchar(150) DEFAULT NULL,
  `tanggal_mendaftar` date DEFAULT NULL,
  `jenis_lomba` enum('1','2','3') DEFAULT NULL,
  PRIMARY KEY (`NIK`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pendaftar` */

insert  into `pendaftar`(`NIK`,`Nama`,`jkel`,`alamat`,`tanggal_mendaftar`,`jenis_lomba`) values ('14045','Hafidz','l','Kendal','2017-06-08','1');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
