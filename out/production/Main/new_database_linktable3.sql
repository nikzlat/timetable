-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: new_database
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
-- Table structure for table `linktable3`
--

DROP TABLE IF EXISTS `linktable3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `linktable3` (
  `idEmployee` int(11) NOT NULL,
  `idDay` int(11) NOT NULL,
  `idFlag` int(11) NOT NULL,
  PRIMARY KEY (`idEmployee`,`idDay`),
  KEY `idDayFK_idx` (`idDay`),
  CONSTRAINT `idDayFK1` FOREIGN KEY (`idDay`) REFERENCES `calendar` (`idCalendar`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `idEmployeeFK1` FOREIGN KEY (`idEmployee`) REFERENCES `employee` (`idEmployee`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `linktable3`
--

LOCK TABLES `linktable3` WRITE;
/*!40000 ALTER TABLE `linktable3` DISABLE KEYS */;
INSERT INTO `linktable3` VALUES (1,1,2),(1,2,9),(1,3,10),(1,4,1),(1,5,2),(1,6,8),(1,7,4),(1,8,3),(1,9,8),(1,10,7),(1,11,10),(1,12,4),(1,13,4),(1,14,4),(1,15,11),(1,16,5),(1,17,2),(1,18,7),(1,19,11),(1,20,11),(1,21,6),(1,22,1),(1,23,4),(1,24,6),(1,25,4),(1,26,10),(1,27,7),(1,28,6),(1,29,1),(1,30,2),(1,31,1),(1,32,7),(1,33,1),(1,34,2),(1,35,4),(1,36,6),(1,37,8),(1,38,5),(1,39,11),(1,40,11),(1,41,5),(1,42,8),(1,43,8),(1,44,5),(1,45,9),(1,46,3),(1,47,5),(1,48,7),(1,49,3),(1,50,3),(1,51,5),(1,52,3),(1,53,1),(1,54,1),(1,55,9),(1,56,10),(1,57,4),(1,58,5),(1,59,3),(1,60,11),(1,61,7),(1,62,2),(1,63,9),(1,64,9),(1,65,3),(1,66,7),(1,67,9),(1,68,3),(1,69,4),(1,70,7),(1,71,7),(1,72,5),(1,73,2),(1,74,1),(1,75,1),(1,76,2),(1,77,10),(1,78,11),(1,79,9),(1,80,2),(1,81,4),(1,82,7),(1,83,7),(1,84,5),(1,85,6),(1,86,1),(1,87,2),(1,88,5),(1,89,10),(1,90,9),(1,91,5),(1,92,9),(1,93,5),(1,94,1),(1,95,4),(1,96,2),(1,97,4),(1,98,8),(1,99,9),(1,100,3),(1,101,3),(1,102,11),(1,103,3),(1,104,6),(1,105,2),(1,106,7),(1,107,7),(1,108,6),(1,109,2),(1,110,11),(1,111,5),(1,112,10),(1,113,8),(1,114,2),(1,115,4),(1,116,4),(1,117,1),(1,118,10),(1,119,4),(1,120,7),(1,121,2),(1,122,4),(1,123,1),(1,124,4),(1,125,4),(1,126,4),(1,127,3),(1,128,7),(1,129,9),(1,130,11),(1,131,1),(1,132,7),(1,133,11),(1,134,5),(1,135,4),(1,136,1),(1,137,8),(1,138,8),(1,139,6),(1,140,2),(1,141,11),(1,142,11),(1,143,1),(1,144,8),(1,145,10),(1,146,3),(1,147,4),(1,148,1),(1,149,4),(1,150,2),(1,151,3),(1,152,3),(1,153,3),(1,154,5),(1,155,7),(1,156,5),(1,157,10),(1,158,1),(1,159,10),(1,160,2),(1,161,9),(1,162,8),(1,163,7),(1,164,10),(1,165,9),(1,166,7),(1,167,2),(1,168,4),(1,169,4),(1,170,1),(1,171,10),(1,172,3),(1,173,3),(1,174,5),(1,175,7),(1,176,6),(1,177,9),(1,178,3),(1,179,3),(1,180,2),(1,181,6),(1,182,3),(1,183,1),(1,184,2),(1,185,10),(1,186,1),(1,187,3),(1,188,6),(1,189,11),(1,190,3),(1,191,10),(1,192,7),(1,193,11),(1,194,1),(1,195,4),(1,196,8),(1,197,6),(1,198,6),(1,199,9),(1,200,6),(1,201,11),(1,202,3),(1,203,8),(1,204,3),(1,205,9),(1,206,1),(1,207,9),(1,208,3),(1,209,5),(1,210,11),(1,211,9),(1,212,2),(1,213,7),(1,214,9),(1,215,7),(1,216,3),(1,217,3),(1,218,11),(1,219,2),(1,220,7),(1,221,4),(1,222,8),(1,223,2),(1,224,2),(1,225,8),(1,226,2),(1,227,2),(1,228,7),(1,229,7),(1,230,4),(1,231,10),(1,232,7),(1,233,1),(1,234,2),(1,235,9),(1,236,4),(1,237,6),(1,238,8),(1,239,8),(1,240,8),(1,241,4),(1,242,3),(1,243,5),(1,244,7),(1,245,11),(1,246,7),(1,247,10),(1,248,9),(1,249,5),(1,250,1),(1,251,6),(1,252,9),(1,253,4),(1,254,1),(1,255,5),(1,256,1),(1,257,1),(1,258,8),(1,259,9),(1,260,9),(1,261,3),(1,262,11),(1,263,3),(1,264,11),(1,265,5),(1,266,11),(1,267,11),(1,268,3),(1,269,5),(1,270,6),(1,271,5),(1,272,8),(1,273,7),(1,274,6),(1,275,11),(1,276,7),(1,277,5),(1,278,10),(1,279,11),(1,280,7),(1,281,11),(1,282,1),(1,283,10),(1,284,4),(1,285,4),(1,286,3),(1,287,1),(1,288,8),(1,289,2),(1,290,11),(1,291,7),(1,292,8),(1,293,10),(1,294,7),(1,295,10),(1,296,8),(1,297,3),(1,298,5),(1,299,7),(1,300,4),(1,301,4),(1,302,2),(1,303,6),(1,304,6),(1,305,7),(1,306,2),(1,307,7),(1,308,6),(1,309,1),(1,310,2),(1,311,4),(1,312,1),(1,313,8),(1,314,5),(1,315,8),(1,316,9),(1,317,11),(1,318,2),(1,319,2),(1,320,5),(1,321,3),(1,322,10),(1,323,6),(1,324,1),(1,325,10),(1,326,2),(1,327,1),(1,328,1),(1,329,9),(1,330,2),(1,331,3),(1,332,2),(1,333,8),(1,334,2),(1,335,2),(1,336,11),(1,337,1),(1,338,9),(1,339,1),(1,340,10),(1,341,1),(1,342,6),(1,343,11),(1,344,8),(1,345,8),(1,346,1),(1,347,6),(1,348,1),(1,349,7),(1,350,5),(1,351,5),(1,352,9),(1,353,6),(1,354,6),(1,355,11),(1,356,10),(1,357,4),(1,358,10),(1,359,2),(1,360,1),(1,361,10),(1,362,1),(1,363,10),(1,364,2),(1,365,10),(2,1,3),(2,2,7),(2,3,2),(2,4,6),(2,5,10),(2,6,6),(2,7,3),(2,8,5),(2,9,10),(2,10,1),(2,11,10),(2,12,8),(2,13,11),(2,14,10),(2,15,11),(2,16,9),(2,17,5),(2,18,8),(2,19,10),(2,20,3),(2,21,10),(2,22,1),(2,23,8),(2,24,6),(2,25,6),(2,26,8),(2,27,2),(2,28,8),(2,29,2),(2,30,3),(2,31,4),(2,32,2),(2,33,3),(2,34,2),(2,35,8),(2,36,2),(2,37,1),(2,38,11),(2,39,8),(2,40,3),(2,41,1),(2,42,5),(2,43,5),(2,44,6),(2,45,9),(2,46,9),(2,47,4),(2,48,7),(2,49,6),(2,50,9),(2,51,5),(2,52,7),(2,53,10),(2,54,4),(2,55,9),(2,56,8),(2,57,7),(2,58,9),(2,59,6),(2,60,8),(2,61,11),(2,62,7),(2,63,3),(2,64,3),(2,65,8),(2,66,1),(2,67,1),(2,68,5),(2,69,5),(2,70,9),(2,71,4),(2,72,6),(2,73,2),(2,74,7),(2,75,3),(2,76,9),(2,77,4),(2,78,5),(2,79,4),(2,80,8),(2,81,11),(2,82,7),(2,83,3),(2,84,2),(2,85,7),(2,86,6),(2,87,2),(2,88,6),(2,89,5),(2,90,8),(2,91,11),(2,92,11),(2,93,3),(2,94,7),(2,95,6),(2,96,1),(2,97,4),(2,98,2),(2,99,7),(2,100,3),(2,101,10),(2,102,11),(2,103,4),(2,104,9),(2,105,7),(2,106,7),(2,107,9),(2,108,8),(2,109,6),(2,110,1),(2,111,5),(2,112,5),(2,113,5),(2,114,10),(2,115,5),(2,116,6),(2,117,1),(2,118,3),(2,119,4),(2,120,10),(2,121,11),(2,122,9),(2,123,4),(2,124,5),(2,125,7),(2,126,2),(2,127,2),(2,128,4),(2,129,2),(2,130,4),(2,131,11),(2,132,3),(2,133,9),(2,134,1),(2,135,10),(2,136,1),(2,137,2),(2,138,4),(2,139,11),(2,140,2),(2,141,4),(2,142,6),(2,143,10),(2,144,1),(2,145,11),(2,146,5),(2,147,1),(2,148,9),(2,149,7),(2,150,2),(2,151,10),(2,152,6),(2,153,4),(2,154,7),(2,155,9),(2,156,3),(2,157,2),(2,158,10),(2,159,1),(2,160,11),(2,161,6),(2,162,5),(2,163,2),(2,164,4),(2,165,11),(2,166,6),(2,167,1),(2,168,7),(2,169,4),(2,170,11),(2,171,2),(2,172,6),(2,173,2),(2,174,8),(2,175,3),(2,176,8),(2,177,3),(2,178,2),(2,179,11),(2,180,1),(2,181,3),(2,182,3),(2,183,6),(2,184,3),(2,185,10),(2,186,11),(2,187,10),(2,188,8),(2,189,7),(2,190,5),(2,191,11),(2,192,7),(2,193,9),(2,194,3),(2,195,7),(2,196,6),(2,197,11),(2,198,1),(2,199,7),(2,200,6),(2,201,7),(2,202,3),(2,203,3),(2,204,5),(2,205,2),(2,206,3),(2,207,9),(2,208,4),(2,209,5),(2,210,5),(2,211,7),(2,212,10),(2,213,6),(2,214,6),(2,215,5),(2,216,5),(2,217,7),(2,218,1),(2,219,1),(2,220,4),(2,221,4),(2,222,3),(2,223,2),(2,224,2),(2,225,4),(2,226,7),(2,227,10),(2,228,8),(2,229,2),(2,230,11),(2,231,9),(2,232,5),(2,233,11),(2,234,5),(2,235,5),(2,236,3),(2,237,3),(2,238,5),(2,239,2),(2,240,1),(2,241,8),(2,242,10),(2,243,11),(2,244,8),(2,245,8),(2,246,3),(2,247,3),(2,248,3),(2,249,5),(2,250,5),(2,251,1),(2,252,2),(2,253,1),(2,254,1),(2,255,2),(2,256,6),(2,257,10),(2,258,4),(2,259,6),(2,260,10),(2,261,1),(2,262,5),(2,263,7),(2,264,5),(2,265,7),(2,266,2),(2,267,6),(2,268,10),(2,269,2),(2,270,8),(2,271,9),(2,272,1),(2,273,5),(2,274,2),(2,275,9),(2,276,4),(2,277,11),(2,278,3),(2,279,2),(2,280,5),(2,281,1),(2,282,4),(2,283,5),(2,284,4),(2,285,8),(2,286,3),(2,287,7),(2,288,10),(2,289,9),(2,290,3),(2,291,11),(2,292,9),(2,293,5),(2,294,1),(2,295,6),(2,296,6),(2,297,3),(2,298,3),(2,299,5),(2,300,4),(2,301,11),(2,302,3),(2,303,9),(2,304,4),(2,305,9),(2,306,4),(2,307,11),(2,308,9),(2,309,5),(2,310,11),(2,311,5),(2,312,6),(2,313,11),(2,314,2),(2,315,11),(2,316,11),(2,317,4),(2,318,1),(2,319,7),(2,320,4),(2,321,1),(2,322,7),(2,323,2),(2,324,11),(2,325,2),(2,326,3),(2,327,4),(2,328,2),(2,329,7),(2,330,2),(2,331,10),(2,332,3),(2,333,3),(2,334,8),(2,335,8),(2,336,3),(2,337,2),(2,338,2),(2,339,3),(2,340,10),(2,341,3),(2,342,11),(2,343,2),(2,344,8),(2,345,5),(2,346,5),(2,347,4),(2,348,10),(2,349,2),(2,350,7),(2,351,4),(2,352,7),(2,353,3),(2,354,7),(2,355,4),(2,356,6),(2,357,1),(2,358,11),(2,359,7),(2,360,11),(2,361,6),(2,362,7),(2,363,10),(2,364,1),(2,365,9),(3,1,7),(3,2,3),(3,3,6),(3,4,4),(3,5,6),(3,6,11),(3,7,3),(3,8,1),(3,9,2),(3,10,3),(3,11,4),(3,12,8),(3,13,7),(3,14,1),(3,15,6),(3,16,3),(3,17,3),(3,18,10),(3,19,3),(3,20,11),(3,21,3),(3,22,10),(3,23,3),(3,24,7),(3,25,3),(3,26,4),(3,27,5),(3,28,11),(3,29,10),(3,30,7),(3,31,6),(3,32,3),(3,33,9),(3,34,11),(3,35,3),(3,36,5),(3,37,3),(3,38,3),(3,39,8),(3,40,7),(3,41,11),(3,42,3),(3,43,1),(3,44,9),(3,45,6),(3,46,1),(3,47,7),(3,48,6),(3,49,7),(3,50,4),(3,51,7),(3,52,8),(3,53,11),(3,54,9),(3,55,10),(3,56,9),(3,57,10),(3,58,7),(3,59,11),(3,60,6),(3,61,10),(3,62,7),(3,63,2),(3,64,10),(3,65,4),(3,66,8),(3,67,2),(3,68,2),(3,69,4),(3,70,6),(3,71,1),(3,72,8),(3,73,8),(3,74,9),(3,75,8),(3,76,8),(3,77,4),(3,78,1),(3,79,4),(3,80,4),(3,81,7),(3,82,7),(3,83,3),(3,84,9),(3,85,10),(3,86,6),(3,87,11),(3,88,2),(3,89,3),(3,90,8),(3,91,3),(3,92,9),(3,93,6),(3,94,6),(3,95,5),(3,96,2),(3,97,3),(3,98,1),(3,99,3),(3,100,5),(3,101,6),(3,102,8),(3,103,1),(3,104,6),(3,105,11),(3,106,7),(3,107,8),(3,108,10),(3,109,1),(3,110,6),(3,111,10),(3,112,6),(3,113,1),(3,114,3),(3,115,6),(3,116,10),(3,117,9),(3,118,4),(3,119,3),(3,120,11),(3,121,5),(3,122,7),(3,123,3),(3,124,1),(3,125,10),(3,126,3),(3,127,6),(3,128,7),(3,129,11),(3,130,8),(3,131,1),(3,132,11),(3,133,11),(3,134,11),(3,135,2),(3,136,11),(3,137,11),(3,138,11),(3,139,2),(3,140,5),(3,141,10),(3,142,5),(3,143,2),(3,144,4),(3,145,9),(3,146,3),(3,147,1),(3,148,8),(3,149,1),(3,150,6),(3,151,7),(3,152,11),(3,153,5),(3,154,9),(3,155,4),(3,156,3),(3,157,11),(3,158,3),(3,159,9),(3,160,5),(3,161,2),(3,162,8),(3,163,4),(3,164,7),(3,165,5),(3,166,4),(3,167,1),(3,168,7),(3,169,5),(3,170,10),(3,171,5),(3,172,9),(3,173,2),(3,174,2),(3,175,8),(3,176,11),(3,177,7),(3,178,10),(3,179,8),(3,180,3),(3,181,5),(3,182,5),(3,183,11),(3,184,11),(3,185,3),(3,186,5),(3,187,3),(3,188,3),(3,189,3),(3,190,9),(3,191,3),(3,192,9),(3,193,5),(3,194,1),(3,195,6),(3,196,5),(3,197,10),(3,198,9),(3,199,10),(3,200,6),(3,201,10),(3,202,10),(3,203,6),(3,204,4),(3,205,6),(3,206,3),(3,207,6),(3,208,6),(3,209,11),(3,210,9),(3,211,7),(3,212,2),(3,213,11),(3,214,1),(3,215,6),(3,216,1),(3,217,1),(3,218,9),(3,219,2),(3,220,7),(3,221,3),(3,222,1),(3,223,1),(3,224,7),(3,225,3),(3,226,3),(3,227,6),(3,228,9),(3,229,10),(3,230,2),(3,231,1),(3,232,4),(3,233,11),(3,234,10),(3,235,4),(3,236,6),(3,237,10),(3,238,6),(3,239,6),(3,240,4),(3,241,10),(3,242,2),(3,243,8),(3,244,11),(3,245,9),(3,246,6),(3,247,8),(3,248,2),(3,249,4),(3,250,9),(3,251,7),(3,252,4),(3,253,6),(3,254,11),(3,255,7),(3,256,9),(3,257,4),(3,258,1),(3,259,6),(3,260,10),(3,261,1),(3,262,7),(3,263,9),(3,264,11),(3,265,6),(3,266,7),(3,267,2),(3,268,6),(3,269,9),(3,270,7),(3,271,8),(3,272,1),(3,273,8),(3,274,10),(3,275,6),(3,276,1),(3,277,7),(3,278,6),(3,279,3),(3,280,3),(3,281,2),(3,282,4),(3,283,5),(3,284,9),(3,285,5),(3,286,3),(3,287,2),(3,288,4),(3,289,11),(3,290,10),(3,291,8),(3,292,2),(3,293,8),(3,294,8),(3,295,6),(3,296,7),(3,297,2),(3,298,9),(3,299,11),(3,300,2),(3,301,4),(3,302,8),(3,303,2),(3,304,10),(3,305,3),(3,306,5),(3,307,4),(3,308,2),(3,309,3),(3,310,1),(3,311,4),(3,312,2),(3,313,6),(3,314,10),(3,315,4),(3,316,7),(3,317,6),(3,318,6),(3,319,5),(3,320,5),(3,321,9),(3,322,1),(3,323,1),(3,324,4),(3,325,3),(3,326,2),(3,327,2),(3,328,5),(3,329,7),(3,330,10),(3,331,7),(3,332,2),(3,333,2),(3,334,2),(3,335,5),(3,336,7),(3,337,6),(3,338,4),(3,339,1),(3,340,2),(3,341,5),(3,342,5),(3,343,2),(3,344,4),(3,345,6),(3,346,5),(3,347,9),(3,348,2),(3,349,10),(3,350,11),(3,351,4),(3,352,2),(3,353,5),(3,354,3),(3,355,10),(3,356,3),(3,357,6),(3,358,6),(3,359,9),(3,360,6),(3,361,7),(3,362,10),(3,363,6),(3,364,6),(3,365,10),(4,1,9),(4,2,2),(4,3,4),(4,4,9),(4,5,7),(4,6,7),(4,7,10),(4,8,7),(4,9,1),(4,10,5),(4,11,7),(4,12,3),(4,13,8),(4,14,8),(4,15,6),(4,16,2),(4,17,5),(4,18,9),(4,19,9),(4,20,4),(4,21,1),(4,22,5),(4,23,2),(4,24,5),(4,25,3),(4,26,6),(4,27,9),(4,28,6),(4,29,3),(4,30,5),(4,31,6),(4,32,9),(4,33,3),(4,34,5),(4,35,9),(4,36,10),(4,37,10),(4,38,2),(4,39,11),(4,40,5),(4,41,8),(4,42,7),(4,43,10),(4,44,11),(4,45,6),(4,46,1),(4,47,11),(4,48,9),(4,49,9),(4,50,3),(4,51,1),(4,52,1),(4,53,6),(4,54,11),(4,55,8),(4,56,2),(4,57,4),(4,58,2),(4,59,5),(4,60,1),(4,61,6),(4,62,11),(4,63,5),(4,64,2),(4,65,10),(4,66,8),(4,67,8),(4,68,4),(4,69,5),(4,70,5),(4,71,3),(4,72,7),(4,73,9),(4,74,10),(4,75,9),(4,76,9),(4,77,4),(4,78,2),(4,79,7),(4,80,6),(4,81,2),(4,82,5),(4,83,1),(4,84,2),(4,85,2),(4,86,3),(4,87,8),(4,88,10),(4,89,6),(4,90,10),(4,91,5),(4,92,4),(4,93,10),(4,94,9),(4,95,4),(4,96,11),(4,97,5),(4,98,1),(4,99,4),(4,100,7),(4,101,8),(4,102,1),(4,103,3),(4,104,11),(4,105,11),(4,106,10),(4,107,10),(4,108,10),(4,109,9),(4,110,11),(4,111,3),(4,112,9),(4,113,6),(4,114,8),(4,115,8),(4,116,8),(4,117,11),(4,118,11),(4,119,8),(4,120,3),(4,121,5),(4,122,4),(4,123,1),(4,124,4),(4,125,9),(4,126,4),(4,127,6),(4,128,1),(4,129,4),(4,130,7),(4,131,3),(4,132,4),(4,133,7),(4,134,9),(4,135,11),(4,136,3),(4,137,7),(4,138,5),(4,139,11),(4,140,2),(4,141,8),(4,142,5),(4,143,10),(4,144,3),(4,145,3),(4,146,7),(4,147,3),(4,148,3),(4,149,6),(4,150,9),(4,151,1),(4,152,8),(4,153,5),(4,154,6),(4,155,2),(4,156,2),(4,157,6),(4,158,7),(4,159,9),(4,160,6),(4,161,11),(4,162,9),(4,163,7),(4,164,4),(4,165,1),(4,166,2),(4,167,9),(4,168,3),(4,169,2),(4,170,11),(4,171,1),(4,172,2),(4,173,8),(4,174,1),(4,175,3),(4,176,2),(4,177,9),(4,178,9),(4,179,8),(4,180,11),(4,181,11),(4,182,9),(4,183,5),(4,184,1),(4,185,5),(4,186,1),(4,187,10),(4,188,7),(4,189,3),(4,190,7),(4,191,5),(4,192,2),(4,193,9),(4,194,2),(4,195,9),(4,196,8),(4,197,7),(4,198,5),(4,199,11),(4,200,3),(4,201,3),(4,202,5),(4,203,9),(4,204,4),(4,205,5),(4,206,2),(4,207,1),(4,208,3),(4,209,8),(4,210,10),(4,211,11),(4,212,10),(4,213,5),(4,214,3),(4,215,8),(4,216,3),(4,217,8),(4,218,11),(4,219,4),(4,220,11),(4,221,8),(4,222,7),(4,223,9),(4,224,8),(4,225,1),(4,226,2),(4,227,10),(4,228,9),(4,229,1),(4,230,4),(4,231,2),(4,232,11),(4,233,6),(4,234,10),(4,235,2),(4,236,10),(4,237,5),(4,238,11),(4,239,2),(4,240,8),(4,241,3),(4,242,9),(4,243,10),(4,244,1),(4,245,8),(4,246,1),(4,247,7),(4,248,2),(4,249,9),(4,250,10),(4,251,10),(4,252,6),(4,253,3),(4,254,8),(4,255,1),(4,256,6),(4,257,8),(4,258,3),(4,259,6),(4,260,11),(4,261,3),(4,262,7),(4,263,5),(4,264,7),(4,265,10),(4,266,2),(4,267,8),(4,268,8),(4,269,8),(4,270,9),(4,271,2),(4,272,4),(4,273,11),(4,274,1),(4,275,10),(4,276,1),(4,277,7),(4,278,5),(4,279,1),(4,280,10),(4,281,5),(4,282,4),(4,283,6),(4,284,7),(4,285,3),(4,286,9),(4,287,6),(4,288,2),(4,289,11),(4,290,10),(4,291,10),(4,292,5),(4,293,7),(4,294,8),(4,295,2),(4,296,2),(4,297,2),(4,298,3),(4,299,10),(4,300,8),(4,301,11),(4,302,3),(4,303,5),(4,304,5),(4,305,9),(4,306,7),(4,307,10),(4,308,3),(4,309,5),(4,310,1),(4,311,11),(4,312,8),(4,313,1),(4,314,6),(4,315,11),(4,316,6),(4,317,11),(4,318,11),(4,319,1),(4,320,8),(4,321,5),(4,322,11),(4,323,4),(4,324,5),(4,325,7),(4,326,7),(4,327,4),(4,328,10),(4,329,5),(4,330,6),(4,331,2),(4,332,8),(4,333,3),(4,334,11),(4,335,4),(4,336,5),(4,337,1),(4,338,9),(4,339,11),(4,340,5),(4,341,5),(4,342,5),(4,343,7),(4,344,1),(4,345,3),(4,346,6),(4,347,3),(4,348,1),(4,349,9),(4,350,5),(4,351,3),(4,352,1),(4,353,5),(4,354,3),(4,355,11),(4,356,11),(4,357,9),(4,358,5),(4,359,6),(4,360,11),(4,361,11),(4,362,1),(4,363,4),(4,364,10),(4,365,4),(5,1,7),(5,2,11),(5,3,4),(5,4,1),(5,5,1),(5,6,10),(5,7,1),(5,8,3),(5,9,2),(5,10,7),(5,11,11),(5,12,11),(5,13,5),(5,14,4),(5,15,10),(5,16,4),(5,17,1),(5,18,10),(5,19,1),(5,20,6),(5,21,7),(5,22,5),(5,23,4),(5,24,7),(5,25,6),(5,26,6),(5,27,11),(5,28,2),(5,29,1),(5,30,5),(5,31,2),(5,32,3),(5,33,11),(5,34,6),(5,35,11),(5,36,5),(5,37,2),(5,38,8),(5,39,2),(5,40,9),(5,41,2),(5,42,10),(5,43,1),(5,44,10),(5,45,4),(5,46,1),(5,47,10),(5,48,6),(5,49,10),(5,50,1),(5,51,11),(5,52,3),(5,53,4),(5,54,11),(5,55,11),(5,56,1),(5,57,6),(5,58,5),(5,59,4),(5,60,10),(5,61,11),(5,62,9),(5,63,4),(5,64,11),(5,65,2),(5,66,4),(5,67,8),(5,68,9),(5,69,10),(5,70,1),(5,71,2),(5,72,9),(5,73,6),(5,74,5),(5,75,1),(5,76,11),(5,77,3),(5,78,1),(5,79,1),(5,80,3),(5,81,10),(5,82,2),(5,83,1),(5,84,1),(5,85,10),(5,86,9),(5,87,8),(5,88,7),(5,89,2),(5,90,1),(5,91,1),(5,92,3),(5,93,5),(5,94,6),(5,95,7),(5,96,7),(5,97,6),(5,98,9),(5,99,9),(5,100,10),(5,101,10),(5,102,7),(5,103,6),(5,104,6),(5,105,6),(5,106,1),(5,107,4),(5,108,8),(5,109,6),(5,110,10),(5,111,3),(5,112,9),(5,113,2),(5,114,7),(5,115,9),(5,116,7),(5,117,2),(5,118,4),(5,119,4),(5,120,3),(5,121,1),(5,122,10),(5,123,10),(5,124,9),(5,125,10),(5,126,6),(5,127,8),(5,128,5),(5,129,8),(5,130,10),(5,131,3),(5,132,10),(5,133,10),(5,134,11),(5,135,7),(5,136,2),(5,137,10),(5,138,8),(5,139,9),(5,140,8),(5,141,9),(5,142,11),(5,143,11),(5,144,6),(5,145,10),(5,146,2),(5,147,7),(5,148,5),(5,149,10),(5,150,9),(5,151,9),(5,152,5),(5,153,8),(5,154,10),(5,155,8),(5,156,5),(5,157,4),(5,158,8),(5,159,4),(5,160,7),(5,161,9),(5,162,3),(5,163,5),(5,164,8),(5,165,8),(5,166,1),(5,167,9),(5,168,7),(5,169,1),(5,170,11),(5,171,5),(5,172,8),(5,173,8),(5,174,9),(5,175,7),(5,176,3),(5,177,11),(5,178,1),(5,179,8),(5,180,8),(5,181,4),(5,182,3),(5,183,5),(5,184,5),(5,185,2),(5,186,10),(5,187,2),(5,188,7),(5,189,1),(5,190,5),(5,191,4),(5,192,11),(5,193,7),(5,194,2),(5,195,6),(5,196,4),(5,197,9),(5,198,7),(5,199,10),(5,200,6),(5,201,3),(5,202,5),(5,203,3),(5,204,10),(5,205,2),(5,206,11),(5,207,10),(5,208,8),(5,209,2),(5,210,3),(5,211,10),(5,212,2),(5,213,2),(5,214,8),(5,215,8),(5,216,5),(5,217,7),(5,218,3),(5,219,9),(5,220,9),(5,221,2),(5,222,4),(5,223,11),(5,224,4),(5,225,5),(5,226,10),(5,227,5),(5,228,6),(5,229,11),(5,230,4),(5,231,11),(5,232,10),(5,233,5),(5,234,10),(5,235,5),(5,236,4),(5,237,10),(5,238,9),(5,239,8),(5,240,9),(5,241,4),(5,242,4),(5,243,8),(5,244,1),(5,245,10),(5,246,4),(5,247,4),(5,248,4),(5,249,5),(5,250,7),(5,251,4),(5,252,8),(5,253,7),(5,254,10),(5,255,10),(5,256,5),(5,257,9),(5,258,7),(5,259,3),(5,260,1),(5,261,9),(5,262,1),(5,263,10),(5,264,6),(5,265,5),(5,266,10),(5,267,4),(5,268,9),(5,269,11),(5,270,3),(5,271,8),(5,272,8),(5,273,2),(5,274,2),(5,275,6),(5,276,5),(5,277,11),(5,278,5),(5,279,8),(5,280,9),(5,281,1),(5,282,1),(5,283,2),(5,284,6),(5,285,3),(5,286,10),(5,287,4),(5,288,7),(5,289,5),(5,290,10),(5,291,5),(5,292,3),(5,293,9),(5,294,4),(5,295,11),(5,296,3),(5,297,6),(5,298,7),(5,299,10),(5,300,2),(5,301,5),(5,302,7),(5,303,8),(5,304,10),(5,305,3),(5,306,11),(5,307,7),(5,308,6),(5,309,8),(5,310,5),(5,311,8),(5,312,8),(5,313,2),(5,314,7),(5,315,9),(5,316,5),(5,317,11),(5,318,6),(5,319,3),(5,320,6),(5,321,4),(5,322,7),(5,323,8),(5,324,7),(5,325,10),(5,326,11),(5,327,7),(5,328,5),(5,329,7),(5,330,1),(5,331,11),(5,332,4),(5,333,3),(5,334,8),(5,335,10),(5,336,5),(5,337,9),(5,338,3),(5,339,10),(5,340,7),(5,341,8),(5,342,2),(5,343,4),(5,344,6),(5,345,5),(5,346,5),(5,347,11),(5,348,5),(5,349,1),(5,350,5),(5,351,7),(5,352,9),(5,353,3),(5,354,8),(5,355,6),(5,356,5),(5,357,8),(5,358,11),(5,359,11),(5,360,11),(5,361,9),(5,362,7),(5,363,2),(5,364,1),(5,365,3),(6,1,10),(6,2,9),(6,3,8),(6,4,10),(6,5,5),(6,6,11),(6,7,7),(6,8,11),(6,9,4),(6,10,3),(6,11,10),(6,12,11),(6,13,2),(6,14,4),(6,15,6),(6,16,6),(6,17,5),(6,18,2),(6,19,2),(6,20,6),(6,21,7),(6,22,4),(6,23,8),(6,24,4),(6,25,9),(6,26,10),(6,27,4),(6,28,11),(6,29,1),(6,30,5),(6,31,1),(6,32,7),(6,33,9),(6,34,2),(6,35,5),(6,36,7),(6,37,2),(6,38,7),(6,39,1),(6,40,2),(6,41,4),(6,42,4),(6,43,4),(6,44,3),(6,45,3),(6,46,1),(6,47,1),(6,48,2),(6,49,2),(6,50,8),(6,51,6),(6,52,7),(6,53,3),(6,54,8),(6,55,7),(6,56,4),(6,57,11),(6,58,5),(6,59,5),(6,60,4),(6,61,9),(6,62,4),(6,63,5),(6,64,4),(6,65,6),(6,66,1),(6,67,5),(6,68,4),(6,69,9),(6,70,6),(6,71,3),(6,72,7),(6,73,6),(6,74,9),(6,75,5),(6,76,2),(6,77,11),(6,78,7),(6,79,9),(6,80,11),(6,81,11),(6,82,8),(6,83,3),(6,84,2),(6,85,10),(6,86,11),(6,87,1),(6,88,10),(6,89,7),(6,90,1),(6,91,6),(6,92,11),(6,93,1),(6,94,10),(6,95,4),(6,96,11),(6,97,10),(6,98,11),(6,99,7),(6,100,6),(6,101,4),(6,102,4),(6,103,11),(6,104,2),(6,105,2),(6,106,4),(6,107,1),(6,108,4),(6,109,1),(6,110,5),(6,111,3),(6,112,4),(6,113,2),(6,114,5),(6,115,6),(6,116,10),(6,117,3),(6,118,4),(6,119,11),(6,120,8),(6,121,8),(6,122,7),(6,123,3),(6,124,11),(6,125,6),(6,126,3),(6,127,5),(6,128,2),(6,129,8),(6,130,3),(6,131,5),(6,132,6),(6,133,3),(6,134,9),(6,135,11),(6,136,8),(6,137,4),(6,138,8),(6,139,2),(6,140,7),(6,141,7),(6,142,8),(6,143,5),(6,144,8),(6,145,2),(6,146,5),(6,147,8),(6,148,8),(6,149,10),(6,150,2),(6,151,5),(6,152,4),(6,153,3),(6,154,1),(6,155,2),(6,156,3),(6,157,2),(6,158,5),(6,159,5),(6,160,9),(6,161,4),(6,162,4),(6,163,3),(6,164,11),(6,165,7),(6,166,5),(6,167,1),(6,168,8),(6,169,7),(6,170,3),(6,171,11),(6,172,4),(6,173,7),(6,174,7),(6,175,7),(6,176,4),(6,177,4),(6,178,3),(6,179,11),(6,180,7),(6,181,5),(6,182,5),(6,183,2),(6,184,6),(6,185,1),(6,186,1),(6,187,5),(6,188,3),(6,189,10),(6,190,3),(6,191,6),(6,192,4),(6,193,7),(6,194,3),(6,195,3),(6,196,2),(6,197,5),(6,198,5),(6,199,7),(6,200,6),(6,201,10),(6,202,1),(6,203,3),(6,204,1),(6,205,11),(6,206,10),(6,207,3),(6,208,2),(6,209,7),(6,210,4),(6,211,3),(6,212,9),(6,213,11),(6,214,1),(6,215,6),(6,216,3),(6,217,3),(6,218,8),(6,219,4),(6,220,6),(6,221,1),(6,222,3),(6,223,5),(6,224,9),(6,225,6),(6,226,3),(6,227,5),(6,228,10),(6,229,11),(6,230,11),(6,231,9),(6,232,3),(6,233,9),(6,234,6),(6,235,3),(6,236,4),(6,237,11),(6,238,5),(6,239,8),(6,240,6),(6,241,3),(6,242,1),(6,243,1),(6,244,10),(6,245,1),(6,246,7),(6,247,10),(6,248,3),(6,249,8),(6,250,2),(6,251,5),(6,252,5),(6,253,9),(6,254,6),(6,255,4),(6,256,11),(6,257,2),(6,258,11),(6,259,5),(6,260,8),(6,261,5),(6,262,10),(6,263,8),(6,264,9),(6,265,3),(6,266,1),(6,267,7),(6,268,11),(6,269,6),(6,270,3),(6,271,6),(6,272,7),(6,273,4),(6,274,1),(6,275,11),(6,276,1),(6,277,3),(6,278,4),(6,279,4),(6,280,6),(6,281,8),(6,282,6),(6,283,5),(6,284,2),(6,285,10),(6,286,6),(6,287,4),(6,288,1),(6,289,6),(6,290,3),(6,291,9),(6,292,11),(6,293,6),(6,294,7),(6,295,10),(6,296,8),(6,297,4),(6,298,8),(6,299,9),(6,300,11),(6,301,9),(6,302,5),(6,303,1),(6,304,8),(6,305,3),(6,306,11),(6,307,11),(6,308,3),(6,309,8),(6,310,6),(6,311,6),(6,312,6),(6,313,1),(6,314,1),(6,315,8),(6,316,1),(6,317,8),(6,318,7),(6,319,3),(6,320,9),(6,321,10),(6,322,3),(6,323,7),(6,324,11),(6,325,4),(6,326,2),(6,327,8),(6,328,10),(6,329,10),(6,330,3),(6,331,3),(6,332,5),(6,333,2),(6,334,6),(6,335,6),(6,336,5),(6,337,1),(6,338,4),(6,339,4),(6,340,3),(6,341,8),(6,342,9),(6,343,4),(6,344,1),(6,345,10),(6,346,11),(6,347,2),(6,348,6),(6,349,11),(6,350,1),(6,351,4),(6,352,11),(6,353,6),(6,354,8),(6,355,5),(6,356,5),(6,357,7),(6,358,10),(6,359,4),(6,360,8),(6,361,7),(6,362,2),(6,363,9),(6,364,10),(6,365,9),(7,1,11),(7,2,10),(7,3,4),(7,4,11),(7,5,2),(7,6,11),(7,7,11),(7,8,7),(7,9,9),(7,10,9),(7,11,10),(7,12,6),(7,13,6),(7,14,8),(7,15,10),(7,16,7),(7,17,5),(7,18,2),(7,19,10),(7,20,1),(7,21,11),(7,22,1),(7,23,5),(7,24,2),(7,25,5),(7,26,6),(7,27,1),(7,28,10),(7,29,1),(7,30,10),(7,31,10),(7,32,1),(7,33,10),(7,34,2),(7,35,11),(7,36,6),(7,37,8),(7,38,11),(7,39,3),(7,40,10),(7,41,5),(7,42,5),(7,43,2),(7,44,5),(7,45,9),(7,46,4),(7,47,1),(7,48,2),(7,49,1),(7,50,9),(7,51,4),(7,52,5),(7,53,2),(7,54,8),(7,55,3),(7,56,7),(7,57,7),(7,58,11),(7,59,2),(7,60,11),(7,61,6),(7,62,9),(7,63,5),(7,64,1),(7,65,4),(7,66,8),(7,67,7),(7,68,10),(7,69,5),(7,70,10),(7,71,11),(7,72,6),(7,73,4),(7,74,6),(7,75,10),(7,76,2),(7,77,7),(7,78,10),(7,79,11),(7,80,11),(7,81,2),(7,82,10),(7,83,4),(7,84,11),(7,85,9),(7,86,5),(7,87,4),(7,88,9),(7,89,11),(7,90,1),(7,91,1),(7,92,9),(7,93,11),(7,94,11),(7,95,5),(7,96,10),(7,97,9),(7,98,8),(7,99,3),(7,100,9),(7,101,7),(7,102,2),(7,103,6),(7,104,7),(7,105,4),(7,106,10),(7,107,6),(7,108,2),(7,109,10),(7,110,2),(7,111,2),(7,112,11),(7,113,9),(7,114,9),(7,115,10),(7,116,7),(7,117,9),(7,118,8),(7,119,4),(7,120,7),(7,121,7),(7,122,1),(7,123,6),(7,124,11),(7,125,2),(7,126,7),(7,127,11),(7,128,4),(7,129,6),(7,130,6),(7,131,5),(7,132,5),(7,133,8),(7,134,10),(7,135,10),(7,136,2),(7,137,10),(7,138,9),(7,139,8),(7,140,9),(7,141,11),(7,142,3),(7,143,11),(7,144,11),(7,145,2),(7,146,6),(7,147,10),(7,148,11),(7,149,8),(7,150,2),(7,151,10),(7,152,2),(7,153,8),(7,154,11),(7,155,7),(7,156,9),(7,157,11),(7,158,11),(7,159,1),(7,160,7),(7,161,1),(7,162,11),(7,163,7),(7,164,3),(7,165,10),(7,166,9),(7,167,1),(7,168,7),(7,169,8),(7,170,6),(7,171,1),(7,172,1),(7,173,3),(7,174,3),(7,175,8),(7,176,4),(7,177,4),(7,178,8),(7,179,10),(7,180,7),(7,181,11),(7,182,5),(7,183,3),(7,184,10),(7,185,5),(7,186,10),(7,187,1),(7,188,9),(7,189,2),(7,190,10),(7,191,1),(7,192,7),(7,193,11),(7,194,3),(7,195,6),(7,196,4),(7,197,11),(7,198,9),(7,199,7),(7,200,4),(7,201,1),(7,202,4),(7,203,7),(7,204,10),(7,205,2),(7,206,4),(7,207,6),(7,208,10),(7,209,7),(7,210,11),(7,211,10),(7,212,5),(7,213,6),(7,214,5),(7,215,9),(7,216,3),(7,217,11),(7,218,2),(7,219,2),(7,220,4),(7,221,8),(7,222,1),(7,223,3),(7,224,2),(7,225,2),(7,226,1),(7,227,9),(7,228,9),(7,229,11),(7,230,10),(7,231,4),(7,232,10),(7,233,5),(7,234,7),(7,235,2),(7,236,7),(7,237,6),(7,238,10),(7,239,4),(7,240,3),(7,241,4),(7,242,1),(7,243,5),(7,244,4),(7,245,9),(7,246,11),(7,247,2),(7,248,11),(7,249,2),(7,250,1),(7,251,11),(7,252,9),(7,253,6),(7,254,5),(7,255,11),(7,256,2),(7,257,6),(7,258,6),(7,259,9),(7,260,11),(7,261,7),(7,262,1),(7,263,3),(7,264,7),(7,265,4),(7,266,4),(7,267,9),(7,268,7),(7,269,9),(7,270,3),(7,271,3),(7,272,7),(7,273,4),(7,274,8),(7,275,10),(7,276,9),(7,277,5),(7,278,11),(7,279,6),(7,280,2),(7,281,2),(7,282,8),(7,283,5),(7,284,1),(7,285,3),(7,286,9),(7,287,7),(7,288,10),(7,289,11),(7,290,10),(7,291,3),(7,292,2),(7,293,5),(7,294,6),(7,295,7),(7,296,8),(7,297,5),(7,298,11),(7,299,7),(7,300,4),(7,301,9),(7,302,4),(7,303,3),(7,304,10),(7,305,7),(7,306,9),(7,307,6),(7,308,11),(7,309,1),(7,310,7),(7,311,4),(7,312,2),(7,313,8),(7,314,5),(7,315,1),(7,316,4),(7,317,7),(7,318,5),(7,319,10),(7,320,8),(7,321,1),(7,322,10),(7,323,1),(7,324,6),(7,325,1),(7,326,3),(7,327,9),(7,328,9),(7,329,2),(7,330,2),(7,331,4),(7,332,8),(7,333,7),(7,334,8),(7,335,6),(7,336,7),(7,337,8),(7,338,10),(7,339,11),(7,340,5),(7,341,7),(7,342,10),(7,343,6),(7,344,7),(7,345,11),(7,346,2),(7,347,11),(7,348,3),(7,349,11),(7,350,2),(7,351,11),(7,352,8),(7,353,5),(7,354,10),(7,355,2),(7,356,8),(7,357,5),(7,358,1),(7,359,5),(7,360,9),(7,361,8),(7,362,5),(7,363,4),(7,364,3),(7,365,1),(8,1,4),(8,2,4),(8,3,3),(8,4,6),(8,5,4),(8,6,8),(8,7,8),(8,8,4),(8,9,1),(8,10,2),(8,11,5),(8,12,8),(8,13,9),(8,14,2),(8,15,8),(8,16,1),(8,17,5),(8,18,7),(8,19,9),(8,20,6),(8,21,11),(8,22,5),(8,23,7),(8,24,6),(8,25,5),(8,26,2),(8,27,9),(8,28,1),(8,29,10),(8,30,1),(8,31,11),(8,32,8),(8,33,9),(8,34,2),(8,35,11),(8,36,6),(8,37,9),(8,38,8),(8,39,1),(8,40,7),(8,41,8),(8,42,2),(8,43,11),(8,44,7),(8,45,10),(8,46,8),(8,47,10),(8,48,2),(8,49,11),(8,50,7),(8,51,7),(8,52,1),(8,53,11),(8,54,2),(8,55,3),(8,56,11),(8,57,5),(8,58,5),(8,59,9),(8,60,1),(8,61,4),(8,62,6),(8,63,8),(8,64,5),(8,65,9),(8,66,8),(8,67,10),(8,68,7),(8,69,3),(8,70,1),(8,71,9),(8,72,10),(8,73,1),(8,74,6),(8,75,10),(8,76,1),(8,77,1),(8,78,7),(8,79,8),(8,80,8),(8,81,8),(8,82,4),(8,83,7),(8,84,4),(8,85,8),(8,86,2),(8,87,11),(8,88,7),(8,89,2),(8,90,11),(8,91,5),(8,92,9),(8,93,8),(8,94,11),(8,95,1),(8,96,2),(8,97,7),(8,98,3),(8,99,5),(8,100,2),(8,101,8),(8,102,1),(8,103,3),(8,104,3),(8,105,6),(8,106,7),(8,107,5),(8,108,11),(8,109,1),(8,110,3),(8,111,4),(8,112,8),(8,113,2),(8,114,3),(8,115,1),(8,116,7),(8,117,2),(8,118,6),(8,119,3),(8,120,9),(8,121,10),(8,122,3),(8,123,11),(8,124,2),(8,125,6),(8,126,2),(8,127,8),(8,128,9),(8,129,4),(8,130,6),(8,131,11),(8,132,3),(8,133,8),(8,134,9),(8,135,8),(8,136,11),(8,137,1),(8,138,11),(8,139,1),(8,140,8),(8,141,3),(8,142,5),(8,143,3),(8,144,8),(8,145,7),(8,146,1),(8,147,2),(8,148,1),(8,149,3),(8,150,5),(8,151,9),(8,152,5),(8,153,3),(8,154,2),(8,155,4),(8,156,11),(8,157,10),(8,158,4),(8,159,1),(8,160,11),(8,161,5),(8,162,5),(8,163,9),(8,164,7),(8,165,6),(8,166,11),(8,167,5),(8,168,4),(8,169,3),(8,170,8),(8,171,5),(8,172,2),(8,173,4),(8,174,11),(8,175,8),(8,176,9),(8,177,2),(8,178,2),(8,179,10),(8,180,6),(8,181,4),(8,182,4),(8,183,1),(8,184,2),(8,185,5),(8,186,7),(8,187,10),(8,188,1),(8,189,1),(8,190,7),(8,191,4),(8,192,3),(8,193,8),(8,194,11),(8,195,8),(8,196,5),(8,197,7),(8,198,4),(8,199,8),(8,200,8),(8,201,2),(8,202,11),(8,203,11),(8,204,7),(8,205,2),(8,206,8),(8,207,3),(8,208,9),(8,209,1),(8,210,8),(8,211,7),(8,212,3),(8,213,5),(8,214,3),(8,215,4),(8,216,3),(8,217,4),(8,218,10),(8,219,4),(8,220,11),(8,221,2),(8,222,4),(8,223,10),(8,224,5),(8,225,9),(8,226,1),(8,227,5),(8,228,5),(8,229,5),(8,230,3),(8,231,8),(8,232,7),(8,233,6),(8,234,8),(8,235,10),(8,236,9),(8,237,10),(8,238,7),(8,239,3),(8,240,8),(8,241,4),(8,242,8),(8,243,7),(8,244,2),(8,245,9),(8,246,11),(8,247,11),(8,248,5),(8,249,1),(8,250,5),(8,251,10),(8,252,9),(8,253,11),(8,254,11),(8,255,5),(8,256,9),(8,257,5),(8,258,8),(8,259,7),(8,260,10),(8,261,8),(8,262,6),(8,263,8),(8,264,2),(8,265,3),(8,266,5),(8,267,8),(8,268,3),(8,269,4),(8,270,2),(8,271,1),(8,272,9),(8,273,3),(8,274,11),(8,275,1),(8,276,1),(8,277,1),(8,278,7),(8,279,10),(8,280,11),(8,281,10),(8,282,2),(8,283,3),(8,284,10),(8,285,1),(8,286,10),(8,287,3),(8,288,6),(8,289,4),(8,290,8),(8,291,10),(8,292,11),(8,293,5),(8,294,2),(8,295,8),(8,296,8),(8,297,5),(8,298,5),(8,299,2),(8,300,10),(8,301,9),(8,302,9),(8,303,3),(8,304,9),(8,305,7),(8,306,11),(8,307,6),(8,308,7),(8,309,3),(8,310,2),(8,311,11),(8,312,7),(8,313,7),(8,314,3),(8,315,11),(8,316,10),(8,317,8),(8,318,2),(8,319,5),(8,320,11),(8,321,2),(8,322,1),(8,323,3),(8,324,8),(8,325,4),(8,326,2),(8,327,9),(8,328,11),(8,329,9),(8,330,8),(8,331,6),(8,332,4),(8,333,6),(8,334,3),(8,335,3),(8,336,1),(8,337,6),(8,338,2),(8,339,8),(8,340,6),(8,341,3),(8,342,1),(8,343,1),(8,344,10),(8,345,8),(8,346,2),(8,347,3),(8,348,6),(8,349,7),(8,350,6),(8,351,8),(8,352,4),(8,353,3),(8,354,7),(8,355,3),(8,356,11),(8,357,10),(8,358,2),(8,359,5),(8,360,11),(8,361,6),(8,362,10),(8,363,8),(8,364,5),(8,365,9),(9,1,2),(9,2,5),(9,3,4),(9,4,8),(9,5,5),(9,6,5),(9,7,9),(9,8,3),(9,9,3),(9,10,5),(9,11,2),(9,12,5),(9,13,7),(9,14,2),(9,15,6),(9,16,8),(9,17,6),(9,18,10),(9,19,7),(9,20,3),(9,21,11),(9,22,8),(9,23,7),(9,24,3),(9,25,1),(9,26,1),(9,27,5),(9,28,7),(9,29,10),(9,30,9),(9,31,6),(9,32,3),(9,33,6),(9,34,10),(9,35,3),(9,36,4),(9,37,2),(9,38,3),(9,39,4),(9,40,9),(9,41,5),(9,42,2),(9,43,3),(9,44,2),(9,45,3),(9,46,9),(9,47,8),(9,48,4),(9,49,1),(9,50,1),(9,51,6),(9,52,10),(9,53,11),(9,54,7),(9,55,3),(9,56,11),(9,57,5),(9,58,10),(9,59,7),(9,60,4),(9,61,3),(9,62,5),(9,63,2),(9,64,1),(9,65,4),(9,66,5),(9,67,5),(9,68,4),(9,69,5),(9,70,11),(9,71,9),(9,72,5),(9,73,10),(9,74,1),(9,75,11),(9,76,1),(9,77,2),(9,78,11),(9,79,2),(9,80,11),(9,81,11),(9,82,9),(9,83,9),(9,84,3),(9,85,2),(9,86,10),(9,87,3),(9,88,9),(9,89,8),(9,90,1),(9,91,3),(9,92,4),(9,93,5),(9,94,3),(9,95,11),(9,96,6),(9,97,3),(9,98,1),(9,99,10),(9,100,1),(9,101,3),(9,102,11),(9,103,2),(9,104,10),(9,105,10),(9,106,6),(9,107,4),(9,108,6),(9,109,10),(9,110,8),(9,111,11),(9,112,11),(9,113,3),(9,114,2),(9,115,1),(9,116,10),(9,117,9),(9,118,4),(9,119,2),(9,120,9),(9,121,9),(9,122,3),(9,123,11),(9,124,11),(9,125,7),(9,126,3),(9,127,6),(9,128,8),(9,129,11),(9,130,4),(9,131,8),(9,132,2),(9,133,3),(9,134,11),(9,135,6),(9,136,6),(9,137,10),(9,138,2),(9,139,3),(9,140,3),(9,141,11),(9,142,3),(9,143,8),(9,144,1),(9,145,5),(9,146,5),(9,147,3),(9,148,7),(9,149,11),(9,150,1),(9,151,3),(9,152,7),(9,153,8),(9,154,11),(9,155,11),(9,156,11),(9,157,3),(9,158,8),(9,159,10),(9,160,10),(9,161,1),(9,162,8),(9,163,6),(9,164,10),(9,165,2),(9,166,3),(9,167,9),(9,168,2),(9,169,3),(9,170,11),(9,171,3),(9,172,2),(9,173,10),(9,174,11),(9,175,3),(9,176,1),(9,177,4),(9,178,6),(9,179,7),(9,180,3),(9,181,8),(9,182,11),(9,183,2),(9,184,2),(9,185,11),(9,186,7),(9,187,1),(9,188,4),(9,189,10),(9,190,8),(9,191,2),(9,192,8),(9,193,4),(9,194,3),(9,195,4),(9,196,4),(9,197,7),(9,198,4),(9,199,5),(9,200,1),(9,201,7),(9,202,6),(9,203,7),(9,204,3),(9,205,6),(9,206,1),(9,207,11),(9,208,3),(9,209,1),(9,210,1),(9,211,7),(9,212,6),(9,213,10),(9,214,11),(9,215,10),(9,216,7),(9,217,1),(9,218,5),(9,219,4),(9,220,1),(9,221,7),(9,222,10),(9,223,11),(9,224,11),(9,225,11),(9,226,5),(9,227,1),(9,228,6),(9,229,10),(9,230,5),(9,231,10),(9,232,11),(9,233,10),(9,234,6),(9,235,7),(9,236,9),(9,237,11),(9,238,11),(9,239,6),(9,240,7),(9,241,7),(9,242,1),(9,243,8),(9,244,7),(9,245,4),(9,246,1),(9,247,8),(9,248,3),(9,249,11),(9,250,3),(9,251,5),(9,252,3),(9,253,7),(9,254,7),(9,255,7),(9,256,7),(9,257,11),(9,258,10),(9,259,4),(9,260,3),(9,261,4),(9,262,4),(9,263,11),(9,264,5),(9,265,7),(9,266,4),(9,267,5),(9,268,6),(9,269,11),(9,270,9),(9,271,3),(9,272,7),(9,273,6),(9,274,2),(9,275,4),(9,276,10),(9,277,6),(9,278,10),(9,279,7),(9,280,9),(9,281,5),(9,282,5),(9,283,5),(9,284,8),(9,285,1),(9,286,8),(9,287,6),(9,288,8),(9,289,3),(9,290,3),(9,291,9),(9,292,8),(9,293,4),(9,294,11),(9,295,1),(9,296,5),(9,297,8),(9,298,5),(9,299,9),(9,300,6),(9,301,1),(9,302,9),(9,303,4),(9,304,11),(9,305,2),(9,306,5),(9,307,7),(9,308,9),(9,309,4),(9,310,8),(9,311,10),(9,312,9),(9,313,3),(9,314,4),(9,315,9),(9,316,5),(9,317,5),(9,318,1),(9,319,1),(9,320,3),(9,321,3),(9,322,8),(9,323,5),(9,324,1),(9,325,5),(9,326,4),(9,327,9),(9,328,8),(9,329,7),(9,330,6),(9,331,8),(9,332,3),(9,333,9),(9,334,11),(9,335,2),(9,336,10),(9,337,7),(9,338,8),(9,339,7),(9,340,3),(9,341,9),(9,342,11),(9,343,9),(9,344,1),(9,345,11),(9,346,1),(9,347,7),(9,348,11),(9,349,6),(9,350,10),(9,351,10),(9,352,10),(9,353,9),(9,354,5),(9,355,8),(9,356,11),(9,357,10),(9,358,2),(9,359,6),(9,360,6),(9,361,1),(9,362,6),(9,363,5),(9,364,10),(9,365,8),(10,1,1),(10,2,1),(10,3,4),(10,4,5),(10,5,4),(10,6,2),(10,7,1),(10,8,4),(10,9,6),(10,10,2),(10,11,3),(10,12,7),(10,13,4),(10,14,9),(10,15,3),(10,16,5),(10,17,6),(10,18,4),(10,19,3),(10,20,2),(10,21,10),(10,22,8),(10,23,7),(10,24,6),(10,25,10),(10,26,11),(10,27,8),(10,28,4),(10,29,8),(10,30,7),(10,31,1),(10,32,9),(10,33,9),(10,34,4),(10,35,11),(10,36,4),(10,37,8),(10,38,5),(10,39,6),(10,40,7),(10,41,6),(10,42,4),(10,43,5),(10,44,11),(10,45,10),(10,46,4),(10,47,3),(10,48,5),(10,49,2),(10,50,10),(10,51,10),(10,52,2),(10,53,2),(10,54,5),(10,55,4),(10,56,3),(10,57,8),(10,58,7),(10,59,7),(10,60,2),(10,61,8),(10,62,1),(10,63,9),(10,64,7),(10,65,11),(10,66,6),(10,67,2),(10,68,2),(10,69,8),(10,70,9),(10,71,2),(10,72,10),(10,73,11),(10,74,5),(10,75,11),(10,76,2),(10,77,6),(10,78,9),(10,79,4),(10,80,10),(10,81,10),(10,82,11),(10,83,9),(10,84,11),(10,85,7),(10,86,2),(10,87,11),(10,88,9),(10,89,10),(10,90,9),(10,91,2),(10,92,11),(10,93,5),(10,94,3),(10,95,2),(10,96,4),(10,97,3),(10,98,11),(10,99,10),(10,100,10),(10,101,4),(10,102,8),(10,103,9),(10,104,9),(10,105,3),(10,106,5),(10,107,6),(10,108,2),(10,109,8),(10,110,4),(10,111,8),(10,112,11),(10,113,4),(10,114,8),(10,115,1),(10,116,8),(10,117,8),(10,118,6),(10,119,6),(10,120,8),(10,121,2),(10,122,8),(10,123,8),(10,124,4),(10,125,4),(10,126,4),(10,127,8),(10,128,7),(10,129,11),(10,130,9),(10,131,8),(10,132,11),(10,133,7),(10,134,5),(10,135,10),(10,136,2),(10,137,2),(10,138,5),(10,139,4),(10,140,7),(10,141,11),(10,142,5),(10,143,6),(10,144,8),(10,145,8),(10,146,9),(10,147,4),(10,148,4),(10,149,9),(10,150,9),(10,151,4),(10,152,8),(10,153,5),(10,154,6),(10,155,6),(10,156,6),(10,157,2),(10,158,7),(10,159,6),(10,160,8),(10,161,1),(10,162,10),(10,163,9),(10,164,1),(10,165,10),(10,166,3),(10,167,1),(10,168,9),(10,169,6),(10,170,2),(10,171,7),(10,172,3),(10,173,6),(10,174,10),(10,175,7),(10,176,8),(10,177,11),(10,178,11),(10,179,5),(10,180,6),(10,181,2),(10,182,5),(10,183,1),(10,184,4),(10,185,11),(10,186,4),(10,187,11),(10,188,2),(10,189,2),(10,190,10),(10,191,6),(10,192,11),(10,193,7),(10,194,4),(10,195,6),(10,196,3),(10,197,6),(10,198,3),(10,199,9),(10,200,10),(10,201,9),(10,202,3),(10,203,4),(10,204,4),(10,205,5),(10,206,1),(10,207,6),(10,208,1),(10,209,2),(10,210,9),(10,211,5),(10,212,9),(10,213,8),(10,214,5),(10,215,4),(10,216,2),(10,217,6),(10,218,4),(10,219,3),(10,220,3),(10,221,8),(10,222,5),(10,223,8),(10,224,8),(10,225,6),(10,226,5),(10,227,1),(10,228,1),(10,229,2),(10,230,3),(10,231,11),(10,232,5),(10,233,5),(10,234,10),(10,235,7),(10,236,1),(10,237,11),(10,238,1),(10,239,1),(10,240,10),(10,241,3),(10,242,7),(10,243,9),(10,244,9),(10,245,11),(10,246,6),(10,247,1),(10,248,5),(10,249,3),(10,250,9),(10,251,6),(10,252,11),(10,253,7),(10,254,5),(10,255,7),(10,256,7),(10,257,9),(10,258,2),(10,259,2),(10,260,7),(10,261,11),(10,262,6),(10,263,1),(10,264,9),(10,265,3),(10,266,6),(10,267,4),(10,268,3),(10,269,9),(10,270,3),(10,271,2),(10,272,9),(10,273,10),(10,274,7),(10,275,5),(10,276,6),(10,277,10),(10,278,8),(10,279,10),(10,280,3),(10,281,7),(10,282,8),(10,283,10),(10,284,10),(10,285,8),(10,286,5),(10,287,8),(10,288,7),(10,289,2),(10,290,10),(10,291,1),(10,292,1),(10,293,5),(10,294,2),(10,295,3),(10,296,6),(10,297,1),(10,298,7),(10,299,10),(10,300,10),(10,301,7),(10,302,4),(10,303,7),(10,304,6),(10,305,7),(10,306,2),(10,307,3),(10,308,11),(10,309,1),(10,310,8),(10,311,6),(10,312,5),(10,313,2),(10,314,2),(10,315,11),(10,316,4),(10,317,2),(10,318,9),(10,319,5),(10,320,9),(10,321,11),(10,322,2),(10,323,11),(10,324,4),(10,325,6),(10,326,9),(10,327,1),(10,328,10),(10,329,1),(10,330,8),(10,331,1),(10,332,4),(10,333,7),(10,334,9),(10,335,9),(10,336,8),(10,337,10),(10,338,1),(10,339,5),(10,340,5),(10,341,8),(10,342,11),(10,343,7),(10,344,10),(10,345,7),(10,346,7),(10,347,2),(10,348,7),(10,349,6),(10,350,5),(10,351,4),(10,352,1),(10,353,4),(10,354,5),(10,355,11),(10,356,4),(10,357,11),(10,358,7),(10,359,5),(10,360,10),(10,361,9),(10,362,7),(10,363,1),(10,364,7),(10,365,11);
/*!40000 ALTER TABLE `linktable3` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-11 12:58:59
