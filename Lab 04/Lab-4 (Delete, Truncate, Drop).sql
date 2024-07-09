USE BTECH_CSE_3A_113;


--Part–A :

--Use Deposit_Detail table (Altered table of DEPOSIT) 

--1. Delete all the records of DEPOSIT_DETAIL table having amount greater than and equals to 4000. 
DELETE FROM DEPOSIT_DETAIL WHERE AMOUNT>=4000;
SELECT * FROM DEPOSIT_DETAIL;

--2. Delete all the accounts CHANDI BRANCH.
DELETE FROM DEPOSIT_DETAIL WHERE BNAME='CHANDI';
SELECT * FROM DEPOSIT_DETAIL;

--3. Delete all the accounts having account number (ANO) is greater than 105.
DELETE FROM DEPOSIT_DETAIL WHERE ANO>105;
SELECT * FROM DEPOSIT_DETAIL;

--4. Delete all the records of Deposit_Detail table. (Use Truncate)
TRUNCATE TABLE DEPOSIT_DETAIL;
SELECT * FROM DEPOSIT_DETAIL;

--5. Remove Deposit_Detail table. (Use Drop)
DROP TABLE DEPOSIT_DETAIL;
SELECT * FROM DEPOSIT_DETAIL;  --NO ANSWER AS 'DROP';



--Part–B :

--Create following table using query according to the definition.

CREATE TABLE EMPLOYEE_MASTER(
	EMPNO INT,
	EMPNAME VARCHAR(25),
	JOINING_DATE DATETIME,
	SALARY DECIMAL(8,2),
	CITY VARCHAR(20)
);

INSERT INTO EMPLOYEE_MASTER (EmpNo, EmpName, Joining_Date, Salary, City) 
VALUES (101, 'Keyur', '2002-01-05', 12000.00, 'Rajkot'),
		(102, 'Hardik', '2004-02-15', 14000.00, 'Ahmedabad'),
		(103, 'Kajal', '2006-03-14', 15000.00, 'Baroda'),
		(104, 'Bhoomi', '2005-06-23', 12500.00, 'Ahmedabad'),
		(105, 'Harmit', '2004-02-15', 14000.00, 'Rajkot'),
		(106, 'Mitesh', '2001-09-25', 5000.00, 'Jamnagar'),
		(107, 'Meera', Null, 7000.00, 'Morbi'),
		(108, 'Kishan', '2003-02-06', 10000.00, NULL);
SELECT * FROM EMPLOYEE_MASTER;


--1. Delete all the records of Employee_MASTER table having salary greater than and equals to 14000.
DELETE FROM EMPLOYEE_MASTER WHERE SALARY>=14000;
SELECT * FROM EMPLOYEE_MASTER;

--2. Delete all the Employees who belongs to ‘RAJKOT’ city.
DELETE FROM EMPLOYEE_MASTER WHERE CITY='RAJKOT';
SELECT * FROM EMPLOYEE_MASTER;

--3. Delete all the Employees who joined after 1-1-2007.
DELETE FROM EMPLOYEE_MASTER WHERE JOINING_DATE>'2007-01-01';
SELECT * FROM EMPLOYEE_MASTER;

--4. Delete the records of Employees whose joining date is null and Name is not null.
DELETE FROM EMPLOYEE_MASTER WHERE JOINING_DATE IS NULL AND EMPNAME IS NOT NULL;
SELECT * FROM EMPLOYEE_MASTER;

--5. Delete the records of Employees whose salary is 50% of 20000.
DELETE FROM EMPLOYEE_MASTER WHERE SALARY=20000*(50/100);
SELECT * FROM EMPLOYEE_MASTER;

--6. Delete the records of Employees whose City Name is not empty.
DELETE FROM EMPLOYEE_MASTER WHERE CITY IS NOT NULL;
SELECT * FROM EMPLOYEE_MASTER;

--7. Delete all the records of Employee_MASTER table. (Use Truncate)
TRUNCATE TABLE EMPLOYEE_MASTER;
SELECT * FROM EMPLOYEE_MASTER;

--8. Remove Employee_MASTER table. (Use Drop)
DROP TABLE EMPLOYEE_MASTER;
SELECT * FROM EMPLOYEE_MASTER;  --NO ANSWER AS 'DROP';



--Part–C :

--1. Summarize Delete, Truncate and Drop.

-- Delete: The DELETE operation is used to remove one or more records from a table based on a specified condition.
-- Truncate: The TRUNCATE command removes all records from a table but keeps the table structure intact. 
-- Drop: The DROP command removes an entire table, including its structure and records.