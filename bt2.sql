CREATE DATABASE bt2;
USE bt2;

CREATE TABLE customers(
customer_id int primary key,
fullname VARCHAR(100) not null,
email VARCHAR(100) not null ,
age int check ( age > 0 )
);

ALTER TABLE CUSTOMERS 
ADD constraint customer_email unique (email);