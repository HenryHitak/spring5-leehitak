-- MySQL dump 10.13  Distrib 5.6.23, for Win64 (x86_64)
--
-- Host: localhost    Database: edu
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.13-MariaDB

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
-- Table structure for table `tbl_attach`
--

DROP TABLE IF EXISTS `tbl_attach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_attach` (
  `save_file_name` varchar(255) NOT NULL,
  `real_file_name` varchar(255) DEFAULT NULL COMMENT '첨부파일명',
  `bno` int(11) DEFAULT NULL COMMENT '부모게시물의 일련번호',
  `reg_date` timestamp NULL DEFAULT current_timestamp() COMMENT '등록일시',
  PRIMARY KEY (`save_file_name`),
  KEY `fk_tbl_attach_tbl_board_idx` (`bno`),
  CONSTRAINT `fk_tbl_attach_tbl_board` FOREIGN KEY (`bno`) REFERENCES `tbl_board` (`bno`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='게시물첨부파일';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_attach`
--

LOCK TABLES `tbl_attach` WRITE;
/*!40000 ALTER TABLE `tbl_attach` DISABLE KEYS */;
INSERT INTO `tbl_attach` VALUES ('523bb3ff-48cd-4b3d-8040-9690f43a92f4.jpg','호주.jpg',111,'2021-01-05 00:10:54'),('abc.jpg','입사지원서.jpg',99,'2020-12-28 00:53:55'),('abc2.jpg','입사지원서.jpg',99,'2020-12-29 00:53:55');
/*!40000 ALTER TABLE `tbl_attach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_board`
--

DROP TABLE IF EXISTS `tbl_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_board` (
  `bno` int(11) NOT NULL AUTO_INCREMENT COMMENT '게시물일련번호, AI(Auto Increament)일련번호를 자동증가기능',
  `board_type` varchar(45) DEFAULT NULL COMMENT '게시판 타입: 예,notice, gallery',
  `title` varchar(255) DEFAULT NULL COMMENT '게시물제목',
  `content` text DEFAULT NULL COMMENT '게시물내용',
  `writer` varchar(45) DEFAULT NULL COMMENT '작성자',
  `view_count` int(11) DEFAULT 0 COMMENT '게시글조회수',
  `reply_count` int(11) DEFAULT 0 COMMENT '댓글개수',
  `reg_date` timestamp NULL DEFAULT current_timestamp() COMMENT '등록일시',
  `update_date` timestamp NULL DEFAULT current_timestamp() COMMENT '수정일시',
  PRIMARY KEY (`bno`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8 COMMENT='게시물관리';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_board`
--

LOCK TABLES `tbl_board` WRITE;
/*!40000 ALTER TABLE `tbl_board` DISABLE KEYS */;
INSERT INTO `tbl_board` VALUES (1,'gallery','1번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:22:27','2020-12-23 03:22:27'),(2,'gallery','수정갤러리 LEE 번째 게시water 입니다.','게시물 내용 입니다.fgdsgfds','admin',27,0,'2020-12-23 04:52:47','2021-01-25 06:59:49'),(3,'gallery','3 번째 게시물입니다.','게시물 내용 입니다.','admin',2,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(4,'gallery','4 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(5,'gallery','5 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(6,'notice','6 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(7,'notice','7 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(8,'notice','8 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(9,'notice','9 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(10,'notice','10 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(11,'notice','11 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(12,'notice','12 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(13,'notice','13 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(14,'notice','14 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(15,'notice','15 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(16,'notice','16 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(17,'notice','17 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(18,'notice','18 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(19,'notice','19 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(20,'notice','20 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(21,'notice','21 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(22,'notice','22 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(23,'notice','23 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(24,'notice','24 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(25,'notice','25 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(26,'notice','26 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(27,'notice','27 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(28,'notice','28 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(29,'notice','29 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(30,'notice','30 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(31,'notice','31 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(32,'notice','32 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(33,'notice','33 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(34,'notice','34 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(35,'notice','35 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(36,'notice','36 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(37,'notice','37 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(38,'notice','38 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(39,'notice','39 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(40,'notice','40 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(41,'notice','41 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(42,'notice','42 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(43,'notice','43 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(44,'notice','44 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(45,'notice','45 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(46,'notice','46 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(47,'notice','47 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(48,'notice','48 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(49,'notice','49 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(50,'notice','50 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(51,'notice','51 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(52,'notice','52 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(53,'notice','53 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(54,'notice','54 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(55,'notice','55 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(56,'notice','56 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(57,'notice','57 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(58,'notice','58 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(59,'notice','59 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(60,'notice','60 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(61,'notice','61 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(62,'notice','62 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(63,'notice','63 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(64,'notice','64 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(65,'notice','65 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(66,'notice','66 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(67,'notice','67 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(68,'notice','68 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(69,'notice','69 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(70,'notice','70 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(71,'notice','71 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(72,'notice','72 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(73,'notice','73 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(74,'notice','74 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(75,'notice','75 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(76,'notice','76 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(77,'notice','77 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(78,'notice','78 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(79,'notice','79 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(80,'notice','80 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(81,'notice','81 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(82,'notice','82 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(83,'notice','83 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(84,'notice','84 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(85,'notice','85 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(86,'notice','86 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(87,'notice','87 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(88,'notice','88 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(89,'notice','89 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(90,'notice','90 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(91,'notice','91 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(92,'notice','92 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(93,'notice','93 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(94,'notice','94 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(95,'notice','95 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(96,'notice','96 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(97,'notice','97 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(98,'notice','98 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(99,'notice','99 번째 게시물입니다.','게시물 내용 입니다.','admin',7,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(100,'notice','100 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(101,'notice','101 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(102,'notice','102 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(103,'notice','103 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(104,'notice','104 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(105,'notice','105 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(106,'notice','106 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(107,'notice','107 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(108,'notice','108 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(109,'notice','109 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(110,'notice','110 번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:52:47','2020-12-23 04:52:47'),(111,'notice','sdafsafdsafdsa','<p>sdafadsfds<br></p>','dsfasdf',23,0,'2021-01-04 01:47:55','2021-01-05 00:30:32'),(112,'notice','수정dfdsafdsafddddd','<p>fdsafdsaf<br></p>','safdsafsdaf',45,0,'2021-01-04 01:48:57','2021-01-25 06:56:39');
/*!40000 ALTER TABLE `tbl_board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_board_type`
--

DROP TABLE IF EXISTS `tbl_board_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_board_type` (
  `board_type` varchar(45) NOT NULL,
  `board_name` varchar(45) DEFAULT NULL,
  `board_sun` int(11) DEFAULT NULL,
  PRIMARY KEY (`board_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_board_type`
--

LOCK TABLES `tbl_board_type` WRITE;
/*!40000 ALTER TABLE `tbl_board_type` DISABLE KEYS */;
INSERT INTO `tbl_board_type` VALUES ('gallery','갤러리',2),('notice','이벤트',1),('test','테스트',3);
/*!40000 ALTER TABLE `tbl_board_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_member`
--

DROP TABLE IF EXISTS `tbl_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_member` (
  `user_id` varchar(45) NOT NULL COMMENT '회원아이디',
  `user_pw` varchar(255) DEFAULT NULL COMMENT '회원 로그인 암호',
  `user_name` varchar(255) DEFAULT NULL COMMENT '회원 이름',
  `email` varchar(255) DEFAULT NULL COMMENT '회원 이메일',
  `point` int(11) DEFAULT 0 COMMENT '회원 적립포인트',
  `enabled` int(1) DEFAULT 1 COMMENT '인증값(Authentication),활동 가능한 회원 여부, 0 로그인불가능, 1 로그인가능',
  `levels` varchar(45) DEFAULT 'ROLE_USER' COMMENT '권한값(Authority),2가지 레벨, ROLE_ADMIN(관리자), ROLE_USER(사용자)',
  `reg_date` timestamp NULL DEFAULT current_timestamp() COMMENT '등록일자,1970부터 초단위로 현재까지 계산한 값',
  `update_date` timestamp NULL DEFAULT current_timestamp() COMMENT '수정일자',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='회원관리';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_member`
--

LOCK TABLES `tbl_member` WRITE;
/*!40000 ALTER TABLE `tbl_member` DISABLE KEYS */;
INSERT INTO `tbl_member` VALUES ('admin','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','홍길동','test@test.com',100,1,'ROLE_ADMIN','2020-12-23 03:04:51','2020-12-23 08:27:43'),('dummy_1','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_10','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_100','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_101','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_102','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_103','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_104','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_105','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_106','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_107','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_108','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_109','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_11','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_110','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_12','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_13','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_14','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_15','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_16','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_17','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_18','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_19','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_2','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_20','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_21','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_22','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_23','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_24','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_25','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_26','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_27','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_28','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_29','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_3','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_30','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_31','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_32','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_33','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_34','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_35','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_36','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_37','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_38','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_39','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_4','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_40','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_41','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_42','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_43','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_44','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_45','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_46','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_47','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_48','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_49','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_5','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_50','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_51','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_52','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_53','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_54','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_55','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_56','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_57','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_58','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_59','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_6','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_60','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_61','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_62','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_63','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_64','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_65','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_66','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_67','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_68','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_69','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_7','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_70','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_71','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_72','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_73','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_74','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_75','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_76','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_77','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_78','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_79','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_8','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_80','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_81','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_82','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_83','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_84','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_85','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_86','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_87','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_88','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_89','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_9','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_90','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_91','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_92','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_93','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_94','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_95','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_96','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_97','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_98','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('dummy_99','1234','관리자','admi@abc.com',0,1,'ROLE_ADMIN','2020-12-23 04:51:28','2020-12-23 04:51:28'),('user_20201223172035989','1234','사용자03','user03@abc.com',100,1,'ROLE_USER','2020-12-23 08:20:36','2020-12-23 08:20:36'),('user_20201223172743855','1234','사용자03','user03@abc.com',100,1,'ROLE_USER','2020-12-23 08:27:43','2020-12-23 08:27:43');
/*!40000 ALTER TABLE `tbl_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_reply`
--

DROP TABLE IF EXISTS `tbl_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_reply` (
  `rno` int(11) NOT NULL AUTO_INCREMENT COMMENT '댓글의 일련번호',
  `bno` int(11) NOT NULL COMMENT '부모게시물의 일련번호',
  `reply_text` varchar(1000) DEFAULT NULL COMMENT '댓글내용',
  `replyer` varchar(45) DEFAULT NULL COMMENT '작성자',
  `reg_date` timestamp NULL DEFAULT current_timestamp() COMMENT '등록일시',
  `update_date` timestamp NULL DEFAULT current_timestamp() COMMENT '수정일시',
  PRIMARY KEY (`rno`),
  KEY `fk_tbl_reply_tbl_board1_idx` (`bno`),
  CONSTRAINT `fk_tbl_reply_tbl_board1` FOREIGN KEY (`bno`) REFERENCES `tbl_board` (`bno`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='댓글관리';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_reply`
--

LOCK TABLES `tbl_reply` WRITE;
/*!40000 ALTER TABLE `tbl_reply` DISABLE KEYS */;
INSERT INTO `tbl_reply` VALUES (1,111,'댓글입력테스트','관리자','2021-01-05 00:27:12','2021-01-05 00:27:12'),(2,111,'수정 댓글 테스트','관리자','2021-01-06 01:57:32','2021-01-06 01:58:24');
/*!40000 ALTER TABLE `tbl_reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'edu'
--
/*!50003 DROP PROCEDURE IF EXISTS `dummyBoard` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `dummyBoard`(IN p_loop int)
BEGIN
	declare cnt int default 2;
    delete from tbl_board where bno > 1;
	while cnt <= p_loop do
    INSERT INTO tbl_member(bno,title,content,writer)
    VALUES
    (cnt, concat(cnt,' 번째 게시물입니다.'), '게시물 내용 입니다.', 'admin');
    set cnt = cnt + 1;
    end while;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `dummyMember` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `dummyMember`(IN p_loop int)
BEGIN
	declare cnt int default 1;#반복문 필드변수 선언
    delete from tbl_member where user_id like 'dummy%';
    while cnt <= p_loop do
	INSERT INTO tbl_member (user_id,user_pw,user_name,email,point,enabled,levels) 
    VALUES 
    (concat('dummy_', '1234', '관리자', 'admi@abc.com', '0', '1', 'ROLE_ADMIN'));
	set cnt = cnt + 1;
    end while;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-26 16:01:17
