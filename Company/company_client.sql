--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;

CREATE TABLE `client` (
  `client_id` int NOT NULL,
  `client_name` varchar(40) DEFAULT NULL,
  `branch_id` int DEFAULT NULL,
  PRIMARY KEY (`client_id`),
  KEY `branch_id` (`branch_id`),
  CONSTRAINT `client_ibfk_1` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`branch_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
INSERT INTO `client` VALUES (400,'Dunmore Highschool',2),(401,'Lackawana Country',2),(402,'FedEx',3),(403,'John Daly Law, LLC',3),(404,'Scranton Whitepages',2),(405,'Times Newspaper',3),(406,'FedEx',2);
UNLOCK TABLES;
