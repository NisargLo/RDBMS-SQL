USE BTECH_CSE_3A_113;


--Part�A :

--Use Deposit table of lab-1.

--From the above given tables perform the following queries (ALTER Operation):

--1. Add two more columns City VARCHAR (20) and Pincode INT.
ALTER TABLE DEPOSIT ADD CITY VARCHAR(20), PINCODE INT;
SELECT * FROM DEPOSIT;

--2. Change the size of CNAME column from VARCHAR (50) to VARCHAR (35).
ALTER TABLE DEPOSIT ALTER COLUMN CNAME VARCHAR(35);
SELECT * FROM DEPOSIT;

--3. Change the data type DECIMAL to INT in amount Column.
ALTER TABLE DEPOSIT ALTER COLUMN AMOUNT INT;
SELECT * FROM DEPOSIT;

--4. Rename Column ActNo to ANO.
EXEC SP_RENAME 'DEPOSIT.ACTNO', 'ANO';
SELECT * FROM DEPOSIT;

--5. Delete Column City from the DEPOSIT table.
ALTER TABLE DEPOSIT DROP COLUMN CITY;
SELECT * FROM DEPOSIT;

--6. Change name of table DEPOSIT to DEPOSIT_DETAIL.
EXEC SP_RENAME 'DEPOSIT', 'DEPOSIT_DETAIL';
SELECT * FROM DEPOSIT_DETAIL;



--Part�B :

--1. Rename Column ADATE to AOPENDATE OF DEPOSIT_DETAIL table.
EXEC SP_RENAME 'DEPOSIT_DETAIL.ADATE', 'AOPENDATE';
SELECT * FROM DEPOSIT_DETAIL;

--2. Delete Column AOPENDATE from the DEPOSIT_DETAIL table.
ALTER TABLE DEPOSIT_DETAIL DROP COLUMN AOPENDATE;
SELECT * FROM DEPOSIT_DETAIL;

--3. Rename Column CNAME to CustomerName.
EXEC SP_RENAME 'DEPOSIT_DETAIL.CNAME', 'CUSTOMER NAME';
SELECT * FROM DEPOSIT_DETAIL;



--Part�C :

--Create following table using query according to the definition.

CREATE TABLE STUDENT_DETAIL(
	ENROLLMENT_NO VARCHAR(20),
	NAME VARCHAR(25),
	CPI DECIMAL(5,2),
	BIRTHDATE DATETIME
);

SELECT * FROM STUDENT_DETAIL;


--From the above given tables perform the following queries (ALTER Operation):

--1. Add two more columns City VARCHAR (20) (Not null) and Backlog INT (Null).
ALTER TABLE STUDENT_DETAIL ADD CITY VARCHAR(20) NOT NULL, BACKLOG INT NULL;
SELECT * FROM STUDENT_DETAIL;

--2. Change the size of NAME column of student_detail from VARCHAR (25) to VARCHAR (35).
ALTER TABLE STUDENT_DETAIL ALTER COLUMN NAME VARCHAR(35);
SELECT * FROM STUDENT_DETAIL;

--3. Change the data type DECIMAL to INT in CPI Column.
ALTER TABLE STUDENT_DETAIL ALTER COLUMN CPI INT;
SELECT * FROM STUDENT_DETAIL;

--4. Rename Column Enrollment_No to ENO.
EXEC SP_RENAME 'STUDENT_DETAIL.ENROLLMENT_NO', 'ENO';
SELECT * FROM STUDENT_DETAIL;

--5. Delete Column City from the student_detail table.
ALTER TABLE STUDENT_DETAIL DROP COLUMN CITY;
SELECT * FROM STUDENT_DETAIL;

--6. Change name of table student_detail to STUDENT_MASTER.
EXEC SP_RENAME 'STUDENT_DETAIL', 'STUDENT_MASTER';
SELECT * FROM STUDENT_MASTER;