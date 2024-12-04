USE BTECH_CSE_3A_113;


--Perform SQL queries for Subqueries


CREATE TABLE STUDENT_DATA(
	no INT,
	Name VARCHAR(10),
	City VARCHAR(10),
	DID INT
);

INSERT INTO STUDENT_DATA (NO, NAME, CITY, DID) VALUES 
(101, 'Raju', 'Rajkot', 10),
(102, 'Amit', 'Ahmedabad', 20),
(103, 'Sanjay', 'Baroda', 40),
(104, 'Neha', 'Rajkot', 20),
(105, 'Meera', 'Ahmedabad', 30),
(106, 'Mahesh', 'Baroda', 10);

SELECT * FROM STUDENT_DATA;

------------------------------------------------------------

CREATE TABLE ACADEMIC(
	Rno INT,
	SPI DECIMAL(2,1),
	Bklog INT
);

INSERT INTO ACADEMIC (RNO, SPI, BKLOG) VALUES
(101, 8.8, 0),
(102, 9.2, 2),
(103, 7.6, 1),
(104, 8.2, 4),
(105, 7.0, 2),
(106, 8.9, 3);

SELECT * FROM ACADEMIC;

------------------------------------------------------------

CREATE TABLE DEPARTMENT(
	DID INT,
	DName VARCHAR(15)
);

INSERT INTO DEPARTMENT (DID, DNAME) VALUES 
(10, 'Computer'),
(20, 'Electrical'),
(30, 'Mechanical'),
(40, 'Civil');

SELECT * FROM DEPARTMENT;


--Part – A:

--1. Display details of students who are from computer department.
SELECT * FROM STUDENT_DATA WHERE DID=(SELECT DID FROM DEPARTMENT WHERE DNAME='COMPUTER');

--2. Displays name of students whose SPI is more than 8.
SELECT NAME FROM STUDENT_DATA WHERE NO IN(SELECT RNO FROM ACADEMIC WHERE SPI>8);

--3. Display details of students of computer department who belongs to Rajkot city.
SELECT * FROM STUDENT_DATA WHERE CITY='RAJKOT' AND DID=(SELECT DID FROM DEPARTMENT WHERE DNAME='COMPUTER');

--4. Find total number of students of electrical department.
SELECT COUNT(*) COUNT FROM STUDENT_DATA WHERE DID=(SELECT DID FROM DEPARTMENT WHERE DNAME='ELECTRICAL');

--5. Display name of student who is having maximum SPI.
SELECT NAME FROM STUDENT_DATA WHERE NO IN(SELECT RNO FROM ACADEMIC WHERE SPI=(SELECT MAX(SPI) FROM ACADEMIC));

--6. Display details of students having more than 1 backlog.
SELECT * FROM STUDENT_DATA WHERE NO IN(SELECT RNO FROM ACADEMIC WHERE BKLOG=0);



--Part – B:

--1. Display name of students who are either from computer department or from mechanical department.
SELECT NAME FROM STUDENT_DATA WHERE DID IN(SELECT DID FROM DEPARTMENT WHERE DNAME='COMPUTER' OR DNAME='MECHANICAL');

--2. Display name of students who are in same department as 102 studying in.
SELECT NAME FROM STUDENT_DATA WHERE DID IN(SELECT DID FROM DEPARTMENT WHERE DNAME=(SELECT DNAME FROM DEPARTMENT WHERE DID=(SELECT DID FROM STUDENT_DATA WHERE NO=102)));



--Part – C:

--1. Display name of students whose SPI is more than 9 and who is from electrical department.
SELECT NAME FROM STUDENT_DATA WHERE NO=(SELECT RNO FROM ACADEMIC WHERE SPI>9) AND DID=(SELECT DID FROM DEPARTMENT WHERE DName='ELECTRICAL');

--2. Display name of student who is having second highest SPI.
SELECT NAME FROM STUDENT_DATA WHERE NO=(SELECT RNO FROM ACADEMIC WHERE SPI=(SELECT MAX(SPI) FROM ACADEMIC WHERE SPI<>(SELECT MAX(SPI) FROM ACADEMIC)));

--3. Display city names whose students branch wise SPI is 9.2
SELECT CITY FROM STUDENT_DATA WHERE NO=(SELECT RNO FROM ACADEMIC WHERE SPI=9.2) AND DID IN(SELECT DID FROM DEPARTMENT GROUP BY DID);
