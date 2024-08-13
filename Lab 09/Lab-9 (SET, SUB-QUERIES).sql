USE BTECH_CSE_3A_113;


--Perform SQL queries for Set operator and, Subqueries

--Sub Queries

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