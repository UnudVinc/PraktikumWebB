/*
SQLyog Enterprise v10.42 
MySQL - 5.5.5-10.4.11-MariaDB : Database - perpustakaan
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`perpustakaan` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `perpustakaan`;

/*Table structure for table `buku` */

DROP TABLE IF EXISTS `buku`;

CREATE TABLE `buku` (
  `id_buku` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) NOT NULL,
  `tahun` int(11) NOT NULL,
  `penulis` varchar(100) NOT NULL,
  `ISBN` varchar(13) NOT NULL,
  `pic` varchar(100) NOT NULL,
  `kategori` varchar(32) NOT NULL,
  `rak` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  PRIMARY KEY (`id_buku`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

/*Data for the table `buku` */

insert  into `buku`(`id_buku`,`judul`,`tahun`,`penulis`,`ISBN`,`pic`,`kategori`,`rak`,`stok`) values (1,'Pergulatan Jepang dalam modernisasi pendidikan',1993,'Michio Nagai','9795116592','1.jpg','Sejarah',1,11),(9,'7 In 1 Pemrograman Web Untuk Pemula',2020,'Rohi Abdulloh','978-602-04-91','img1.jpg','Komputer',2,19),(10,'Perang Korea',2020,'Michael Wicaksono','978-623-00-15','img2.jpg','Sejarah',1,15),(11,'Akuaponik: Integrated Farming yang Semakin Populer',2019,'Yuli Andriani & Zahidah','978-623-224-0','img3.jpg','Pertanian',2,20);

/*Table structure for table `pinjaman` */

DROP TABLE IF EXISTS `pinjaman`;

CREATE TABLE `pinjaman` (
  `id_pinjam` int(11) NOT NULL AUTO_INCREMENT,
  `id_buku` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `tgl_ambil` date NOT NULL,
  `tgl_kembali` date NOT NULL,
  `status` enum('mohon','dipinjam','dikembalikan','batal') NOT NULL DEFAULT 'mohon',
  PRIMARY KEY (`id_pinjam`),
  KEY `id_buku` (`id_buku`),
  KEY `id_user` (`id_user`),
  CONSTRAINT `pinjaman_ibfk_1` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id_buku`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

/*Data for the table `pinjaman` */

insert  into `pinjaman`(`id_pinjam`,`id_buku`,`id_user`,`tgl_ambil`,`tgl_kembali`,`status`) values (2,1,5,'2020-05-27','2020-05-29','dikembalikan'),(4,9,7,'2020-05-29','2020-06-05','dikembalikan'),(5,9,7,'2020-05-28','2020-06-05','dipinjam');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role` enum('suadmin','user','admin','nonaktif') NOT NULL,
  `picture` varchar(255) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

/*Data for the table `user` */

insert  into `user`(`id_user`,`user_name`,`email`,`password`,`role`,`picture`) values (1,'Super','su@perpus.com','super','suadmin',''),(2,'admin','admin@perpus.com','admin','admin',''),(3,'vinc','vincentius.chandra@student.unud.ac.id','1234567890','user',''),(4,'user','user@user.com','qwertyuiop','user','');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
