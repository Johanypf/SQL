CREATE TABLE `Persons2` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `age` int DEFAULT NULL,
  created datetime DEFAULT CURRENT_TIMESTAMP(),
  PRIMARY KEY (`id`),
CHECK ((`age` >= 18))
) 
