USE NISARG_DATABASE;


--Part–A :

--Create table and inset records as per below.

CREATE TABLE EMP(
	EID INT,
	ENAME VARCHAR(10),
	DEPARTMENT VARCHAR(5),
	SALARY INT,
	JOINING_DATE DATE,
	CITY VARCHAR(10)
);

INSERT INTO EMP (EID, ENAME, DEPARTMENT, SALARY, JOINING_DATE, CITY) 
VALUES (101, 'Rahul', 'Admin', 56000, '1990-01-01', 'Rajkot'),
		(102, 'Hardik', 'IT', 18000, '1990-09-25', 'Ahmedabad'),
		(103, 'Bhavin', 'HR', 25000, '1991-05-14', 'Baroda'),
		(104, 'Bhoomi', 'Admin', 39000, '1991-02-08', 'Rajkot'),
		(105, 'Rohit', 'IT', 17000, '1990-07-23', 'Jamnagar'),
		(106, 'Priya', 'IT', 9000, '1990-08-18', 'Ahmedabad'),
		(107, 'Bhoomi', 'HR', 34000, '1991-12-25', 'Rajkot');
SELECT * FROM EMP;


--1. Display the Highest, Lowest, Label the columns Maximum, Minimum respectively.
SELECT MAX(SALARY) AS MAXIMUM, MIN(SALARY) AS MINIMUM FROM EMP;

--2. Display Total, and Average salary of all employees. Label the columns Total_Sal and Average_Sal, respectively.
SELECT SUM(SALARY) AS TOTAL_SAL, AVG(SALARY) AS AVERAGE_SAL FROM EMP;

--3. Find total number of employees of EMPLOYEE table.
SELECT COUNT(*) AS TOTAL_EMPLOYEE FROM EMP; 

--4. Find highest salary from Rajkot city.
SELECT MAX(SALARY) AS HIGHEST_SALARY FROM EMP WHERE CITY='RAJKOT';

--5. Give maximum salary from IT department.
SELECT MAX(SALARY) AS MAXIMUM_SALARY FROM EMP WHERE DEPARTMENT='IT';

--6. Count employee whose joining date is after 8-feb-91.
SELECT COUNT(*) AS EMPLOYEE_COUNT FROM EMP WHERE JOINING_DATE>'1991-02-08';

--7. Display average salary of Admin department.
SELECT AVG(SALARY) AS AVERAGE_SALARY FROM EMP WHERE DEPARTMENT='ADMIN';

--8. Display total salary of HR department.
SELECT SUM(SALARY) AS TOTAL_SALARY FROM EMP WHERE DEPARTMENT='HR';

--9. Count total number of cities of employee without duplication.
SELECT COUNT(DISTINCT CITY) AS TOTAL_CITY FROM EMP;

--10. Count unique departments.
SELECT COUNT(DISTINCT DEPARTMENT) AS COUNT_DEPARTMENTS FROM EMP;

--11. Give minimum salary of employee who belongs to Ahmedabad.
SELECT MIN(SALARY) AS MINIMUM_SALARY FROM EMP WHERE CITY='AHMEDABAD';

--12. Find city wise highest salary.
SELECT CITY, MAX(SALARY) AS HIGHEST_SALARY FROM EMP GROUP BY CITY;

--13. Find department wise lowest salary.
SELECT DEPARTMENT, MIN(SALARY) AS LOWEST_SALARY FROM EMP GROUP BY DEPARTMENT;

--14. Display city with the total number of employees belonging to each city.
SELECT CITY, COUNT(*) AS TOTAL_EMPLOYEES FROM EMP GROUP BY CITY;

--15. Give total salary of each department of EMP table.
SELECT DEPARTMENT, SUM(SALARY) AS TOTAL_SALARY FROM EMP GROUP BY DEPARTMENT;

--16. Give average salary of each department of EMP table without displaying the respective department name.
SELECT AVG(SALARY) FROM EMP GROUP BY DEPARTMENT;



--Part–B :

--1. Count the number of employees living in Rajkot.
SELECT COUNT(*) AS NUMBER_OF_EMPLOYEES FROM EMP WHERE CITY='RAJKOT';

--2. Display the difference between the highest and lowest salaries. Label the column DIFFERENCE.
SELECT MAX(SALARY)-MIN(SALARY) AS DIFFERENCE FROM EMP;

--3. Display the total number of employees hired before 1st January, 1991.
SELECT COUNT(*) AS TOTAL_EMPLOYEE FROM EMP WHERE JOINING_DATE<'1991-01-01';



--Part–C :

--1. Count the number of employees living in Rajkot or Baroda.
SELECT COUNT(*) AS COUNT FROM EMP WHERE CITY='RAJKOT' OR CITY='BARODA';
SELECT COUNT(*) AS COUNT FROM EMP WHERE CITY IN ('RAJKOT','BARODA');

--2. Display the total number of employees hired before 1st January, 1991 in IT department.
SELECT COUNT(*) AS TOTAL_EMPLOYEE FROM EMP WHERE JOINING_DATE<'1991-01-01' AND DEPARTMENT='IT';

--3. Find the Joining Date wise Total Salaries.
SELECT JOINING_DATE, SUM(SALARY) AS TOTAL_SALARY FROM EMP GROUP BY JOINING_DATE;

--4. Find the Maximum salary department & city wise in which city name starts with ‘R’.
SELECT DEPARTMENT, CITY, MAX(SALARY) AS MAX_SALARY FROM EMP WHERE CITY LIKE 'R%' GROUP BY DEPARTMENT, CITY;