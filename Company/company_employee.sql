--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;

CREATE TABLE `employee` (
  `emp_id` int NOT NULL,
  `first_name` varchar(40) DEFAULT NULL,
  `last_name` varchar(40) DEFAULT NULL,
  `birth_day` date DEFAULT NULL,
  `sex` varchar(1) DEFAULT NULL,
  `salary` int DEFAULT NULL,
  `super_id` int DEFAULT NULL,
  `branch_id` int DEFAULT NULL,
  PRIMARY KEY (`emp_id`),
  KEY `branch_id` (`branch_id`),
  KEY `super_id` (`super_id`),
  CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`branch_id`) ON DELETE SET NULL,
  CONSTRAINT `employee_ibfk_2` FOREIGN KEY (`super_id`) REFERENCES `employee` (`emp_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
INSERT INTO `employee` VALUES (100,'David','Wallace','1967-11-17','M',250000,NULL,1),(101,'Jan','Levinson','1961-05-11','F',110000,100,1),(102,'Michael','Scott','1964-03-15','M',75000,100,2),(103,'Angela','Martin','1971-06-25','F',63000,102,2),(104,'Kelly','Kapoor','1980-02-05','F',55000,102,2),(105,'Stanley','Hudson','1958-02-19','M',69000,102,2),(106,'Josh','Porter','1969-09-05','M',78000,100,3),(107,'Andy','Bernard','1973-07-22','M',65000,106,3),(108,'Jim','Halpert','1978-10-01','M',71000,106,3),(109,'Oscar','Martinez','1968-02-19','M',69000,106,3),(110,'Kevin','Malone','1978-02-19','M',69000,106,3),(111,'Pam','Beesly','1988-02-19','F',69000,106,3);
UNLOCK TABLES;
