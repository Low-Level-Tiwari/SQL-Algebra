-- MySQL dump 10.13  Distrib 8.0.31, for Linux (x86_64)
--
-- Host: localhost    Database: foxodd
-- ------------------------------------------------------
-- Server version	8.0.31-0ubuntu0.20.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class` (
  `room_id` varchar(20) NOT NULL,
  `course_id` varchar(20) NOT NULL,
  `section_id` varchar(20) NOT NULL,
  `faculty_id` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `duration` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`room_id`,`course_id`,`section_id`,`faculty_id`,`date`,`time`),
  KEY `faculty_id` (`faculty_id`),
  KEY `course_id` (`course_id`,`section_id`),
  CONSTRAINT `class_ibfk_1` FOREIGN KEY (`faculty_id`) REFERENCES `faculty` (`faculty_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `class_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `class_ibfk_3` FOREIGN KEY (`course_id`, `section_id`) REFERENCES `section` (`course_id`, `section_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class`
--

LOCK TABLES `class` WRITE;
/*!40000 ALTER TABLE `class` DISABLE KEYS */;
INSERT INTO `class` VALUES ('101','CID102','SEC103','F101','2023-01-12','11:00:00','2'),('101','CID102','SEC103','F101','2023-01-15','11:00:00','2'),('101','CID102','SEC103','F101','2023-01-19','11:00:00','2'),('101','CID102','SEC103','F101','2023-02-12','11:00:00','2'),('101','CID102','SEC103','F101','2023-02-17','15:00:00','2'),('101','CID104','SEC101','F102','2024-09-12','14:00:00','1'),('101','CID105','SEC103','F103','2023-01-11','10:00:00','2'),('101','CID105','SEC103','F103','2023-02-11','10:00:00','2'),('101','CID105','SEC103','F103','2023-02-15','10:00:00','2'),('101','CID105','SEC103','F103','2023-02-21','10:00:00','2'),('101','CID106','SEC101','F104','2020-03-12','15:00:00','1'),('101','CID110','SEC101','F107','2024-12-12','11:00:00','2'),('102','CID103','SEC101','F102','2023-01-17','15:00:00','2'),('102','CID103','SEC101','F102','2023-01-25','15:00:00','2'),('102','CID106','SEC103','F104','2023-01-12','10:00:00','2'),('102','CID106','SEC103','F104','2023-01-22','10:00:00','2'),('102','CID106','SEC103','F104','2023-01-27','10:00:00','2'),('102','CID106','SEC103','F104','2023-02-21','10:00:00','2'),('102','CID106','SEC103','F104','2023-03-10','10:00:00','2'),('102','CID108','SEC101','F105','2022-03-12','11:00:00','2'),('102','CID109','SEC101','F106','2023-11-12','11:00:00','2'),('102','CID109','SEC101','F109','2023-01-10','17:00:00','3'),('102','CID109','SEC101','F109','2023-01-12','17:00:00','3'),('102','CID109','SEC101','F109','2023-01-19','17:00:00','3'),('102','CID109','SEC101','F109','2023-02-19','17:00:00','3'),('102','CID109','SEC101','F109','2023-02-28','17:00:00','3'),('102','CID109','SEC101','F109','2023-03-28','17:00:00','3'),('102','CID109','SEC101','F109','2023-04-02','17:00:00','3'),('102','CID111','SEC101','F108','2019-09-13','15:00:00','1'),('103','CID101','SEC101','F101','2019-04-12','11:00:00','1'),('103','CID101','SEC102','F102','2020-05-20','10:00:00','2'),('103','CID102','SEC101','F101','2021-03-12','15:00:00','2'),('103','CID102','SEC102','F102','2022-08-12','15:00:00','2'),('103','CID104','SEC104','F101','2023-01-27','17:00:00','3'),('103','CID104','SEC104','F101','2023-01-31','17:00:00','3'),('103','CID104','SEC104','F101','2023-02-22','17:00:00','3'),('103','CID104','SEC104','F101','2023-03-13','17:00:00','3'),('103','CID114','SEC101','F109','2022-03-13','11:00:00','1'),('103','CID115','SEC101','F110','2023-01-17','10:00:00','2'),('103','CID115','SEC101','F110','2023-01-20','10:00:00','2'),('103','CID115','SEC101','F110','2023-01-27','10:00:00','2'),('103','CID115','SEC101','F110','2023-02-12','10:00:00','2'),('103','CID115','SEC101','F110','2023-02-27','10:00:00','2'),('103','CID115','SEC101','F110','2023-03-07','10:00:00','2'),('103','CID115','SEC101','F110','2023-03-20','10:00:00','2'),('103','CID115','SEC101','F110','2023-03-26','10:00:00','2'),('103','CID115','SEC101','F110','2023-04-16','10:00:00','2'),('103','CID115','SEC101','F110','2023-04-24','10:00:00','2'),('104','CID101','SEC102','F102','2020-04-13','11:00:00','1'),('104','CID103','SEC102','F102','2023-01-13','14:00:00','2'),('104','CID103','SEC102','F102','2023-02-09','14:00:00','2'),('104','CID103','SEC102','F102','2023-03-13','14:00:00','2'),('104','CID105','SEC101','F103','2019-05-12','11:00:00','2'),('104','CID105','SEC101','F103','2019-09-12','11:00:00','2'),('104','CID107','SEC101','F103','2021-03-14','11:00:00','1'),('104','CID111','SEC101','F108','2019-05-12','15:00:00','2'),('104','CID112','SEC101','F107','2020-05-12','11:00:00','1'),('104','CID113','SEC102','F107','2023-01-15','17:00:00','2'),('104','CID113','SEC102','F107','2023-01-24','17:00:00','2'),('104','CID113','SEC102','F107','2023-02-04','17:00:00','2'),('104','CID113','SEC102','F107','2023-02-14','17:00:00','2'),('104','CID113','SEC102','F107','2023-03-07','17:00:00','2'),('104','CID113','SEC102','F107','2023-03-23','17:00:00','2'),('104','CID113','SEC102','F107','2023-04-17','17:00:00','2'),('105','CID103','SEC101','F101','2023-08-12','15:00:00','2'),('105','CID103','SEC101','F102','2023-02-02','15:00:00','2'),('105','CID104','SEC101','F102','2024-05-12','11:00:00','2'),('105','CID111','SEC101','F108','2019-09-12','15:00:00','1'),('105','CID112','SEC103','F107','2023-01-12','10:00:00','2'),('105','CID112','SEC103','F107','2023-01-17','10:00:00','2'),('105','CID112','SEC103','F107','2023-02-11','10:00:00','2'),('105','CID112','SEC103','F107','2023-03-13','10:00:00','2'),('105','CID112','SEC103','F107','2023-03-23','10:00:00','2'),('105','CID112','SEC103','F107','2023-04-02','10:00:00','2'),('105','CID113','SEC101','F108','2021-03-13','11:00:00','2'),('105','CID115','SEC101','F110','2023-03-12','15:00:00','1');
/*!40000 ALTER TABLE `class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `course_id` varchar(20) NOT NULL,
  `course_name` varchar(60) DEFAULT NULL,
  `credits` int DEFAULT NULL,
  `dept_id` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`course_id`),
  KEY `dept_id` (`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES ('CID101','CS101',4,'D101'),('CID102','CS102',4,'D101'),('CID103','CA101',4,'D101'),('CID104','CA102',4,'D101'),('CID105','ML101',4,'D102'),('CID106','ML102',4,'D102'),('CID107','DS',4,'D102'),('CID108','History',4,'D103'),('CID109','Geography',4,'D103'),('CID110','CC101',4,'D104'),('CID111','CC102',4,'D104'),('CID112','MA101',4,'D104'),('CID113','MA102',4,'D104'),('CID114','BI',4,'D105'),('CID115','DR',4,'D105');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `dept_id` varchar(20) NOT NULL,
  `dept_name` varchar(60) DEFAULT NULL,
  `dept_location` varchar(100) DEFAULT NULL,
  `school_id` varchar(20) DEFAULT NULL,
  `chair_id` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`dept_id`),
  KEY `school_id` (`school_id`),
  KEY `chair_id` (`chair_id`),
  CONSTRAINT `department_ibfk_1` FOREIGN KEY (`school_id`) REFERENCES `school` (`school_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `department_ibfk_2` FOREIGN KEY (`chair_id`) REFERENCES `faculty` (`faculty_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES ('D101','Computer Science','Pune','SC103','F101'),('D102','Data Science','Pune','SC103','F103'),('D103','Arts','Shivajinagar','SC102','F105'),('D104','Scientific Computing','FC road','SC101','F107'),('D105','Biotechnology','Thane','SC101','F109'),('D106','Cyber Security','Mumbai','SC103',NULL),('D107','Bioinformatics','Pune','SC101',NULL);
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enrol`
--

DROP TABLE IF EXISTS `enrol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enrol` (
  `student_id` varchar(20) NOT NULL,
  `course_id` varchar(20) NOT NULL,
  `section_id` varchar(10) NOT NULL,
  `semester` varchar(10) DEFAULT NULL,
  `year` int DEFAULT NULL,
  `grade` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`student_id`,`course_id`,`section_id`),
  KEY `course_id` (`course_id`,`section_id`),
  CONSTRAINT `enrol_ibfk_1` FOREIGN KEY (`course_id`, `section_id`) REFERENCES `section` (`course_id`, `section_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `enrol_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `student` (`stud_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enrol`
--

LOCK TABLES `enrol` WRITE;
/*!40000 ALTER TABLE `enrol` DISABLE KEYS */;
INSERT INTO `enrol` VALUES ('22111001','CID101','SEC101','odd ',2019,'pass'),('22111001','CID102','SEC101','even',2020,'pass'),('22111001','CID103','SEC101','odd',2021,'fail'),('22111002','CID106','SEC101','odd',2022,'pass'),('22111002','CID107','SEC101','odd ',2019,'pass'),('22111003','CID108','SEC101','even',2020,'pass'),('22111003','CID109','SEC101','odd',2021,'pass'),('22111004','CID110','SEC101','odd',2022,'fail'),('22111004','CID111','SEC101','odd ',2019,'pass'),('22111005','CID107','SEC101','even',2019,'pass'),('22111005','CID112','SEC101','even',2020,'pass'),('22111005','CID113','SEC101','odd',2021,'pass'),('22111005','CID114','SEC101','odd',2022,'pass'),('22111005','CID115','SEC101','odd ',2019,'fail'),('22111006','CID103','SEC101','even',2020,'pass'),('22111006','CID104','SEC101','odd',2021,'pass'),('22111007','CID105','SEC101','odd',2022,'pass'),('22111008','CID108','SEC101','odd ',2019,'pass'),('22111009','CID110','SEC101','even',2020,'fail'),('22111010','CID114','SEC101','odd',2022,'pass'),('22111010','CID115','SEC101','odd',2021,'pass'),('22111011','CID101','SEC102','odd ',2019,'pass'),('22111014','CID105','SEC101','even',2020,'pass'),('22111015','CID108','SEC101','odd',2021,'fail'),('22111016','CID110','SEC101','odd',2022,'pass'),('22111018','CID101','SEC101','even',2020,'pass'),('22111019','CID105','SEC101','odd',2021,'pass'),('22111020','CID108','SEC101','odd',2022,'fail'),('22111022','CID110','SEC101','odd ',2019,'pass'),('22111023','CID114','SEC101','odd',2021,'pass'),('22111023','CID115','SEC101','even',2020,'pass'),('22111024','CID101','SEC101','odd',2022,'pass'),('22111025','CID105','SEC101','odd ',2019,'fail'),('22111026','CID108','SEC101','even',2020,'pass'),('22111027','CID110','SEC101','odd',2021,'pass'),('22111028','CID114','SEC101','odd',2022,'pass'),('22111028','CID115','SEC101','odd ',2019,'pass'),('22111029','CID102','SEC102','even',2020,'fail'),('22111030','CID105','SEC101','odd',2021,'pass'),('22111031','CID108','SEC101','odd',2022,'pass'),('22111032','CID110','SEC101','odd ',2019,'pass'),('22111033','CID114','SEC101','even',2020,'pass'),('22111033','CID115','SEC101','odd',2021,'fail'),('22112001','CID101','SEC101','odd',2020,'pass');
/*!40000 ALTER TABLE `enrol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faculty`
--

DROP TABLE IF EXISTS `faculty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faculty` (
  `faculty_id` varchar(20) NOT NULL,
  `faculty_name` varchar(60) DEFAULT NULL,
  `salary` int DEFAULT NULL,
  `dept_id` varchar(20) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  PRIMARY KEY (`faculty_id`),
  KEY `dept_id` (`dept_id`),
  CONSTRAINT `faculty_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `department` (`dept_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculty`
--

LOCK TABLES `faculty` WRITE;
/*!40000 ALTER TABLE `faculty` DISABLE KEYS */;
INSERT INTO `faculty` VALUES ('F_112','Shraddha',270000,NULL,'F'),('F101','SONAM BHUTIA',160000,'D101','F'),('F102','DIWA GURUNG',123967,'D101','F'),('F103','NISHAD RANA',195114,'D102','M'),('F104','MD SAFIUR RAHMAN',264109,'D102','M'),('F105','BISNAMANI RAI',111591,'D103','M'),('F106','LASANG TAMANG',252348,'D103','M'),('F107','SIWANI RAI',105552,'D104','F'),('F108','ERA RAI',175533,'D104','F'),('F109','TARA RAI',80132,'D105','F'),('F110','SANTOSH RAI',65856,'D105','M'),('F111','Ria',10000,NULL,'F');
/*!40000 ALTER TABLE `faculty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `major`
--

DROP TABLE IF EXISTS `major`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `major` (
  `major_id` varchar(20) NOT NULL,
  `major_name` varchar(60) DEFAULT NULL,
  `dept_id` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`major_id`),
  KEY `dept_id` (`dept_id`),
  CONSTRAINT `major_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `department` (`dept_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `major`
--

LOCK TABLES `major` WRITE;
/*!40000 ALTER TABLE `major` DISABLE KEYS */;
INSERT INTO `major` VALUES ('M101','Computer Science','D101'),('M102','Computer Application','D101'),('M103','Machine Learning','D102'),('M104','Data Science','D102'),('M105','Arts','D103'),('M106','Computational Chemistry','D104'),('M107','Mathematical Analytics','D104'),('M108','Bioinformatics','D105'),('M109','Drug research','D105');
/*!40000 ALTER TABLE `major` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prerequisite`
--

DROP TABLE IF EXISTS `prerequisite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prerequisite` (
  `course_id` varchar(20) NOT NULL,
  `prereq_id` varchar(20) NOT NULL,
  PRIMARY KEY (`course_id`,`prereq_id`),
  KEY `prereq_id` (`prereq_id`),
  CONSTRAINT `prerequisite_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `prerequisite_ibfk_2` FOREIGN KEY (`prereq_id`) REFERENCES `course` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prerequisite`
--

LOCK TABLES `prerequisite` WRITE;
/*!40000 ALTER TABLE `prerequisite` DISABLE KEYS */;
INSERT INTO `prerequisite` VALUES ('CID101','CID107'),('CID102','CID107'),('CID103','CID107'),('CID104','CID107'),('CID105','CID107'),('CID106','CID107'),('CID101','CID112'),('CID102','CID112'),('CID103','CID112'),('CID104','CID112'),('CID105','CID112'),('CID106','CID112'),('CID107','CID112'),('CID114','CID112'),('CID115','CID112'),('CID102','CID113'),('CID103','CID113'),('CID104','CID113'),('CID105','CID113'),('CID106','CID113'),('CID107','CID113'),('CID114','CID113'),('CID115','CID113');
/*!40000 ALTER TABLE `prerequisite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room` (
  `room_id` varchar(10) NOT NULL,
  `floor_no` int DEFAULT NULL,
  `building_no` varchar(10) DEFAULT NULL,
  `capacity` int DEFAULT NULL,
  PRIMARY KEY (`room_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` VALUES ('101',1,'1',60),('102',2,'1',70),('103',1,'2',60),('104',2,'2',50),('105',1,'3',60);
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sample`
--

DROP TABLE IF EXISTS `sample`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sample` (
  `stud_id` varchar(20) NOT NULL,
  `stud_name` varchar(60) DEFAULT NULL,
  `total_credits` int DEFAULT NULL,
  `dept_id` varchar(20) DEFAULT NULL,
  `advisor_id` varchar(20) DEFAULT NULL,
  `dob` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sample`
--

LOCK TABLES `sample` WRITE;
/*!40000 ALTER TABLE `sample` DISABLE KEYS */;
INSERT INTO `sample` VALUES ('22111001','ABHISHEK',16,'D101','F101','2000-01-15'),('22111002','ADITI',22,'D102','F103','2000-01-17'),('22111003','ADITYA',18,'D103','F105','2001-01-31'),('22111004','AKSHAY',22,'D104','F107','2002-02-04'),('22111005','AMIT',18,'D105','F109','2001-02-19'),('22111006','AVANTIKA',20,'D101','F101','2000-03-15'),('22111007','AKASH',16,'D102','F103','1999-03-20'),('22111008','GOKUL',18,'D103','F105','2002-04-26'),('22111009','ATHARVA',22,'D104','F107','2001-04-29'),('22111010','ASHWIN',16,'D105','F109','1999-05-15'),('22111011','SAIKUMAR',16,'D101','F101','2001-01-31'),('22111014','DEEPAK',18,'D102','F103','2000-06-01'),('22111015','GAURI',18,'D103','F105','2001-07-21'),('22111016','TEJAS',16,'D104','F107','2002-06-21'),('22111017','PRAVIN',22,'D105','F109','2001-07-11'),('22111018','AADITYA',20,'D101','F101','2003-06-16'),('22111019','LAXMAN',22,'D102','F103','1999-06-16'),('22111020','ROHIT',18,'D103','F105','2000-08-15'),('22111022','TEJAS',18,'D104','F107','2000-08-27'),('22111023','SHUBHAM',20,'D105','F109','2000-09-01'),('22111024','VISHAL',20,'D101','F101','2000-09-11'),('22111025','BRAMHANAND',22,'D102','F103','2000-09-17'),('22111026','SNEHAL',22,'D103','F105','2001-08-12'),('22111027','KARTIK',22,'D104','F107','2000-10-02'),('22111028','HARSHAL',20,'D105','F109','2001-10-19'),('22111029','VARDHAMAN',18,'D101','F101','2001-10-22'),('22111030','SAGAR',20,'D102','F103','2000-09-10'),('22111031','VISHAL',18,'D103','F105','2001-09-10'),('22111032','KIRAN',22,'D104','F107','1999-09-23'),('22111033','MADHURA',16,'D105','F109','2000-01-20'),('22112001','Anjali',16,'D101','F102','2003-07-16');
/*!40000 ALTER TABLE `sample` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school`
--

DROP TABLE IF EXISTS `school`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `school` (
  `school_id` varchar(20) NOT NULL,
  `school_name` varchar(60) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `dean_name` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`school_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school`
--

LOCK TABLES `school` WRITE;
/*!40000 ALTER TABLE `school` DISABLE KEYS */;
INSERT INTO `school` VALUES ('SC101','School of Applied Science','Lalit Chowk Near French Garden Wagholi Road Pune','Senku Ishigami'),('SC102','School of Arts','University Road Pune','Vardhaman Katariya'),('SC103','School of Computer Science','Walvekar Nagar Pune','Bruce Wayne');
/*!40000 ALTER TABLE `school` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section`
--

DROP TABLE IF EXISTS `section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `section` (
  `course_id` varchar(20) NOT NULL,
  `section_id` varchar(20) NOT NULL,
  `semester` varchar(10) DEFAULT NULL,
  `year` int DEFAULT NULL,
  PRIMARY KEY (`course_id`,`section_id`),
  KEY `sec` (`section_id`),
  CONSTRAINT `section_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section`
--

LOCK TABLES `section` WRITE;
/*!40000 ALTER TABLE `section` DISABLE KEYS */;
INSERT INTO `section` VALUES ('CID101','SEC101','odd',2019),('CID101','SEC102','odd',2020),('CID101','SEC103','even',2020),('CID101','SEC104','even',2019),('CID102','SEC101','odd',2021),('CID102','SEC102','even',2022),('CID102','SEC103','odd',2023),('CID102','SEC104','even',2019),('CID103','SEC101','even',2023),('CID103','SEC102','odd',2023),('CID103','SEC103','both',2020),('CID104','SEC101','both',2024),('CID104','SEC102','both',2020),('CID104','SEC103','odd',2022),('CID104','SEC104','odd',2023),('CID104','SEC105','both',2025),('CID105','SEC101','both',2019),('CID105','SEC102','both',2020),('CID105','SEC103','even',2023),('CID106','SEC101','odd',2020),('CID106','SEC102','odd',2018),('CID106','SEC103','even',2023),('CID107','SEC101','odd',2021),('CID108','SEC101','odd',2022),('CID109','SEC101','even',2023),('CID110','SEC101','even',2024),('CID110','SEC102','odd',2018),('CID110','SEC103','both',2022),('CID111','SEC101','both',2019),('CID111','SEC102','even',2022),('CID112','SEC101','both',2020),('CID112','SEC102','even',2022),('CID112','SEC103','odd',2023),('CID113','SEC101','odd',2021),('CID113','SEC102','odd',2023),('CID113','SEC103','even',2022),('CID113','SEC104','odd',2024),('CID114','SEC101','odd',2022),('CID114','SEC102','odd',2024),('CID114','SEC103','both',2019),('CID115','SEC101','odd',2023),('CID115','SEC102','both',2019);
/*!40000 ALTER TABLE `section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `stud_id` varchar(20) NOT NULL,
  `stud_name` varchar(60) DEFAULT NULL,
  `total_credits` int DEFAULT NULL,
  `dept_id` varchar(20) DEFAULT NULL,
  `advisor_id` varchar(20) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  PRIMARY KEY (`stud_id`),
  KEY `dept_id` (`dept_id`),
  KEY `advisor_id` (`advisor_id`),
  CONSTRAINT `student_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `department` (`dept_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `student_ibfk_2` FOREIGN KEY (`advisor_id`) REFERENCES `faculty` (`faculty_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES ('22111001','ABHISHEK',16,'D101','F101','2000-01-15'),('22111002','ADITI',22,'D102','F103','2000-01-17'),('22111003','ADITYA',18,'D103','F105','2001-01-31'),('22111004','AKSHAY',22,'D104','F107','2002-02-04'),('22111005','AMIT',18,'D105','F109','2001-02-19'),('22111006','AVANTIKA',20,'D101','F101','2000-03-15'),('22111007','AKASH',16,'D102','F103','1999-03-20'),('22111008','GOKUL',18,'D103','F105','2002-04-26'),('22111009','ATHARVA',22,'D104','F107','2001-04-29'),('22111010','ASHWIN',16,'D105','F109','1999-05-15'),('22111011','SAIKUMAR',16,'D101','F101','2001-01-31'),('22111014','DEEPAK',18,'D102','F103','2000-06-01'),('22111015','GAURI',18,'D103','F105','2001-07-21'),('22111016','TEJAS',16,'D104','F107','2002-06-21'),('22111017','PRAVIN',22,'D105','F109','2001-07-11'),('22111018','AADITYA',20,'D101','F101','2003-06-16'),('22111019','LAXMAN',22,'D102','F103','1999-06-16'),('22111020','ROHIT',18,'D103','F105','2000-08-15'),('22111022','TEJAS',18,'D104','F107','2000-08-27'),('22111023','SHUBHAM',20,'D105','F109','2000-09-01'),('22111024','VISHAL',20,'D101','F101','2000-09-11'),('22111025','BRAMHANAND',22,'D102','F103','2000-09-17'),('22111026','SNEHAL',22,'D103','F105','2001-08-12'),('22111027','KARTIK',22,'D104','F107','2000-10-02'),('22111028','HARSHAL',20,'D105','F109','2001-10-19'),('22111029','VARDHAMAN',18,'D101','F101','2001-10-22'),('22111030','SAGAR',20,'D102','F103','2000-09-10'),('22111031','VISHAL',18,'D103','F105','2001-09-10'),('22111032','KIRAN',22,'D104','F107','1999-09-23'),('22111033','MADHURA',16,'D105','F109','2000-01-20'),('22112001','Anjali',16,'D101','F102','2003-07-16');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-25 16:26:38
