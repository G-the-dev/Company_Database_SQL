--
-- Table structure for table `works_with`
--

DROP TABLE IF EXISTS `works_with`;

CREATE TABLE `works_with` (
  `emp_id` int NOT NULL,
  `client_id` int NOT NULL,
  `total_sales` int DEFAULT NULL,
  PRIMARY KEY (`emp_id`,`client_id`),
  KEY `client_id` (`client_id`),
  CONSTRAINT `works_with_ibfk_1` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`emp_id`) ON DELETE CASCADE,
  CONSTRAINT `works_with_ibfk_2` FOREIGN KEY (`client_id`) REFERENCES `client` (`client_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `works_with`
--

LOCK TABLES `works_with` WRITE;
INSERT INTO `works_with` VALUES (102,401,267000),(102,406,15000),(105,400,55000),(105,404,33000),(105,406,130000),(107,403,5000),(107,405,26000),(108,402,22500),(108,403,12000);
UNLOCK TABLES;
