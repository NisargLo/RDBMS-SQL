--Part–A :


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



--Part–B :

--1. Rename Column ADATE to AOPENDATE OF DEPOSIT_DETAIL table.
EXEC SP_RENAME 'DEPOSIT_DETAIL.ADATE', 'AOPENDATE';
SELECT * FROM DEPOSIT_DETAIL;

--2. Delete Column AOPENDATE from the DEPOSIT_DETAIL table.
ALTER TABLE DEPOSIT_DETAIL DROP COLUMN AOPENDATE;
SELECT * FROM DEPOSIT_DETAIL;

--3. Rename Column CNAME to CustomerName.
EXEC SP_RENAME 'DEPOSIT_DETAIL.CNAME', 'CUSTOMER NAME';
SELECT * FROM DEPOSIT_DETAIL;



--Part–C :


--Create following table using query according to the definition.

CREATE TABLE STUDENT_DETAIL(
	ENROLLMENT_NO VARCHAR(20),

);


--From the above given tables perform the following queries (ALTER Operation):

--1. Add two more columns City VARCHAR (20) (Not null) and Backlog INT (Null).