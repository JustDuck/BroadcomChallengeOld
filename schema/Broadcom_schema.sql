-- phpMyAdmin SQL Dump
-- version 5.6.26
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 04, 2021 at 09:15 PM
-- Server version: 5.6.26
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `broadcom`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `SlNo` int(11) NOT NULL,
  `fullName` varchar(30) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `userName` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`SlNo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `SlNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- SlNo,fullName,Email,userName,password) values (NULL,?,?,?,?)";

--- queries and table setups.

-- User has the following attributes: {ID, Name, Age, Address 1, Address 2 }


CREATE TABLE CUSTOMERS(
   ID   INT              NOT NULL,
   NAME VARCHAR (20)     NOT NULL,
   AGE  INT              NOT NULL,
   ADDRESS1  CHAR (25) ,
   ADDRESS2  CHAR (25) ,
   SALARY   DECIMAL (18, 2),       
   PRIMARY KEY (ID)
);

DESC CUSTOMERS;
 
INSERT INTO CUSTOMERS (ID,NAME,AGE,ADDRESS1,ADDRESS2,SALARY)
VALUES (1, 'Ramesh', 32, 'Ahmedabad','India', 2000.00 );

INSERT INTO CUSTOMERS (ID,NAME,AGE,ADDRESS1,ADDRESS2,SALARY)
VALUES (2, 'Khilan', 25, 'Delhi', 'India',1500.00 );

INSERT INTO CUSTOMERS (ID,NAME,AGE,ADDRESS1,ADDRESS2,SALARY)
VALUES (3, 'kaushik', 23, 'Phoenix','Arizona' ,2000.00 );

INSERT INTO CUSTOMERS (ID,NAME,AGE,ADDRESS1,ADDRESS2,SALARY)
VALUES (4, 'Chaitali', 25, 'Mumbai','India ', 6500.00 );

INSERT INTO CUSTOMERS (ID,NAME,AGE,ADDRESS1,ADDRESS2,SALARY)
VALUES (5, 'Hardik', 27, 'Bhopal', 'India ',8500.00 );

INSERT INTO CUSTOMERS (ID,NAME,AGE,ADDRESS1,ADDRESS2,SALARY)
VALUES (6, 'Komal', 22, 'Cleveland','OHIO', 4500.00 );

INSERT INTO CUSTOMERS (ID,NAME,AGE,ADDRESS1,ADDRESS2,SALARY)
VALUES (7, 'Thorsen ', 60, 'Chicago','Illinois', 8800.00 );

INSERT INTO CUSTOMERS (ID,NAME,AGE,ADDRESS1,ADDRESS2,SALARY)
VALUES (8, 'Smith ', 15, 'Abbotsford','Wisconsin', 1500.00 );

INSERT INTO CUSTOMERS (ID,NAME,AGE,ADDRESS1,ADDRESS2,SALARY)
VALUES (9, 'Fricks ', 85, 'Tomah','Wisconsin', 5500.00 );

INSERT INTO CUSTOMERS (ID,NAME,AGE,ADDRESS1,ADDRESS2,SALARY)
VALUES (10, 'Dorman ', 24, 'Wausau','Wisconsin', 9500.00 );

DESC CUSTOMERS;

SELECT ID, NAME, SALARY 
FROM CUSTOMERS
WHERE SALARY > 2000;

--- Need to do this:

--- Implement a working API for a Web UI / Mobile App, that supports the following use cases: 
-- 1. Display all users in a table view (Name, Age)
-- 2. Filter the users by last name and age
-- 3. Sort by Name or Age


CREATE VIEW `my user view` AS SELECT `name`,`age` FROM `CUSTOMERS`;

SELECT * FROM `my user view`;

Select * from CUSTOMERS order by Name;

Select * from CUSTOMERS order by age;
	
SELECT NAME,age
FROM CUSTOMERS

WHERE
age>0 order by age;

