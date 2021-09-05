/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 8.0.25 : Database - zincsyblog
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`zincsyblog` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `zincsyblog`;

/*Table structure for table `contacts` */

DROP TABLE IF EXISTS `contacts`;

CREATE TABLE `contacts` (
  `sno` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `phone_num` varchar(50) DEFAULT NULL,
  `msg` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `contacts` */

insert  into `contacts`(`sno`,`name`,`phone_num`,`msg`,`date`,`email`) values 
(1,'First','123456','first','2021-08-18','sa@zing'),
(4,'TEST MEOW ','56565665','MEOW MEOW','2021-08-18','TM@GMAIL'),
(5,'Saurabh','56566556','sasassaas','2021-08-19','se@gmil'),
(6,'Ronaldo','65665665556','No to man city\r\n','2021-08-26','r9@gmai.com'),
(7,'Ronaldo','65665665556','No to man city\r\n','2021-08-26','r9@gmai.com'),
(8,'mail','656546546565','mail test','2021-08-26','mail@gmail.com'),
(9,'mail','56654644','mail test','2021-08-26','mail@gmail.com'),
(10,NULL,NULL,NULL,'2021-08-30',NULL),
(11,NULL,NULL,NULL,'2021-08-30',NULL),
(12,NULL,NULL,NULL,'2021-08-30',NULL),
(13,NULL,NULL,NULL,'2021-08-30',NULL);

/*Table structure for table `posts` */

DROP TABLE IF EXISTS `posts`;

CREATE TABLE `posts` (
  `sno` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `tagline` text,
  `slug` varchar(25) DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `img_file` varchar(12) DEFAULT NULL,
  `date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `posts` */

insert  into `posts`(`sno`,`title`,`tagline`,`slug`,`content`,`img_file`,`date`) values 
(1,'Ronaldo Returns!','Finally He is back again!','CR7',' Manchester United is delighted to confirm that the club has reached agreement with Juventus for the transfer of Cristiano Ronaldo, subject to agreement of personal terms, visa and medical.\r\nCristiano, a five-time Ballon d’Or winner, has so far won over 30 major trophies during his career, including five UEFA Champions League titles, four FIFA Club World Cups, seven league titles in England, Spain and Italy, and the European Championship for his native Portugal.\r\n\r\nIn his first spell for Manchester United, he scored 118 goals in 292 games.\r\n\r\nEveryone at the club looks forward to welcoming Cristiano back to Manchester.','CR.png','2021-08-30 18:18:22'),
(2,'Agent Bruno.....','Bruno Welcomes his national teammate!','Bruno-cr','Manchester United stars Bruno Fernandes, Harry Maguire and Marcus Rashford laid the red carpet for Cristiano Ronaldo\'s welcome to Old Trafford after the Premier League confirmed that they had agreed to a deal to resign the Portuguese star from Juventus.\r\n\r\nMany United supporters have been desperate to see Cristiano return ‘home’ to Old Trafford over the past 13 years and they have taken to social media to call for \'Ronaldo\'s One Last Dance\' as they celebrate the Portuguese\'s much-awaited comeback to the club.','bruno.png','2021-08-27 22:50:47'),
(3,'Ole speaks','Strengths and Weakness','ole-wolves','Ole Gunnar Solskjaer is looking forward to managing his 100th Premier League game for Manchester United at Molineux on Sunday afternoon, but the boss insists he is only focused on looking forward to what this squad can achieve rather than back.\r\n\r\nThe boss believes the current group of players he has is the strongest under his management and he\'s hoping to see the Reds build on four points from six from our opening two games, against Wolves later (KO 16:30 BST).\r\n\r\nDuring Stewart Gardner\'s exclusive chat with Ole, he gave his reaction to the Champions League draw, provided an update on injured players and also looked ahead to facing Wolves...\r\n\r\nOle, first of all, a word on the Champions League draw – Villarreal, Atalanta and Young Boys?\r\n“Some reunions of course. We all remember the last time we played against Villarreal. I don’t know how many times we’ve played them in the Champions League now, a few times and every one has been a draw. \r\nThe final is the only game we’ve had goals in so hopefully we can get better games and get that over the line and learn from the final. We played Young Boys not too long ago in the Champions League, before my time. It was an Astro-turf pitch of course. \r\nThey’ve laid a new one and I remember the players spoke about it saying it wasn’t the best, but there is a new one now. Atalanta is a new experience for us. It’s a team we’ve followed of course through Amad and a couple of other things. \r\nThe way they play with the high press and intensity and Gian Piero Gasperini is a manager you have a lot of respect for and of course for Unai [Emery] and David Wagner. It’s a good group and I can’t wait – the Champions League is the best.”','ole.png','2021-08-29 14:17:04'),
(4,'Sunday News','Randoms News','sun-gossip','Please note that the stories on this page are sourced under licence from external media. They do not necessarily reflect the intended actions or views of Manchester United.*\r\n\r\nTOP STORIES\r\n\r\nBryan Robson: Cristiano Ronaldo can have the Eric Cantona effect at Manchester United... he\'ll make the club one hell of a team to watch and will bring the best out of Paul Pogba and Bruno Fernandes!\r\nDaily Mail\r\n\r\nCristiano Ronaldo to become Premier League’s highest-ever earner - and why Glazers pushed through deal\r\nTelegraph.co.uk\r\n\r\nRonaldo rebooted: Cristiano first came to the UK as a pimply youth with his mum but he returns as a father-of-four who\'s the king of a £1billion empire after signing for Manchester United again in £19m deal\r\nDaily Mail\r\n','cr2.png','2021-08-29 14:20:17');

/*Table structure for table `todo` */

DROP TABLE IF EXISTS `todo`;

CREATE TABLE `todo` (
  `sno` int NOT NULL AUTO_INCREMENT,
  `title` text,
  `desc` text,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `todo` */

insert  into `todo`(`sno`,`title`,`desc`,`date`) values 
(11,'test','1','2021-09-05 15:21:11');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
