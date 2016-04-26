create database online_library;

use online_library;

CREATE TABLE login(
username  VARCHAR(10) NOT NULL,
pwd  VARCHAR(10) NOT NULL,
fullname  VARCHAR(30) NOT NULL,
PRIMARY KEY (username));

CREATE TABLE  book_details ( 
book_id INT(10) NOT NULL AUTO_INCREMENT , 
  isbn INT(10) NOT NULL, 
title VARCHAR(45) NOT NULL, 
   author VARCHAR(30)  NOT NULL, 
book_type VARCHAR(20) NOT NULL, 
   description VARCHAR(200) DEFAULT NULL, 
   PRIMARY KEY (book_id) 
 ); 
 
ALTER TABLE book_details AUTO_INCREMENT=1000; 

 CREATE TABLE user_details( 
 user_id INT(10) NOT NULL AUTO_INCREMENT , 
 user_name VARCHAR(30) NOT NULL, 
 subcription_type VARCHAR(20) NOT NULL, 
 Start_date DATE NOT NULL DEFAULT NOW(), 
 end_date DATE DEFAULT NULL,
 book_count default 0, 
 email_id VARCHAR(30) NOT NULL,
PRIMARY KEY (user_id) 
); 

ALTER TABLE user_details AUTO_INCREMENT=6000;

CREATE TABLE subcription(
Type VARCHAR(20) NOT NULL,
Max_count_month  int(10) NOT NULL,
yearly_Fee  int(10) NOT NULL,
Days_limit_per_book int(10) NOT NULL);

CREATE TABLE Status_of_borrow(
book_id INT(10) NOT NULL,
user_id  INT(10)NOT NULL ,
book_title VARCHAR(2) NOT NULL,
expiry_date date NOT NULL,
return_date date NOT NULL,
FOREIGN KEY (book_id) references book_details(book_id),
FOREIGN KEY (book_title) references book_details(title),
FOREIGN KEY (user_id) references user_details(user_id)
);

CREATE TABLE supplier(
Supplier_id INT(10) NOT NULL AUTO_INCREMENT ,
supplier_name VARCHAR(30) NOT NULL,
Contact_no number(10)  NOT NULL,
PRIMARY KEY (supplier_id));

ALTER TABLE supplier AUTO_INCREMENT=3000;

INSERT INTO login(username,pwd,fullname) VALUES 
('John_K','566798','John Kennedy'),
('Steve_s','cricket','Steve Smith');

INSERT INTO book_details(book_id,isbn,title,author,book_type,description) VALUES 
(NULL,'565-1-520-9630-4','Family Life','Akhil Sharma','Physical','Real Life'), 
(NULL,'898-45-654-7896','Food for All','Uma Lele','E-Book','Non-Fiction'),
(NULL,'564-9-871231-87','Revolution 2020','Chetan Bhagat','physical','Fiction');

INSERT INTO user_details(user_id,user_name,subcription_type,book_count,email_id) VALUES 
(NULL,'John','Gold','2','john@yahoo.in')
(NULL,'Steve','Platinum','1','smith@gmail.com'),
(NULL,'Jacco','Silver','0','jacco@gmail.com');


INSERT INTO subcription(type,max_count_month,Yearly_fee,days_limit_per_book) VALUES 
('Gold','4','1500','20'),
('Platinum','6','2000','30'),
('silver','2','750','15');

INSERT INTO supplier(supplier_id,supplier_name,contact_no) VALUES
 (NULL,'Hero Books','9632584567'),
(NULL,'Bharat Books','9871235460');

INSERT INTO status_of_borrow(book_id,user_id,book_title,expiry_date,return_date) VALUES
('1000','6001','Family Life','30/05/2016',NOW()),
('1002','6000','Revolution 2020','25/04/2016','21/04/2016');



