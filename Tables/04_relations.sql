
# relation 1:1

Create Table dni(
	 dni_id int AUTO_INCREMENT PRIMARY KEY,
	 dni_number int NOT NULL,
   user_id int ,
   UNIQUE(dni_id),
  FOREIGN KEY(user_id) REFERENCES Users(user_id)

 );




Create Table companies(
	 company_id int AUTO_INCREMENT PRIMARY KEY,
	 name varchar(100) NOT NULL,	
     UNIQUE(name)
 );



 ALTER Table Users
 ADD CONSTRAINT fk_companies
 FOREIGN KEY(company_id) REFERENCES companies(company_id);


 Create Table lenguages(
	 lenguage_id int AUTO_INCREMENT PRIMARY KEY,
	 name varchar(100) NOT NULL
 );


 
 ALTER Table Users
 ADD CONSTRAINT fk_companies
 FOREIGN KEY(company_id) REFERENCES companies(company_id);
 
 ALTER TABLE  User_lenguages
 ADD UNIQUE(user_id,language_id);

 
