CREATE SCHEMA db_titanic;
SHOW DATABASES;
USE db_titanic;

DROP TABLE db_titanic.titanictable;

CREATE TABLE titanictable_main (
 PassengerId int  NOT NULL, 
 Ticket VARCHAR(1000) NOT NULL,
 PRIMARY KEY (PassengerId));
 
SELECT * FROM db_titanic.titanictable_main;
 
 CREATE TABLE titanictable_name (
 PassengerId int  NOT NULL, 
 FirstName VARCHAR(255) NOT NULL,  
 LastName VARCHAR(255) NOT NULL,
 FOREIGN KEY (PassengerId)
 REFERENCES titanictable_main);
 
 SELECT * FROM db_titanic.titanictable_name;
 
 CREATE TABLE titanictable_age (
 PassengerId int  NOT NULL, 
 Age INT(135), 
 FOREIGN KEY (PassengerId)
 REFERENCES titanictable_name);
 
 SELECT * FROM db_titanic.titanictable_age;
 
 CREATE TABLE titanictable_sex (
 PassengerId int  NOT NULL, 
 Sex ENUM('male', 'female') NOT NULL,  
FOREIGN KEY (PassengerId)
 REFERENCES titanictable_main);
 
 SELECT * FROM db_titanic.titanictable_sex;
 
 CREATE TABLE titanictable_sibsp (
 PassengerId int  NOT NULL, 
 SibSp INT(20) NOT NULL, 
 FOREIGN KEY (PassengerId)
 REFERENCES titanictable_main);
 
 SELECT * FROM db_titanic.titanictable_sibsp;
 
 CREATE TABLE titanictable_survived (
 PassengerId int  NOT NULL, 
 Survived BOOL NOT NULL, 
 FOREIGN KEY (PassengerId)
 REFERENCES titanictable_main);
 
 
 
 SELECT * FROM db_titanic.titanictable_survived;
 
 CREATE TABLE titanictable_parch (
 PassengerId int  NOT NULL, 
  Parch INT(20) NOT NULL, 
 FOREIGN KEY (PassengerId)
 REFERENCES titanictable_main);
 
 CREATE TABLE titanictable_pclass (
 TicketId int  NOT NULL, 
 Pclass ENUM('1','2','3') NOT NULL, 
 FOREIGN KEY (TicketId)
 REFERENCES titanictable_main);
 
 CREATE TABLE titanictable_embarked (
 TicketId int  NOT NULL, 
 Embarked ENUM('C','Q','S') NOT NULL,  
 FOREIGN KEY (TicketId)
 REFERENCES titanictable_main);
 
 CREATE TABLE titanictable_cabin (
 TicketId int  NOT NULL, 
  Cabin VARCHAR(100),  
  FOREIGN KEY (TicketId)
 REFERENCES titanictable_main);

CREATE TABLE titanictable_fare (
 TicketId int  NOT NULL, 
 Fare FLOAT(1000) NOT NULL,
 FOREIGN KEY (TicketId)
 REFERENCES titanictable_main);