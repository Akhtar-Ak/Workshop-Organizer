/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.7.26 : Database - klik_database
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`klik_database` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `klik_database`;

/*Table structure for table `blogs` */

DROP TABLE IF EXISTS `blogs`;

CREATE TABLE `blogs` (
  `blog_id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_title` varchar(100) NOT NULL,
  `blog_img` varchar(1000) NOT NULL DEFAULT 'default.png',
  `blog_by` int(11) NOT NULL,
  `blog_date` date NOT NULL,
  `blog_votes` int(11) NOT NULL DEFAULT '0',
  `blog_content` longtext NOT NULL,
  PRIMARY KEY (`blog_id`),
  KEY `blog_by` (`blog_by`),
  CONSTRAINT `blogs_ibfk_1` FOREIGN KEY (`blog_by`) REFERENCES `users` (`idUsers`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

/*Data for the table `blogs` */

insert  into `blogs`(`blog_id`,`blog_title`,`blog_img`,`blog_by`,`blog_date`,`blog_votes`,`blog_content`) values (21,'Testing','646f5df377ea38.97770399.jpg',40,'2023-05-22',1,'What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),(22,'Testing123','646f5df377ea38.97770399.jpg',40,'2023-05-25',0,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nWhy do we use it?\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\n\r\nWhere does it come from?\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.'),(23,'Testing999','cover2.png',40,'2023-05-25',1,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nWhy do we use it?\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\n\r\nWhere does it come from?\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.'),(24,'12323','cover2.png',40,'2023-05-25',0,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nWhy do we use it?\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\n\r\nWhere does it come from?\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.');

/*Table structure for table `blogvotes` */

DROP TABLE IF EXISTS `blogvotes`;

CREATE TABLE `blogvotes` (
  `voteId` int(11) NOT NULL AUTO_INCREMENT,
  `voteBlog` int(11) NOT NULL,
  `voteBy` int(11) NOT NULL,
  `voteDate` date NOT NULL,
  `vote` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`voteId`),
  KEY `voteBlog` (`voteBlog`),
  KEY `voteBy` (`voteBy`),
  CONSTRAINT `blogvotes_ibfk_1` FOREIGN KEY (`voteBlog`) REFERENCES `blogs` (`blog_id`),
  CONSTRAINT `blogvotes_ibfk_2` FOREIGN KEY (`voteBy`) REFERENCES `users` (`idUsers`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `blogvotes` */

insert  into `blogvotes`(`voteId`,`voteBlog`,`voteBy`,`voteDate`,`vote`) values (2,21,40,'2023-05-22',1),(4,23,40,'2023-05-30',1);

/*Table structure for table `categories` */

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `cat_id` int(8) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(255) NOT NULL,
  `cat_description` varchar(255) NOT NULL,
  PRIMARY KEY (`cat_id`),
  UNIQUE KEY `cat_name_unique` (`cat_name`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

/*Data for the table `categories` */

insert  into `categories`(`cat_id`,`cat_name`,`cat_description`) values (4,'Computer Sciences','all topics related to finance and economy like making double decker chocolate cake and how to end the world in 3 days'),(5,'Business Development','different gardening techniques used to torture helpless victims and make them dream of attending horrible opera performances'),(8,'Arts','Arts'),(9,'Technical Difficulties','Issues and debates related to immediate actions which must be taken on event of a serious butthurt'),(13,'Literature','Literature');

/*Table structure for table `conversation` */

DROP TABLE IF EXISTS `conversation`;

CREATE TABLE `conversation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_one` int(11) NOT NULL,
  `user_two` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_one` (`user_one`),
  KEY `user_two` (`user_two`),
  CONSTRAINT `conversation_ibfk_1` FOREIGN KEY (`user_one`) REFERENCES `users` (`idUsers`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `conversation_ibfk_2` FOREIGN KEY (`user_two`) REFERENCES `users` (`idUsers`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

/*Data for the table `conversation` */

insert  into `conversation`(`id`,`user_one`,`user_two`) values (15,24,30),(16,24,25),(17,25,30),(18,24,26),(19,25,27),(21,24,29),(22,24,31),(23,37,24),(24,37,35),(25,36,24),(26,37,26),(27,26,25),(28,35,24),(29,38,36),(30,38,35),(31,24,38),(32,39,35),(33,40,24),(34,40,25),(35,40,26),(36,40,27),(37,40,29),(38,40,30),(39,40,35),(40,40,34),(41,40,41);

/*Table structure for table `event_info` */

DROP TABLE IF EXISTS `event_info`;

CREATE TABLE `event_info` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `event` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `headline` varchar(100) NOT NULL,
  `description` varchar(6000) NOT NULL,
  PRIMARY KEY (`event_id`),
  KEY `event` (`event`),
  KEY `title` (`title`),
  CONSTRAINT `event_info_ibfk_1` FOREIGN KEY (`event`) REFERENCES `events` (`event_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

/*Data for the table `event_info` */

insert  into `event_info`(`event_id`,`event`,`title`,`headline`,`description`) values (13,21,'annual suicide competition','lezz go kill ourselves bois!','time to suicide!'),(14,22,'Flat Earther Convention 2019','They are deceiving us!! Open your eyes!','The flat Earth society encourages you to open your eyes to the realities of the world. what we we donot realize is that the government and Satan are lying to us that the earth is round. But we KNOW. deep down in our hearts, we KNOW that the earth is the shape of a velociraptor. And we WILL make the world believe it or burn'),(15,23,'Food Gala','lets get FAT! like Anas Kamal','FOOD IS GOOD FOOD IS LIFE<br> I WANT FOOD I WANT SPICE'),(16,24,'NUST massacre to cancel ESEs','lets kill all the staff and cancel our papers','yay kill everyone like theres no tomorrow'),(17,25,'Annual Welcome Party','welcome to NUST where we all study and do nothing else (seriously)','welcome to nust everyone everyone now go study'),(18,26,'Election Dharna','HAMAREY SAATH DHAANDLI HUI HAI','Ye bik gai hai gormint,<br>\r\nye sarey ham ko pagal bana rahey hain'),(19,27,'Student Council Election','Vote for the new council','pls vote :)');

/*Table structure for table `events` */

DROP TABLE IF EXISTS `events`;

CREATE TABLE `events` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `event_by` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `date_created` date NOT NULL,
  `event_date` varchar(10) NOT NULL,
  `event_image` varchar(200) NOT NULL,
  PRIMARY KEY (`event_id`),
  KEY `events_ibfk_1` (`event_by`),
  CONSTRAINT `events_ibfk_1` FOREIGN KEY (`event_by`) REFERENCES `users` (`idUsers`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

/*Data for the table `events` */

insert  into `events`(`event_id`,`event_by`,`title`,`date_created`,`event_date`,`event_image`) values (21,24,'annual suicide competition','2018-12-23','2024-01-01','event-cover.png'),(22,24,'Flat Earther Convention 2019','2018-12-24','2023-12-02','event-cover.png'),(23,24,'Food Gala','2018-12-24','2023-12-02','5c209ba7d3f583.51289913.jpg'),(24,24,'NUST massacre to cancel ESEs','2018-12-24','2023-12-02','5c209c2766ac54.60298371.jpg'),(25,24,'Annual Welcome Party','2018-12-24','2023-12-02','event-cover.png'),(26,24,'Election Dharna','2018-12-24','2023-12-02','event-cover.png'),(27,24,'Student Council Election','2018-12-24','2023-12-02','5c209d6e0abe93.18464278.jpg');

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `conversation_id` int(11) NOT NULL,
  `user_from` int(11) NOT NULL,
  `user_to` int(11) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_from` (`user_from`),
  KEY `user_to` (`user_to`),
  KEY `conversation_id` (`conversation_id`),
  CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`user_from`) REFERENCES `users` (`idUsers`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`user_to`) REFERENCES `users` (`idUsers`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `messages_ibfk_3` FOREIGN KEY (`conversation_id`) REFERENCES `conversation` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;

/*Data for the table `messages` */

insert  into `messages`(`id`,`conversation_id`,`user_from`,`user_to`,`message`) values (2,15,24,30,'mmm'),(3,15,30,24,'hello'),(4,15,24,30,'aaa'),(5,15,24,30,'hello there'),(6,15,24,30,'a'),(7,16,24,25,'hey there buddy'),(8,16,24,25,'how ya doing?'),(9,16,25,24,'doing fine bro'),(10,16,25,24,'why havent you died yet'),(11,16,24,25,'dasd as das das das'),(12,16,25,24,'das das das'),(13,16,24,25,'fuck off'),(14,16,25,24,'you too ;}'),(15,16,25,24,':]'),(16,16,24,25,'dont be aa burden'),(17,16,25,24,':)'),(18,16,25,24,'no'),(19,16,25,24,'be your own burden'),(20,16,24,25,'yea i make my ownn burden'),(21,16,25,24,'being bese-8b be like'),(22,16,24,25,'aa'),(23,16,25,24,'Hey there!'),(24,16,24,25,'fuck off'),(25,16,25,24,'ok, bye'),(26,16,25,24,'You told me to fuck off, so I\\\'m going now'),(27,16,24,25,'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'),(28,16,25,24,'aaaaaaaaaaaaaaaaaaaaaaaaaaa'),(29,16,24,25,'aaaaaaaaaaaaaaaaa'),(30,16,25,24,'aaaaaaaaaaaaaaaa'),(31,16,25,24,'hhhh'),(32,16,25,24,'f off raveed'),(33,16,24,25,'aaaaaaaaaaaaaaa'),(34,16,24,25,'a'),(35,16,24,25,'a'),(36,16,24,25,'a'),(37,16,25,24,'a'),(38,16,25,24,'a'),(39,16,24,25,'sasas'),(40,16,24,25,'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'),(41,16,24,25,'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'),(42,16,24,25,'dsadas dsa'),(43,16,24,25,'get lost'),(44,16,24,25,'sdasd dssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss'),(45,16,24,25,'sssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss'),(46,16,24,25,'asdasdasd'),(47,16,24,25,'asdasdasd'),(48,16,24,25,'hey'),(49,22,24,31,'hello?'),(50,16,24,25,'oye'),(51,16,24,25,'hello'),(52,23,37,24,'wassup ma nigga'),(53,24,37,35,'fuck u'),(54,24,37,35,'fuck u'),(55,23,24,37,'fuck you'),(56,25,36,24,'soora'),(57,25,24,36,'dalla'),(58,24,35,37,'Please don\\\'t send offending messages'),(59,28,35,24,'Hi there!'),(60,28,35,24,'You ready for the presentation?'),(61,28,24,35,'hello'),(62,30,38,35,'hello'),(63,30,35,38,'heyyy'),(64,30,35,38,'heyyy'),(65,30,35,38,'heyyy'),(66,30,35,38,'heyyy'),(67,25,24,36,'oye'),(68,25,24,36,'i have something important to tell you'),(69,25,24,36,'i have something important to tell you'),(70,31,24,38,'hey'),(71,31,24,38,'hello?'),(72,32,39,35,'hello'),(73,28,24,35,'nah man, im too nervous'),(74,33,40,24,'Hi Brother! How are you?');

/*Table structure for table `poll_options` */

DROP TABLE IF EXISTS `poll_options`;

CREATE TABLE `poll_options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `poll_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `status` enum('1','0') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `poll_id` (`poll_id`),
  CONSTRAINT `poll_options_ibfk_1` FOREIGN KEY (`poll_id`) REFERENCES `polls` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

/*Data for the table `poll_options` */

insert  into `poll_options`(`id`,`poll_id`,`name`,`created`,`modified`,`status`) values (7,12,'gun','2018-12-04 20:27:26','2018-12-04 20:27:26','1'),(8,12,'opera','2018-12-04 20:27:26','2018-12-04 20:27:26','1'),(9,12,'poison','2018-12-04 20:27:26','2018-12-04 20:27:26','1'),(10,12,'algebra','2018-12-04 20:27:26','2018-12-04 20:27:26','1'),(18,14,'kill the teacher','2018-12-05 22:38:43','2018-12-05 22:38:43','1'),(19,14,'kill the creator','2018-12-05 22:38:43','2018-12-05 22:38:43','1'),(20,14,'kill everyone','2018-12-05 22:38:43','2018-12-05 22:38:43','1'),(21,14,'kill yourself','2018-12-05 22:38:43','2018-12-05 22:38:43','1'),(22,14,'how about a cup of tea?','2018-12-05 22:38:43','2018-12-05 22:38:43','1'),(26,15,'just eat it wtf','2018-12-05 23:02:29','2018-12-05 23:02:29','1'),(27,15,'go to hell','2018-12-05 23:02:29','2018-12-05 23:02:29','1'),(31,17,'a bomb','2018-12-17 22:49:37','2018-12-17 22:49:37','1'),(32,17,'my feelings','2018-12-17 22:49:38','2018-12-17 22:49:38','1'),(33,17,'a rock','2018-12-17 22:49:38','2018-12-17 22:49:38','1'),(34,17,'THE mount everest','2018-12-17 22:49:38','2018-12-17 22:49:38','1'),(35,17,'MY mount everest','2018-12-17 22:49:38','2018-12-17 22:49:38','1');

/*Table structure for table `poll_votes` */

DROP TABLE IF EXISTS `poll_votes`;

CREATE TABLE `poll_votes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `poll_id` int(11) NOT NULL,
  `poll_option_id` int(11) NOT NULL,
  `vote_by` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `poll_id` (`poll_id`),
  KEY `poll_option_id` (`poll_option_id`),
  KEY `vote_by` (`vote_by`),
  CONSTRAINT `poll_votes_ibfk_1` FOREIGN KEY (`poll_id`) REFERENCES `polls` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `poll_votes_ibfk_2` FOREIGN KEY (`poll_option_id`) REFERENCES `poll_options` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `poll_votes_ibfk_3` FOREIGN KEY (`vote_by`) REFERENCES `users` (`idUsers`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

/*Data for the table `poll_votes` */

insert  into `poll_votes`(`id`,`poll_id`,`poll_option_id`,`vote_by`) values (6,12,7,24),(8,12,10,25),(11,12,10,27),(13,14,20,27),(14,14,20,25),(19,15,26,24),(20,14,22,24),(21,12,10,36),(22,15,27,37),(23,15,27,35),(24,14,18,38);

/*Table structure for table `polls` */

DROP TABLE IF EXISTS `polls`;

CREATE TABLE `polls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `status` enum('1','0') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `created_by` int(11) NOT NULL,
  `poll_desc` varchar(5000) NOT NULL,
  `locked` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `created_by` (`created_by`),
  CONSTRAINT `polls_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`idUsers`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

/*Data for the table `polls` */

insert  into `polls`(`id`,`subject`,`created`,`modified`,`status`,`created_by`,`poll_desc`,`locked`) values (12,'killing','2018-12-04 20:27:26','2018-12-04 20:27:26','1',24,'',1),(14,'How to kill Linear Algebra','2018-12-05 22:38:43','2018-12-05 22:38:43','1',24,'linear algebra has caused more deaths then eating pizza with pepsi in the last 69 years',0),(15,'how to eat water','2018-12-05 23:02:28','2018-12-05 23:02:28','1',24,'pls pls help me i dying of hunger i need a cigarette asap ',1),(17,'what to buy on 9/11 festival','2018-12-17 22:49:37','2018-12-17 22:49:37','1',24,'i want to celebrate 9/11 what do i buy to throw at people',1);

/*Table structure for table `posts` */

DROP TABLE IF EXISTS `posts`;

CREATE TABLE `posts` (
  `post_id` int(8) NOT NULL AUTO_INCREMENT,
  `post_content` text NOT NULL,
  `post_date` datetime NOT NULL,
  `post_topic` int(8) NOT NULL,
  `post_by` int(8) NOT NULL,
  `post_votes` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`post_id`),
  KEY `post_topic` (`post_topic`),
  KEY `post_by` (`post_by`),
  CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`post_topic`) REFERENCES `topics` (`topic_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_2` FOREIGN KEY (`post_by`) REFERENCES `users` (`idUsers`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `posts` */

/*Table structure for table `postvotes` */

DROP TABLE IF EXISTS `postvotes`;

CREATE TABLE `postvotes` (
  `voteId` int(11) NOT NULL AUTO_INCREMENT,
  `votePost` int(11) NOT NULL,
  `voteBy` int(11) NOT NULL,
  `voteDate` date NOT NULL,
  `vote` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`voteId`),
  KEY `voteBy` (`voteBy`),
  CONSTRAINT `postvotes_ibfk_1` FOREIGN KEY (`voteBy`) REFERENCES `users` (`idUsers`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `postvotes` */

/*Table structure for table `pwdreset` */

DROP TABLE IF EXISTS `pwdreset`;

CREATE TABLE `pwdreset` (
  `pwdResetId` int(11) NOT NULL AUTO_INCREMENT,
  `pwdResetEmail` text NOT NULL,
  `pwdResetSelector` text NOT NULL,
  `pwdResetToken` longtext NOT NULL,
  `pwdResetExpires` text NOT NULL,
  PRIMARY KEY (`pwdResetId`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

/*Data for the table `pwdreset` */

insert  into `pwdreset`(`pwdResetId`,`pwdResetEmail`,`pwdResetSelector`,`pwdResetToken`,`pwdResetExpires`) values (1,'owaisrehman110@gmail.com','73abf7a3e5e48bce','$2y$10$9ytyvfXk8gb8gRzVfRglwevJBy6o46WDrp2ncNj58Y8sjWM4iNSTi','1543912151'),(2,'','459ea1feb0d537ee','$2y$10$jlC8JTnnikaZ7.4g4UMIHeIlqgJfe3iA4OFlruh5OQNtWVf1FfZqi','1545078648'),(4,'asd@as.asd','fb72aeade725bc83','$2y$10$HTEtmrlaWZpcspmoFAa90Owrd5V4UDorSyWapnRzGOjqxFkHKTexC','1545079924'),(5,'a@a.a','4c5a0e6dcd3aa696','$2y$10$R6lxGNFwcrf0t3/onGFqseQNxzrYzsimBUU23k7XKUONE3rUZaTrm','1545079978'),(11,'muhammadsaad.crytek@gmail.com','34219d525a406a67','$2y$10$TK.dVQ7B3Ulq95R.dCUdY.YLYAPOJBX8HDUiJW4CmEutkqg63BFQi','1545915863'),(12,'pureliquid1999@gmail.com','74e3d2f2db2cb3e3','$2y$10$uB4kDEYHvlLk13irN3A/dOL7t6h.i6GKW8eXKZ3v2azUnlABXl.NW','1545915911'),(13,'ms.merium.fatima@gmail.com','62564c5e753b0ad3','$2y$10$xBW5MsGZMevV8her23zBz.2qsJrWuLgtb.ThBiyUssPsy9tioShmi','1546003625');

/*Table structure for table `topics` */

DROP TABLE IF EXISTS `topics`;

CREATE TABLE `topics` (
  `topic_id` int(8) NOT NULL AUTO_INCREMENT,
  `topic_subject` varchar(255) NOT NULL,
  `topic_detail` text,
  `topic_date` datetime NOT NULL,
  `topic_cat` int(8) NOT NULL,
  `topic_by` int(8) NOT NULL,
  `topic_img` varchar(255) DEFAULT NULL,
  `topic_speaker` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`topic_id`),
  KEY `topic_cat` (`topic_cat`),
  KEY `topic_by` (`topic_by`),
  CONSTRAINT `topics_ibfk_1` FOREIGN KEY (`topic_cat`) REFERENCES `categories` (`cat_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `topics_ibfk_2` FOREIGN KEY (`topic_by`) REFERENCES `users` (`idUsers`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

/*Data for the table `topics` */

insert  into `topics`(`topic_id`,`topic_subject`,`topic_detail`,`topic_date`,`topic_cat`,`topic_by`,`topic_img`,`topic_speaker`) values (53,'Sample Workshop','What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.','2023-05-30 00:00:00',8,40,'uploads/646b6ac93b0b66.07646008.jpg','John Wick'),(54,'Sample Workshop 120','What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nWhat is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nWhat is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.','2023-05-31 00:00:00',8,40,'uploads/646b6ac93b0b66.07646008.jpg','John Wick, Robert '),(55,'Sample 123','What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nWhat is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nWhat is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.','2023-05-30 00:00:00',8,40,'img/cover2.png','John Wick');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `idUsers` int(11) NOT NULL AUTO_INCREMENT,
  `userLevel` int(11) NOT NULL DEFAULT '0',
  `f_name` varchar(50) NOT NULL,
  `l_name` varchar(50) NOT NULL,
  `uidUsers` tinytext NOT NULL,
  `emailUsers` tinytext NOT NULL,
  `pwdUsers` longtext NOT NULL,
  `gender` char(1) NOT NULL,
  `headline` varchar(500) DEFAULT NULL,
  `bio` varchar(4000) DEFAULT NULL,
  `userImg` varchar(500) DEFAULT 'default.png',
  `preference` int(11) DEFAULT NULL,
  PRIMARY KEY (`idUsers`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

/*Data for the table `users` */

insert  into `users`(`idUsers`,`userLevel`,`f_name`,`l_name`,`uidUsers`,`emailUsers`,`pwdUsers`,`gender`,`headline`,`bio`,`userImg`,`preference`) values (24,1,'Crazy','Programmer','saad','muhammadsaad.crytek@gmail.com','$2y$10$NlmqH7ELe9VUFwLqWuFcv.2Js/8jJ36Jga3KWYvXFuaaQN4CzaEtO','m','CEO of Google and Tesla (Elon is my wife)','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','5c2268b62fa342.98640611.jpg',0),(25,0,'','','sadcat','a@a.a','$2y$10$RiiU91TqjjVhPdVpypQBtuq0etClplrZ3HNTLPFrUheJ.sy7ZifwK','f','','','5bf28f767563d4.32287587.jpg',0),(26,0,'','','crazyblogger','aaa@gmail.com','$2y$10$zXwVteLyKxjwSMDk.a8/HeoYzmfFInzvftURiCyt27z03mgbdkSNy','m','','','5c2097e915f3e7.13501262.jpg',0),(27,0,'','','vegetapoopoo','asd@asd.asd','$2y$10$S4X2HZUWyQXV7zLwirj2dOBVEbDHFDhsX6y91asglNa6QBnlq9ik.','f','','','5bf2ebf077fb14.69408796.gif',0),(29,0,'','','yhamster','anas.tasadduq@gmail.com','$2y$10$j5scT2dgJuZGBBYBFRsKVe.n50dLCjdYvcpY1Vy1.jES8f6ojulAi','m','','','5c03ad0de59709.45156405.jpg',0),(30,0,'','','Owais','owaisrehman110@gmail.com','$2y$10$EM.p1ed./gfrenQRn5Je1etujHptdTebKy8fgDU0de1wGqQvOOCcK','m','','','default.png',0),(31,0,'','','constipated','was@was.was','$2y$10$BnAjjEdfYa0koUab7jB2wuK/Hw5PEoRHMsIjuPOgFDK3umLLPnE2a','m','','                                Tell people about yourself\r\n                            ','5c2099a0e98e21.69993944.jpg',0),(32,0,'burhan','ahmed','progamer','qq@qq.qq','$2y$10$9RwEOoQi4i7BHcVuN9sihOQ156yAqPOi1/cGayAc83glZMUJ8B702','f','what to do with myself','aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa','5c1b521a779e33.90465765.jpg',0),(33,0,'soSaad','Seriously','sad','sad@sad.sad','$2y$10$MgXJs2KXFHDywcokNF.Ya.FubCPFkCV5WhvpzyDw7KioB.hImzjpS','m','','','5c1e837c23fbd4.49025477.jpg',0),(34,0,'aass','aass','designer','sss@sss.sss','$2y$10$a/DczAbcWogc9E.QVtQ27uaIaQKIY.qi.d7OSyOI/XHT.g.DCF0XG','f','hallo hallo','pls go die, seriously','5c20049a28f083.62453939.jpg',0),(35,0,'Anas','Tasadduq','aitasadduq','atasadduq.bese17seecs@seecs.edu.pk','$2y$10$mE..r1B9evnZeZ03CRmChO6hOCzWyzSOiciIjvYynq4atCtWBZtfy','m','I\'m great!','I don\'t really want to tell much about myself...','5c207f31c827d2.61541321.jpg',0),(36,0,'Ubaid','Asim','UbaidAsim','ubaidasim514@gmail.com','$2y$10$mJY/nezYA6PXFy0t.xXMyuVQOAdLi5I/ag.SWwUVFvHkZGcfqwd3S','m','Freelance Graphics and Brand Designer, Social Media Strategist','Software Engineering Student at SEECS, NUST','5c207f7341e066.29286370.jpg',0),(37,0,'Syed','Kamal','syedanaskamal','syedanaskamal@gmail.com','$2y$10$.fUUvM3BoaCPV9Blp8CobONwQpI1r6kSUnts.QTm3a9Yovo5le.N6','m','wassup','no','default.png',0),(38,0,'','','testuser','testuser@test.com','$2y$10$80YI6fiwFyOLHhn4CIOG/.xSAmkvG1L12LHGXjlNMdjwxeQCx/GNy','m','','','5c20b68db30f81.29224418.jpg',0),(39,0,'','','marium','ms.merium.fatima@gmail.com','$2y$10$l0AOTRif1CfL7pONxdOxHuyg4worYd4yagtUcom9u/LPeQs6n4ZN2','f','','','default.png',0),(40,0,'test','project','test','test@gmail.com','$2y$10$twy6XBp3ehK0r6BwS3gcmu/j6mJptK2WFGwlNJEMR5u70ffNx/uS2','m','testingHeadline','Telling something about me.','646a543c82c6a7.97175880.png',0),(41,0,'test','123','test123','test123@test.com','$2y$10$xV..B9pdSsL493u1jIneUOrtsOkGtYfMbpPPlYuk5ob9e9WBHOif2','f','testing','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.','646f6fc4062521.76600655.jpg',0),(43,0,'john','tate','john','john@test.com','$2y$10$NeFRYvcH.ipxlpp4aylOs.pRlVMBSeOjkv1QJ5xTL/5QnFD3QhgWu','m','testing','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.','647722115c7ff9.25415513.jpg',8);

/* Trigger structure for table `blogvotes` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `calc_blog_votes_after_insert` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'skip-grants user'@'skip-grants host' */ /*!50003 TRIGGER `calc_blog_votes_after_insert` AFTER INSERT ON `blogvotes` FOR EACH ROW BEGIN
	
	update blogs
        set blogs.blog_votes = blogs.blog_votes + new.vote
        where blogs.blog_id = new.voteBlog;	
		
    END */$$


DELIMITER ;

/* Trigger structure for table `blogvotes` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `calc_blog_votes_after_update` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'skip-grants user'@'skip-grants host' */ /*!50003 TRIGGER `calc_blog_votes_after_update` AFTER UPDATE ON `blogvotes` FOR EACH ROW BEGIN
	
		update blogs
        set blogs.blog_votes = blogs.blog_votes + (new.vote * 2)
        where blogs.blog_id = new.voteBlog;	
		
    END */$$


DELIMITER ;

/* Trigger structure for table `blogvotes` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `calc_blog_votes_after_delete` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'skip-grants user'@'skip-grants host' */ /*!50003 TRIGGER `calc_blog_votes_after_delete` AFTER DELETE ON `blogvotes` FOR EACH ROW BEGIN
		update blogs
        set blogs.blog_votes = blogs.blog_votes - old.vote
        where blogs.blog_id = old.voteBlog;	
END */$$


DELIMITER ;

/* Trigger structure for table `postvotes` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `calc_forum_votes_after_insert` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'skip-grants user'@'skip-grants host' */ /*!50003 TRIGGER `calc_forum_votes_after_insert` AFTER INSERT ON `postvotes` FOR EACH ROW BEGIN
	
	update posts
        set posts.post_votes = posts.post_votes + new.vote
        where posts.post_id = new.votePost;	
		
    END */$$


DELIMITER ;

/* Trigger structure for table `postvotes` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `calc_forum_votes_after_update` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'skip-grants user'@'skip-grants host' */ /*!50003 TRIGGER `calc_forum_votes_after_update` AFTER UPDATE ON `postvotes` FOR EACH ROW BEGIN
	
		update posts
        set posts.post_votes = posts.post_votes + (new.vote * 2)
        where posts.post_id = new.votePost;	
		
    END */$$


DELIMITER ;

/* Trigger structure for table `postvotes` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `calc_forum_votes_after_delete` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'skip-grants user'@'skip-grants host' */ /*!50003 TRIGGER `calc_forum_votes_after_delete` AFTER DELETE ON `postvotes` FOR EACH ROW BEGIN
		update posts
        set posts.post_votes = posts.post_votes - old.vote
        where posts.post_id = old.votePost;	
END */$$


DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
