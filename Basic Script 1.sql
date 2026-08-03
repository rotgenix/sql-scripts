-- To create database 
CREATE DATABASE db_name;

-- To use table
USE student;

-- To create table
CREATE TABLE personal(
	id INT,
    name VARCHAR(50),
    birth_date DATE,
    phone VARCHAR(12),
    gender VARCHAR(1)
);

CREATE TABLE product(
	pid INT,
    pname VARCHAR(50),
    pcompany VARCHAR(50),
    price INT
);

-- To insert single row in table
INSERT INTO personal (id, name, birth_date, phone, gender)
VALUES (2, "Meera", "1991-04-25", "919876543211","F");

-- To insert multiple rows in table
INSERT INTO personal (id, name, birth_date, phone, gender)
VALUES 
(3, "Anil Kapoor", "1994-09-05", "919876543213","M"),
(4, "Juhi Chawla", "1993-01-02", "919876543214","F"),
(5, "john Abraham", "1992-02-07", "919876543215","M");

-- CONSTRAINTS in table
-- NOT NULL -> con't be an empty value in column
-- UNIQUE -> column always accepts unique value
-- DEFAULT -> can set default value
-- CHECK -> checks for given condition
-- FOREIGN KEY
-- PRIMARY KEY

-- Creating table with contraints
CREATE TABLE personal(
	id INT NOT NULL UNIQUE,
    name VARCHAR(50) NOT NULL,
    age INT NOT NULL CHECK(age >= 18),
    gender VARCHAR(1) NOT NULL,
    phone VARCHAR(12) NOT NULL UNIQUE,
    city VARCHAR(15) NOT NULL DEFAULT 'Agra'
);

INSERT INTO personal (id, name, age, gender, phone, city)
VALUES 
(1, "Ram", 19, "M", "919876543211","Gwalior");

INSERT INTO personal (id, name, age, gender, phone)
VALUES 
(2, "Sarita", 20, "F", "919876543212");

-- Read Data --

-- To get all the columns
SELECT *
FROM personal;

-- To get specific columns
SELECT id, name, phone
FROM personal;

-- using allias for the column name
SELECT id AS Id, name, phone
FROM personal;

-- Where clause

SELECT* FROM personal
WHERE gender = "M";