-- MariaDB dump 10.19  Distrib 10.5.9-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: ccny
-- ------------------------------------------------------
-- Server version	10.5.9-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `college`
--

DROP TABLE IF EXISTS `college`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `college` (
  `name` varchar(200) NOT NULL,
  `location` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `college`
--

LOCK TABLES `college` WRITE;
/*!40000 ALTER TABLE `college` DISABLE KEYS */;
INSERT INTO `college` VALUES ('CCNY','New York');
/*!40000 ALTER TABLE `college` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course` (
  `code` varchar(20) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES ('CSC 10300','Introduction to Computing for Majors'),('CSC 10400','Discrete Mathematical Structures I'),('CSC 11300','Programming Lang'),('CSC 21100','Fundamentals of Computer Systems'),('CSC 21200','Data Structures');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_info`
--

DROP TABLE IF EXISTS `course_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_info` (
  `code` varchar(20) NOT NULL,
  `section` varchar(10) NOT NULL,
  `instructor_id` int(10) DEFAULT NULL,
  `school` varchar(200) DEFAULT NULL,
  `day` varchar(10) DEFAULT NULL,
  `start_time` varchar(10) DEFAULT NULL,
  `end_time` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`code`,`section`),
  KEY `instructor_id` (`instructor_id`),
  KEY `school` (`school`),
  CONSTRAINT `course_info_ibfk_1` FOREIGN KEY (`code`) REFERENCES `course` (`code`),
  CONSTRAINT `course_info_ibfk_2` FOREIGN KEY (`instructor_id`) REFERENCES `instructor_info` (`id`),
  CONSTRAINT `course_info_ibfk_3` FOREIGN KEY (`school`) REFERENCES `college` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_info`
--

LOCK TABLES `course_info` WRITE;
/*!40000 ALTER TABLE `course_info` DISABLE KEYS */;
INSERT INTO `course_info` VALUES ('CSC 10300','CC1',11539,'CCNY','TuTh','11:00AM','11:50AM'),('CSC 10300','MM1',11540,'CCNY','TuTh','11:00AM','11:50AM'),('CSC 10400','EF1',11541,'CCNY','MoWe','02:00PM','03:40PM'),('CSC 10400','PR1',11542,'CCNY','TuTh','02:00PM','03:40PM'),('CSC 11300','2L',11543,'CCNY','Tu','09:30AM','10:45AM'),('CSC 21100','CC1',11544,'CCNY','MoWe','11:00AM','12:15PM'),('CSC 21200','EF',11545,'CCNY','MoWe','02:00PM','03:40PM'),('CSC 21200','LM',11546,'CCNY','TuTh','10:00AM','11:40AM');
/*!40000 ALTER TABLE `course_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_requirements`
--

DROP TABLE IF EXISTS `course_requirements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_requirements` (
  `code` varchar(200) NOT NULL,
  `prerequisite_1` varchar(200) DEFAULT NULL,
  `prerequisite_2` varchar(200) DEFAULT NULL,
  `corequisite` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`code`),
  CONSTRAINT `course_requirements_ibfk_1` FOREIGN KEY (`code`) REFERENCES `course` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_requirements`
--

LOCK TABLES `course_requirements` WRITE;
/*!40000 ALTER TABLE `course_requirements` DISABLE KEYS */;
INSERT INTO `course_requirements` VALUES ('CSC 10300','MATH 19500',NULL,'Math 20100'),('CSC 10400','MATH 20100',NULL,NULL),('CSC 11300','CSC 10300',NULL,NULL),('CSC 21100','CSC 10300',NULL,NULL),('CSC 21200','CSC 10300','CSC 10400',NULL);
/*!40000 ALTER TABLE `course_requirements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedback` (
  `instructor_id` int(10) NOT NULL,
  `rating` decimal(2,1) DEFAULT NULL,
  `difficulty` decimal(2,1) DEFAULT NULL,
  `take_again` varchar(5) DEFAULT NULL,
  `review` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`instructor_id`),
  CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`instructor_id`) REFERENCES `instructor_info` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (11539,1.6,4.7,'16%','While this class is difficult and there\'s assignment after assignment, I\'ve actually learned a lot in this class. Moti is always open to help her students by both emails and office hours. The key is to study and practice, and ask her for help when you need help. She is very kind and cares about her students. Definitely one of the best prof.'),(11540,3.8,4.0,'73%','One of the best professors in City College. We learned Unix and C++ simultaneously. He really knows how to communicate with students. His metaphors helps you understands the concepts. The projects are pure gold. The TODOs are really helpful to prepare for the exams. I feel ready for Data Structures!!'),(11541,4.0,3.0,'100%',NULL),(11542,4.4,3.0,'89%','Discrete Mathematical Structures is not an easy class. However, professor Vatandas tries her best to explain the concepts in a clear and concise way with great notes. She stops to explain anything any student may be confused on until the student understands the idea.'),(11543,4.2,4.0,'85%','Hes one of the best professors in the compsci department, if not the best. There is a reason why his class fills up very fast. I am grateful I was able to be his student. His teaching style is on point and he explains everything very well.'),(11544,3.1,4.0,'60%','Professor Peng tries to make this class easier for his students. I would recommend really trying to understand the material and reading the textbook because this class is really difficult without it. The homework are pretty straight forward and I found the projects pretty difficult. Exams are doable but the final was 7 hours long! Put in the work.'),(11545,4.3,3.3,'100%','He is most likely the best option take for Data Structures at CCNY. 6 coding projects, more than 10 pop up quizzes, 3 exams, just remember to keep up with class every week otherwise, it\'ll be too hard to catch up. Make sure to study the textbook. Overall, easy to handle this class with him. He is funny too. Good luck.'),(11546,4.1,3.2,'100%','Fantastic lectures. Seriously. Professor Wolberg is an expert in his field and it shows. I learned a lot from his course during our fall semester. Occasionally I did get lost, but he\'s very quick to answer any question. Overall, I\'d say I definitely learned something from this class which says a lot about how effectively he teaches the material.');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instructor_info`
--

DROP TABLE IF EXISTS `instructor_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instructor_info` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(200) DEFAULT NULL,
  `last_name` varchar(200) DEFAULT NULL,
  `position` varchar(100) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `office_days` varchar(10) DEFAULT NULL,
  `office_hour_start` varchar(20) DEFAULT NULL,
  `office_hour_end` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11547 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instructor_info`
--

LOCK TABLES `instructor_info` WRITE;
/*!40000 ALTER TABLE `instructor_info` DISABLE KEYS */;
INSERT INTO `instructor_info` VALUES (11539,'Motahare','Mounesan','Adjunct Faculty','mmounesan@ccny.cuny.edu','Wed','12:00PM','01:00PM'),(11540,'William','Skeith','Associate Professor','wskeith@ccny.cuny.edu','Thu','12:30PM','02:30PM'),(11541,'Tahereh','Jafarikhah','Adjunct Faculty','tjafarikhah@ccny.cuny.edu','Wed','01:00PM','02:00PM'),(11542,'Nihal','Vatandas','PhD Student','nvatandas@gc.cuny.edu',NULL,NULL,NULL),(11543,'Ahmet','Yuksel','Adjunct Faculty','ayuksel@ccny.cuny.edu','MonWed','11:30AM','12:30PM'),(11544,'Zheng','Peng','Assistant Professor','zpeng@ccny.cuny.edu','MonWed','10:00AM','11:00AM'),(11545,'Zhigang','Zhu','Professor','zzhu@ccny.cuny.edu','Wed','04:00PM','05:00PM'),(11546,'George','Wolberg','Professor','wolberg@ccny.cuny.edu','Tue','03:15PM','04:15PM');
/*!40000 ALTER TABLE `instructor_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resources`
--

DROP TABLE IF EXISTS `resources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resources` (
  `course` varchar(200) NOT NULL,
  `textbook_isbn` varchar(13) DEFAULT NULL,
  PRIMARY KEY (`course`),
  KEY `textbook_isbn` (`textbook_isbn`),
  CONSTRAINT `resources_ibfk_1` FOREIGN KEY (`textbook_isbn`) REFERENCES `textbook` (`isbn`),
  CONSTRAINT `resources_ibfk_2` FOREIGN KEY (`course`) REFERENCES `course` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resources`
--

LOCK TABLES `resources` WRITE;
/*!40000 ALTER TABLE `resources` DISABLE KEYS */;
INSERT INTO `resources` VALUES ('CSC 10400',NULL),('CSC 21100','9780131863897'),('CSC 21200','9780132129480'),('CSC 10300','9781394082742'),('CSC 11300','9781593279288');
/*!40000 ALTER TABLE `resources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `textbook`
--

DROP TABLE IF EXISTS `textbook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `textbook` (
  `isbn` varchar(13) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `author` varchar(200) DEFAULT NULL,
  `publisher` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`isbn`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `textbook`
--

LOCK TABLES `textbook` WRITE;
/*!40000 ALTER TABLE `textbook` DISABLE KEYS */;
INSERT INTO `textbook` VALUES ('9780131863897','Digital Design: Principles and Practices','John F. Wakerly','Pearson'),('9780132129480','Data Structures and Other Objects using C++','Michael Main','Pearson'),('9781394082742','Introduction to Computing','CUNY','zyBooks'),('9781593279288','Python Crash Course (2nd Edition)','Eric Matthes','No Starch Press');
/*!40000 ALTER TABLE `textbook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'ccny'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-27  1:31:00
