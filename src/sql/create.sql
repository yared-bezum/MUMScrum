/*
SQLyog Ultimate v10.00 Beta1
MySQL - 5.6.14 : Database - mumscrum
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`mumscrum` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `mumscrum`;

/*Table structure for table `credential` */

DROP TABLE IF EXISTS `credential`;

CREATE TABLE `credential` (
  `USERNAME` varchar(255) NOT NULL,
  `enabled` tinyint(1) DEFAULT NULL,
  `PASSWORD` varchar(255) NOT NULL,
  `verifyPassword` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`USERNAME`),
  UNIQUE KEY `USERNAME` (`USERNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `credential` */


/*Table structure for table `employee` */

DROP TABLE IF EXISTS `employee`;

CREATE TABLE `employee` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `AGE` int(11) DEFAULT NULL,
  `EMPLOYEENUMBER` int(11) DEFAULT NULL,
  `FIRSTNAME` varchar(255) DEFAULT NULL,
  `LASTNAME` varchar(255) DEFAULT NULL,
  `TITLE` varchar(255) DEFAULT NULL,
  `USERNAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK75C8D6AE468C7B16` (`USERNAME`),
  CONSTRAINT `FK75C8D6AE468C7B16` FOREIGN KEY (`USERNAME`) REFERENCES `credential` (`USERNAME`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `employee` */


/*Table structure for table `productbacklog` */

DROP TABLE IF EXISTS `productbacklog`;

CREATE TABLE `productbacklog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ProductName` varchar(255) DEFAULT NULL,
  `ProductOwner` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `productbacklog` */

/*Table structure for table `releasebacklog` */

DROP TABLE IF EXISTS `releasebacklog`;

CREATE TABLE `releasebacklog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productBackLogId` int(11) NOT NULL,
  `scrumMaster` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `releasebacklog` */

/*Table structure for table `role` */

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `AUTHORITY` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK26F496468C7B16` (`username`),
  CONSTRAINT `FK26F496468C7B16` FOREIGN KEY (`username`) REFERENCES `credential` (`USERNAME`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `role` */


/*Table structure for table `sprint` */

DROP TABLE IF EXISTS `sprint`;

CREATE TABLE `sprint` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sprint` */

/*Table structure for table `userstory` */

DROP TABLE IF EXISTS `userstory`;

CREATE TABLE `userstory` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `userStoryNumber` int(11) DEFAULT NULL,
  `developerAssigned` int(11) DEFAULT NULL,
  `productBackLogItBelongsTo` int(11) DEFAULT NULL,
  `releaseBackLogItBelongsTo` int(11) DEFAULT NULL,
  `sprintItBelongsTo` int(11) DEFAULT NULL,
  `testerAssigned` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `userstory` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
