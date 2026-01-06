CREATE TABLE Persons (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) 



Create Table dni(
	 dni_id int AUTO_INCREMENT PRIMARY KEY,
	 dni_number int NOT NULL,
   user_id int ,
   UNIQUE(dni_id),
  FOREIGN KEY(user_id) REFERENCES Users(user_id)

 );


CREATE TABLE usuarios (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  telefono VARCHAR(20) NOT NULL,
  UNIQUE(email)
);


CREATE TABLE IF NOT EXISTS productos(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  precio DECIMAL(10,2) NOT NULL,
  stock INT UNSIGNED NOT NULL
);

CREATE TABLE IF NOT EXISTS pedidos(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  usuario_id  INT NOT NULL,
  total DECIMAL(10,2) NOT NULL,
  fecha DATETIME NOT NULL
);