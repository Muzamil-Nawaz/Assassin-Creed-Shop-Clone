/*
SQLyog Professional v12.09 (64 bit)
MySQL - 10.1.38-MariaDB : Database - we_project
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`we_project` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `we_project`;

/*Table structure for table `games` */

DROP TABLE IF EXISTS `games`;

CREATE TABLE `games` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `price` decimal(6,0) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `games` */

insert  into `games`(`id`,`name`,`price`) values (1,'Altair','12'),(2,'Conor','12'),(3,'Ezio','15'),(4,'Edward','13');

/*Table structure for table `purchase_history` */

DROP TABLE IF EXISTS `purchase_history`;

CREATE TABLE `purchase_history` (
  `p_id` int(10) NOT NULL AUTO_INCREMENT,
  `purchase_item` varchar(100) NOT NULL,
  `item_price` int(100) NOT NULL,
  `purchase_date` date NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `purchase_history` */

insert  into `purchase_history`(`p_id`,`purchase_item`,`item_price`,`purchase_date`,`user_id`) values (1,'Assassins Cread 2 ',12,'2021-04-04',3),(2,'Assassins Cread 4 ',13,'2021-04-04',3),(3,'Assassins Cread 2 ',15,'2021-04-04',3);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `credit` decimal(65,0) NOT NULL,
  `cvv` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`email`,`credit`,`cvv`) values (3,'muzamil','124','mzmlnwz3@gmail.com','11','ASD'),(7,'bharat','adasd','asdkljasd','0','askld'),(8,'tajwani','1234','bt@gmail.com','98238912','aaskdl'),(9,'samad','123','mzmlnwz3@gmail.com','2343','adas'),(10,'sandesh','adlkad','mzmlnwz5@gmail.com','123','44asd');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
