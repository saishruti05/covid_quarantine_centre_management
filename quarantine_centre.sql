-- MySQL dump 10.13  Distrib 5.1.35, for Win32 (ia32)
--
-- Host: localhost    Database: shruti
-- ------------------------------------------------------
-- Server version	5.1.35-community

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
-- Table structure for table `covid_pos`
--

DROP TABLE IF EXISTS `covid_pos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `covid_pos` (
  `id` varchar(20) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `hospital_ref` varchar(20) DEFAULT NULL,
  `date_of_departure` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `covid_pos`
--

LOCK TABLES `covid_pos` WRITE;
/*!40000 ALTER TABLE `covid_pos` DISABLE KEYS */;
INSERT INTO `covid_pos` VALUES ('p005','samiksha_bhansari','bs_birla','2020-04-05'),('P009','RAHUL_GARG','BS_BIRLA','2020-04-06');
/*!40000 ALTER TABLE `covid_pos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `health_professionals`
--

DROP TABLE IF EXISTS `health_professionals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `health_professionals` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `f_name` varchar(50) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `sex` enum('male','female') DEFAULT NULL,
  `shift` enum('morning','day','night') DEFAULT NULL,
  `mob_no` varchar(30) DEFAULT NULL,
  `address` varchar(20) DEFAULT NULL,
  `date_of_joining` date DEFAULT NULL,
  `designation` enum('medical_officer','nurseing_officer','lab_tech') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `health_professionals`
--

LOCK TABLES `health_professionals` WRITE;
/*!40000 ALTER TABLE `health_professionals` DISABLE KEYS */;
INSERT INTO `health_professionals` VALUES ('S001','ANKUR_MISHRA','SITARAM_MISHRA',35,'male','day','9153264785','4,JAWAR_PURA','2020-04-03','medical_officer'),('S002','ANU_JOSEPH','JOHN_JOSEPH',30,'female','morning','9152634571','1,MALV_NAGAR,JAIPUR','2020-04-03','medical_officer'),('S003','HINA_MEENA','AMRIT_MEENA',35,'male','night','9445123725','2,KUMAR_COLONY','2020-04-03','medical_officer'),('S004','AMIT_TYAGI','RAM_TYAGI',27,'male','night','9451246857','7,JHASI_NAGAR','2020-04-03','lab_tech'),('S005','ANU_SHARMA','MOHIT_SHARMA',30,'female','day','9114257625','4,CV_NAGAR','2020-04-03','lab_tech'),('S006','ARUN_BAINADA','SHYAM_BAINADA',30,'male','day','7842561235','3,SHUBH_PURA','2020-04-03','lab_tech'),('S007','SMITA_MATHUR','VARUN_MATHUR',35,'female','day','9124345268','5,DK_COLONY','2020-04-03','lab_tech'),('S008','SOHAM_KUMAR','RAKESH_KUMAR',35,'male','night','9451457851','4,VASANT_APPARTMENT','2020-04-03','nurseing_officer'),('S009','SAM_THOMAS','PETER_THOMAS',29,'male','night','9141412895','16,VIRAT_NAGAR','2020-04-03','nurseing_officer'),('S010','CHETAN_SHARMA','LAVISH_SHARMA',26,'male','day','9412576215','50,DADU_PURI','2020-04-03','nurseing_officer'),('S011','SUMAN_SHARMA','GOVIND_SHARMA',27,'female','day','9447261514','32,GANESH_NAGAR','2020-04-03','nurseing_officer'),('S012','KIRAN_JADEJA','INDR_JADEJA',29,'female','morning','9453562876','4,MAHI_COLONY','2020-04-03','nurseing_officer'),('S013','PAYAL_MEENA','RAJ_MEENA',30,'female','morning','9421785132','8,NARAYAN_COLONY','2020-04-03','nurseing_officer'),('S014','KAILASH_THAKUR','LALIT_THAKUR',32,'male','day','9485712135','42,HARI_NAGAR','2020-04-03','nurseing_officer');
/*!40000 ALTER TABLE `health_professionals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patient` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `f_name` varchar(50) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `sex` enum('male','female') DEFAULT NULL,
  `mob_no` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `block` varchar(50) DEFAULT NULL,
  `district` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `date_of_arrival` date DEFAULT NULL,
  `reason` enum('travel','contact','others') DEFAULT NULL,
  `symptom` enum('yes','no') DEFAULT NULL,
  `profession` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mob_no` (`mob_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES ('P001','JAYA_SHARMA','BABULAL_SHARMA',28,'female','9123235486','S,SHYAM_GANJ,JAIPUR','ABC','JAIPUR','RAJASTHAN','2020-04-03','travel','no','TEACHER'),('P002','TAPISH_MEENA','LOKESH_MEENA',27,'male','9421532456','7,VASNT_VIHAR,JAIPUR','ABC','JAIPUR','RAJASTHAN','2020-04-03','travel','yes','LAWYER'),('P003','VANI_AGARWAL','SOHAM_AGARWAL',25,'female','9124524578','4JA_SECTOR3,JAIPUR','ABC','JAIPUR','RAJASTHAN','2020-04-03','travel','no','HOUSE_MAKER'),('P004','MANISH_PRATAP','RUDRA_PRATAP',56,'male','8542659485','3,GYAN_VIHAR','ABC','JAIPUR','RAJASTHAN','2020-04-04','travel','no','PAINTER'),('P005','SAMIKSHA_BHANDARI','RAJ_BHANDARI',40,'female','9246851245','4,GANDHI_NAGAR','XYZ','JAIPUR','RAJASTHAN','2020-04-04','travel','yes','TEACHER'),('P006','KARAN_JOHAR','KUNNAK_JOHAR',34,'male','9154237615','9,VASANT_GUNJ','ABC','JAIPUR','RAJASTHAN','2020-04-04','travel','yes','ENGINEER'),('P007','LAVISH_SHARMA','LAKKHI_SHARMA',32,'male','9452167524','5,VEENA_COLONY','ABC','JAIPUR','RAJASTHAN','2020-04-05','travel','no','TEACHER'),('P008','SHREYA_GUPTA','AMOD_GUPTA',26,'female','9435687215','6,VIJAYPURA','ABC','JAIPUR','RAJASTHAN','2020-04-05','travel','no','HOUSE_MAKER'),('P009','RAHUL_GARG','SAMAR_GARG',30,'male','9456823157','4,VASANT_VIHAR','ABC','JAIPUR','RAJASTHAN','2020-04-05','travel','yes','PILOT'),('P010','VAISHNAVI_KULPATI','RAM_KULPATI',34,'female','9425316759','1,NK_COLONY','ABC','JAIPUR','RAJASTHAN','2020-04-05','contact','no','LAWYER');
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `security_staff`
--

DROP TABLE IF EXISTS `security_staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `security_staff` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `f_name` varchar(50) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `sex` enum('male','female') DEFAULT NULL,
  `shift` enum('morning','day','night') DEFAULT NULL,
  `date_of_joining` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `security_staff`
--

LOCK TABLES `security_staff` WRITE;
/*!40000 ALTER TABLE `security_staff` DISABLE KEYS */;
INSERT INTO `security_staff` VALUES ('S023','MAHAVEER_VERMA','PRAKASH_VERMA',30,'male','morning','2020-04-03'),('S024','KUSHAL_MATHUR','LOVELY_MATHUR',32,'male','morning','2020-04-03'),('S025','SAMAR_KAYAL','ANKIT_KAYAL',30,'male','day','2020-04-03'),('S026','RAMESH_SINGH','RAHUL_SINGH',28,'male','day','2020-04-03'),('S027','SURAJ_MEENA','SAGAR_MEENA',31,'male','night','2020-04-03'),('S028','YASH_KATARA','GANESH_KATARA',30,'male','night','2020-04-03');
/*!40000 ALTER TABLE `security_staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supporting_staff`
--

DROP TABLE IF EXISTS `supporting_staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supporting_staff` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `f_name` varchar(50) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `sex` enum('male','female') DEFAULT NULL,
  `shift` enum('morning','day','night') DEFAULT NULL,
  `date_of_joining` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supporting_staff`
--

LOCK TABLES `supporting_staff` WRITE;
/*!40000 ALTER TABLE `supporting_staff` DISABLE KEYS */;
INSERT INTO `supporting_staff` VALUES ('S015','KIRAN_KUMARI','KAMLESH_KUMAR',30,'female','morning','2020-04-03'),('S016','MADHU_SONI','RAM_SONI',25,'female','day','2020-04-03'),('S017','PRIYA_YADAV','KRISHN_YADAV',32,'female','day','2020-04-03'),('S018','AMRIT_GAUR','LAALU_GAUR',27,'male','night','2020-04-03'),('S019','GOPAL_MEENA','GOVIND_MEENA',23,'female','night','2020-04-03'),('S020','GANESH_GUPTA','SOMESH_GUPTA',38,'male','morning','2020-04-03'),('S021','GARVIT_SHARMA','LUCKY_SHARMA',28,'male','morning','2020-04-03'),('S022','HEMA_KUMARI','MAHI_KUMAR',29,'female','day','2020-04-03');
/*!40000 ALTER TABLE `supporting_staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `test_id` varchar(30) DEFAULT NULL,
  `doc_incharge` varchar(40) DEFAULT NULL,
  `tech_incharge` varchar(30) DEFAULT NULL,
  `RESULT` enum('POSITIVE','NEGATIVE') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test`
--

LOCK TABLES `test` WRITE;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
INSERT INTO `test` VALUES ('P001','JAYA_SHARMA','2020-04-05','T004','ANU_JOSEPH','ANU_SHARMA','NEGATIVE'),('P002','TAPISH_MEENA','2020-04-03','T001','ANU_JOSEPH','ARUN_BAINAIDA','NEGATIVE'),('P005','SAMIKSHA_BHANDARI','2020-04-04','T002','ANKUR_MISHRA','ANU_SHARMA','POSITIVE'),('P006','KARAN_JOHAR','2020-04-05','T003','ANKUR_MISHRA','SMITA_MATHUR','NEGATIVE'),('P009','RAHUL_GARG','2020-04-05','T005','ANU_JOSEPH','ANU_SHARMA','POSITIVE');
/*!40000 ALTER TABLE `test` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-21 14:09:41
