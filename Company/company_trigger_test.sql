---
-- Table structure for table `trigger_test`
--

DROP TABLE IF EXISTS `trigger_test`;
CREATE TABLE `trigger_test` (
  `message` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `trigger_test`
--

LOCK TABLES `trigger_test` WRITE;
INSERT INTO `trigger_test` VALUES ('added new employee'),('added new employee'),('added new employee');
UNLOCK TABLES;
