
-- Table structure for table `branch_supplier`
--

DROP TABLE IF EXISTS `branch_supplier`;

CREATE TABLE `branch_supplier` (
  `branch_id` int NOT NULL,
  `supplier_name` varchar(40) NOT NULL,
  `supply_type` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`branch_id`,`supplier_name`),
  CONSTRAINT `branch_supplier_ibfk_1` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`branch_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


--
-- Dumping data for table `branch_supplier`
--

LOCK TABLES `branch_supplier` WRITE;

INSERT INTO `branch_supplier` VALUES (2,'Hammer Mill','Paper'),(2,'J.T. Forms & Labels','Custom Forms'),(2,'Uni-ball','Writing Utensils'),(3,'Hammer Mill','Paper'),(3,'Patriot Paper','Paper'),(3,'Stamford Lables','Custom Forms'),(3,'Uni-ball','Writing Utensils');

UNLOCK TABLES;
