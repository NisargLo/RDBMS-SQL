USE BTECH_CSE_3A_113;


--Part – A:

--Create table as per following data.

CREATE TABLE City (
    CityID INT PRIMARY KEY,
    Name VARCHAR(100) UNIQUE,
    Pincode INT,
    Remarks VARCHAR(255)
);

INSERT INTO City (CityID, Name, Pincode, Remarks) VALUES
(1, 'Rajkot', 360005, 'Good'),
(2, 'Surat', 335009, 'Very Good'),
(3, 'Baroda', 390001, 'Awesome'),
(4, 'Jamnagar', 361003, 'Smart'),
(5, 'Junagadh', 362229, 'Historic'),
(6, 'Morvi', 363641, 'Ceramic');

SELECT * FROM CITY;

------------------------------------------------------------

CREATE TABLE Village (
    VID INT,
    Name VARCHAR(100),
    CityID INT,
);

INSERT INTO Village (VID, Name, CityID) VALUES
(101, 'Raiya', 1),
(102, 'Madhapar', 1),
(103, 'Dodka', 3),
(104, 'Falla', 4),
(105, 'Bhesan', 5),
(106, 'Dhoraji', 5);

SELECT * FROM VILLAGE;


--1. Display all the villages of Rajkot city.
SELECT V.NAME FROM CITY C INNER JOIN VILLAGE V ON C.CITYID=V.CITYID; 

--2. Display city along with their villages & pin code.
SELECT C.NAME CITY, V.NAME VILLAGE, C.PINCODE FROM CITY C INNER JOIN VILLAGE V ON C.CITYID=V.CITYID;

--3. Display the city having more than one village.
SELECT C.NAME CITY FROM CITY C INNER JOIN VILLAGE V ON C.CITYID=V.CITYID GROUP BY C.NAME HAVING COUNT(V.NAME)>1;

--4. Display the city having no village.
SELECT C.NAME CITY FROM CITY C LEFT OUTER JOIN VILLAGE V ON C.CITYID=V.CITYID WHERE V.CITYID IS NULL GROUP BY C.NAME;

--5. Count the total number of villages in each city.
SELECT C.NAME, COUNT(V.NAME) COUNT_OF_VILLAGES FROM CITY C INNER JOIN VILLAGE V ON C.CITYID=V.CITYID GROUP BY C.NAME;

--6. Count the number of cities having more than one village.
SELECT COUNT(*) COUNT FROM City WHERE NAME IN
(SELECT C.NAME FROM CITY C INNER JOIN VILLAGE V ON C.CITYID=V.CITYID GROUP BY C.NAME HAVING COUNT(V.NAME)>1); 


--Create below table with following constraints

CREATE TABLE STU_MASTER(
	RNO INT,
	NAME VARCHAR(6),
	BRANCH CHAR(2) DEFAULT 'GENERAL',
	SPI DECIMAL(4,2) CHECK(SPI<=10),
	BKLOG INT CHECK(BKLOG>=0)
);

INSERT INTO STU_MASTER (RNO, NAME, BRANCH, SPI, BKLOG) VALUES
(101, 'Raju', 'CE', 8.80, 0),
(102, 'Amit', 'CE', 2.20, 3),
(103, 'Sanjay', 'ME', 1.50, 6),
(104, 'Neha', 'EC', 7.65, 0),
(105, 'Meera', 'EE', 5.52, 2),
(106, 'Mahesh', NULL, 4.50, 3);


--1. Do not allow SPI more than 10
--2. Do not allow Bklog less than 0.
--3. Enter the default value as ‘General’ in branch to all new records IF no other value is specified.

--(DONE ABOVE 3 QUERIES USING DESIGN OPTION ALSO)


--4. Try to update SPI of Raju from 8.80 to 12.
UPDATE STU_MASTER SET SPI=12 WHERE NAME='RAJU' AND SPI=8.8;

--5. Try to update Bklog of Neha from 0 to -1.
UPDATE STU_MASTER SET BKLOG=-1 WHERE NAME='NEHA' AND BKLOG=0;



--Part – B: 

--Create table as per following schema with proper validation and try to insert data which violate your validation.

--1. Emp_details(Eid, Ename, Did, Cid, Salary, Experience)

CREATE TABLE EMP_DETAILS(
	EID INT PRIMARY KEY,
	ENAME VARCHAR(15) NOT NULL,
	DID INT,
	CID INT,
	SALARY DECIMAL(8,2) DEFAULT 0.0,
	EXPERIENCE INT CHECK(EXPERIENCE>=0)
);

SELECT * FROM EMP_DETAILS;

--NOW, INSERTING DATA WHICH VIOLATES OUR VALIDATION
INSERT INTO EMP_DETAILS (EID, ENAME, EXPERIENCE) VALUES
(NULL, 'NISARG LO', 8),
(104, NULL, 8),
(106, 'NISARG LO', -1);


--2. Dept_details(Did, Dname)

CREATE TABLE DEPT_DETAILS (
    Did INT PRIMARY KEY,
    Dname VARCHAR(50) NOT NULL
);

SELECT * FROM DEPT_DETAILS;

--NOW, INSERTING DATA WHICH VIOLATES OUR VALIDATION
INSERT INTO DEPT_DETAILS (Did, Dname) VALUES
(NULL, 'Sales'),
(2, NULL);


--3. City_details(Cid, Cname)

CREATE TABLE CITY_DETAILS (
    Cid INT PRIMARY KEY,
    Cname VARCHAR(50) NOT NULL
);

SELECT * FROM CITY_DETAILS;

--NOW, INSERTING DATA WHICH VIOLATES OUR VALIDATION
INSERT INTO CITY_DETAILS (Cid, Cname) VALUES
(NULL, 'RAJKOT'),
(2, NULL);



--Part – C: 

--Create table as per following schema with proper validation and try to insert data which violate your validation.

--1. Emp_info(Eid, Ename, Did, Cid, Salary, Experience)
CREATE TABLE EMP_INFO(
	EID INT PRIMARY KEY,
	ENAME VARCHAR(15) NOT NULL,
	DID INT,
	CID INT,
	SALARY DECIMAL(8,2) DEFAULT 0.0,
	EXPERIENCE INT CHECK(EXPERIENCE>=0)
);
SELECT * FROM EMP_INFO;
--NOW, INSERTING DATA WHICH VIOLATES OUR VALIDATION
INSERT INTO EMP_INFO (EID, ENAME, EXPERIENCE) VALUES
(NULL, 'NISARG LO', 8),
(104, NULL, 8),
(106, 'NISARG LO', -1);

--Dept_info(Did, Dname)
CREATE TABLE DEPT_INFO (
    Did INT PRIMARY KEY,
    Dname VARCHAR(50) NOT NULL
);
SELECT * FROM DEPT_INFO;
--NOW, INSERTING DATA WHICH VIOLATES OUR VALIDATION
INSERT INTO DEPT_INFO (Did, Dname) VALUES
(NULL, 'Sales'),
(2, NULL);

--City_info(Cid, Cname, Did))
CREATE TABLE CITY_INFO (
    Cid INT PRIMARY KEY,
    Cname VARCHAR(50) NOT NULL,
	DID INT FOREIGN KEY REFERENCES DEPT_INFO(DID)
);
SELECT * FROM CITY_INFO;
--NOW, INSERTING DATA WHICH VIOLATES OUR VALIDATION
INSERT INTO CITY_INFO (Cid, Cname) VALUES
(NULL, 'RAJKOT', 3),
(2, NULL, 2);

--District(Did, Dname, Sid)
CREATE TABLE DISTRICT (
    Did INT PRIMARY KEY,
    Dname VARCHAR(50) NOT NULL,
    Sid INT,
    FOREIGN KEY (Sid) REFERENCES STATE(Sid)
);
SELECT * FROM DISTRICT;
--NOW, INSERTING DATA WHICH VIOLATES OUR VALIDATION
INSERT INTO DISTRICT (DID, Dname, SID) VALUES
(NULL, 'RAJKOT', 5),
(2, NULL, 7);

--State(Sid, Sname, Cid)
CREATE TABLE STATE (
    Sid INT PRIMARY KEY,
    Sname VARCHAR(50) NOT NULL,
    Cid INT,
    FOREIGN KEY (Cid) REFERENCES COUNTRY(Cid)
);
SELECT * FROM STATE;
--NOW, INSERTING DATA WHICH VIOLATES OUR VALIDATION
INSERT INTO STATE (SID, Sname, CID) VALUES
(NULL, 'GUJARAT', 5),
(2, NULL, 7);

--Country(Cid, Cname)
CREATE TABLE COUNTRY (
    Cid INT PRIMARY KEY,
    Cname VARCHAR(50) NOT NULL
);
SELECT * FROM COUNTRY;
--NOW, INSERTING DATA WHICH VIOLATES OUR VALIDATION
INSERT INTO COUNTRY (Cid, Cname) VALUES
(NULL, 'INDIA'),
(2, NULL);


--2. Insert 5 records in each table.

INSERT INTO EMP_INFO (Eid, Ename, Did, Cid, Salary, Experience) VALUES
(101, 'John Doe', 1, 1001, 75000.00, 5),
(102, 'Jane Smith', 2, 1002, 80000.00, 7),
(103, 'Alice Johnson', 3, 1003, 70000.00, 3),
(104, 'Robert Brown', 1, 1001, 72000.00, 4),
(105, 'Emily White', 2, 1002, 85000.00, 8);
SELECT * FROM EMP_INFO;

INSERT INTO DEPT_INFO (Did, Dname)VALUES
(1, 'Sales'),
(2, 'Marketing'),
(3, 'Engineering'),
(4, 'Finance'),
(5, 'Human Resources');
SELECT * FROM DEPT_INFO;

INSERT INTO CITY_INFO (Cid, Cname, Did) VALUES
(1001, 'Seattle', 1),
(1002, 'New York', 2),
(1003, 'San Francisco', 3),
(1004, 'Chicago', 1),
(1005, 'Los Angeles', 2);
SELECT * FROM CITY_INFO;

INSERT INTO DISTRICT (Did, Dname, Sid) VALUES
(1, 'District A', 101),
(2, 'District B', 102),
(3, 'District C', 103),
(4, 'District D', 101),
(5, 'District E', 102);
SELECT * FROM DISTRICT;

INSERT INTO STATE (Sid, Sname, Cid) VALUES
(101, 'Washington', 1001),
(102, 'New York', 1002),
(103, 'California', 1003),
(104, 'Illinois', 1001),
(105, 'California', 1002);
SELECT * FROM STATE;

INSERT INTO COUNTRY (Cid, Cname) VALUES
(1001, 'United States'),
(1002, 'Canada'),
(1003, 'Australia'),
(1004, 'India'),
(1005, 'United Kingdom');
SELECT * FROM COUNTRY;


--3. Display employeename, departmentname, Salary, Experience, City, District, State and country of all employees.

SELECT E.ENAME EMPLOYEE_NAME, DE.DNAME DEPARTMENT_NAME, E.SALARY SALARY, E.EXPERIENCE EXPERIENCE,
CI.CNAME CITY, DI.DNAME DISTRICT, S.SNAME STATE, CO.CNAME COUNTRY 
FROM EMP_INFO E INNER JOIN DEPT_INFO DE ON E.DID=DE.Did
				INNER JOIN CITY_INFO CI ON E.CID=CI.Cid 
				INNER JOIN DISTRICT DI ON CI.DID=DI.Did
				INNER JOIN STATE S ON S.Sid=DI.Sid 
				INNER JOIN COUNTRY CO ON CO.CID=S.CID;