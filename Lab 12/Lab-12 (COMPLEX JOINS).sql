USE BTECH_CSE_3A_113;


--Create following table (Using Design Mode)

CREATE TABLE Dept (
    DepartmentID INT,
    DepartmentName VARCHAR(100),
    DepartmentCode VARCHAR(50),
    Location VARCHAR(50)
);

CREATE TABLE Person (
    PersonID INT,
    PersonName VARCHAR(100),
    DepartmentID INT,
    Salary DECIMAL(8, 2),
    JoiningDate DATETIME,
    City VARCHAR(100),
);

INSERT INTO Dept (DepartmentID, DepartmentName, DepartmentCode, Location) VALUES
(1, 'Admin', 'Adm', 'A-Block'),
(2, 'Computer', 'CE', 'C-Block'),
(3, 'Civil', 'CI', 'G-Block'),
(4, 'Electrical', 'EE', 'E-Block'),
(5, 'Mechanical', 'ME', 'B-Block');

INSERT INTO Person (PersonID, PersonName, DepartmentID, Salary, JoiningDate, City) VALUES
(101, 'Rahul Tripathi', 2, 56000, '2000-01-01', 'Rajkot'),
(102, 'Hardik Pandya', 3, 18000, '2001-09-25', 'Ahmedabad'),
(103, 'Bhavin Kanani', 4, 25000, '2000-05-14', 'Baroda'),
(104, 'Bhoomi Vaishnav', 1, 39000, '2005-02-08', 'Rajkot'),
(105, 'Rohit Topiya', 2, 17000, '2001-07-23', 'Jamnagar'),
(106, 'Priya Menpara', NULL, 9000, '2000-10-18', 'Ahmedabad'),
(107, 'Neha Sharma', 2, 34000, '2002-12-25', 'Rajkot'),
(108, 'Nayan Goswami', 3, 25000, '2001-07-01', 'Rajkot'),
(109, 'Mehul Bhundiya', 4, 13500, '2005-01-09', 'Baroda'),
(110, 'Mohit Maru', 5, 14000, '2000-05-25', 'Jamnagar');

SELECT * FROM DEPT;
SELECT * FROM PERSON;



--From the above given table perform the following queries:


--Part � A:

--1. Find all persons with their department name & code.
SELECT P.PersonID, P.PersonName, P.DepartmentID, P.Salary, P.JoiningDate, P.City, D.DepartmentName, D.DepartmentCode FROM PERSON P INNER JOIN DEPT D ON P.DepartmentID=D.DepartmentID;

--2. Find the person's name whose department is in C-Block.
SELECT P.PERSONNAME FROM PERSON P INNER JOIN DEPT D ON P.DepartmentID=D.DepartmentID WHERE D.Location='C-BLOCK';

--3. Retrieve person name, salary & department name who belongs to Jamnagar city.
SELECT P.PERSONNAME, P.SALARY, D.DEPARTMENTNAME FROM PERSON P INNER JOIN DEPT D ON P.DepartmentID=D.DepartmentID WHERE P.CITY='JAMNAGAR';

--4. Retrieve person name, salary & department name who does not belong to Rajkot city.
SELECT P.PERSONNAME, P.SALARY, D.DEPARTMENTNAME FROM PERSON P INNER JOIN DEPT D ON P.DepartmentID=D.DepartmentID WHERE P.City<>'RAJKOT';

--5. Retrieve person�s name of the person who joined the Civil department after 1-Aug-2001.
SELECT P.PERSONNAME FROM PERSON P INNER JOIN DEPT D ON P.DepartmentID=D.DepartmentID WHERE P.JoiningDate>'2001-08-01';

--6. Find details of all persons who belong to the computer department.
SELECT P.PersonID, P.PersonName, P.DepartmentID, P.Salary, P.JoiningDate, P.City FROM PERSON P INNER JOIN DEPT D ON P.DepartmentID=D.DepartmentID WHERE D.DepartmentName='COMPUTER';

--7. Display all the person's name with the department whose joining date difference with the current date is more than 365 days.
SELECT P.PERSONNAME, D.DEPARTMENTNAME FROM PERSON P INNER JOIN DEPT D ON P.DepartmentID=D.DepartmentID WHERE DATEDIFF(DAY, P.JoiningDate, GETDATE())>365;

--8. Find department wise person counts.
SELECT D.DEPARTMENTNAME, COUNT(P.PERSONID) COUNT FROM PERSON P INNER JOIN DEPT D ON P.DepartmentID=D.DepartmentID GROUP BY D.DepartmentName;

--9. Give department wise maximum & minimum salary with department name.
SELECT D.DEPARTMENTNAME, MAX(P.SALARY) MAX, MIN(P.SALARY) MIN FROM PERSON P INNER JOIN DEPT D ON P.DepartmentID=D.DepartmentID GROUP BY D.DepartmentName;

--10. Find city wise total, average, maximum and minimum salary.
SELECT CITY, AVG(SALARY) AVG, MAX(SALARY) MAX, MIN(SALARY) MIN FROM PERSON GROUP BY City;

--11. Find the average salary of a person who belongs to Ahmedabad city.
SELECT AVG(SALARY) AVG_SALARY FROM PERSON WHERE CITY='Ahmedabad';

--12. Produce Output Like: <PersonName> lives in <City> and works in <DepartmentName> Department. (In single column)
SELECT CONCAT(P.PERSONNAME, ' lives in ', P.CITY, ' and works in ', D.DEPARTMENTNAME, ' Department') OUTPUT FROM PERSON P INNER JOIN DEPT D ON P.DepartmentID=D.DepartmentID;



--Part � B:

--1. Produce Output Like: <PersonName> earns <Salary> from <DepartmentName> department monthly. (In single column)
SELECT CONCAT(P.PERSONNAME, ' earns ', P.Salary, ' from ', D.DEPARTMENTNAME, ' department monthly.') OUTPUT FROM PERSON P INNER JOIN DEPT D ON P.DepartmentID=D.DepartmentID;

--2. Find city & department wise total, average & maximum salaries.
SELECT P.CITY, D.DEPARTMENTNAME, SUM(P.Salary) TOTAL, AVG(P.Salary) AVG, MAX(P.Salary) MAX FROM PERSON P INNER JOIN DEPT D ON P.DepartmentID=D.DepartmentID GROUP BY CITY, D.DepartmentName;

--3. Find all persons who do not belong to any department.
SELECT PERSONNAME FROM PERSON WHERE DepartmentID IS NULL; 

--4. Find all departments whose total salary is exceeding 100000.
SELECT D.DEPARTMENTNAME FROM PERSON P INNER JOIN DEPT D ON P.DepartmentID=D.DepartmentID GROUP BY D.DepartmentName HAVING SUM(P.Salary)>100000;



--Part � C:

--1. List all departments who have no person.
SELECT D.DEPARTMENTNAME FROM PERSON P INNER JOIN DEPT D ON P.DepartmentID=D.DepartmentID GROUP BY D.DepartmentName HAVING COUNT(P.PersonID)=0;

--2. List out department names in which more than two persons are working.
SELECT D.DEPARTMENTNAME FROM PERSON P INNER JOIN DEPT D ON P.DepartmentID=D.DepartmentID GROUP BY D.DepartmentName HAVING COUNT(P.PersonID)>2;

--3. Give a 10% increment in the computer department employee�s salary. (Use Update)
UPDATE PERSON SET SALARY=SALARY+(0.1*SALARY) FROM PERSON P INNER JOIN DEPT D ON P.DepartmentID=D.DepartmentID WHERE D.DepartmentName='COMPUTER';
SELECT * FROM PERSON;