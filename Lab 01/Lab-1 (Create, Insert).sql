/*
	Database Name: Branch_DIV_Rollno (Example: CSE_3A_101 or Bsc_Hons_101)
	Note: Create all the tables under above database.
	Create following tables and insert the data into tables using Query as shown in lab manual.
*/


-- Creating database :-
CREATE DATABASE BTECH_CSE_3A_113;
USE BTECH_CSE_3A_113;



-- Creating tables with columns :-
CREATE TABLE DEPOSIT(
	ACTNO INT,
	CNAME VARCHAR(50),
	BNAME VARCHAR(50),
	AMOUNT DECIMAL(8,2),
	ADATE DATETIME
);

-- Inserting value in tables, also deleting values when required :-
INSERT INTO DEPOSIT VALUES(101, 'ANIL', 'VRCE', 1000, '1995-03-01');
INSERT INTO DEPOSIT VALUES(102, 'SUNIL', 'AJNI', 5000, '1996-01-04');
INSERT INTO DEPOSIT VALUES(103, 'MEHUL', 'KAROLBAGH', 3500, '1995-11-17');
INSERT INTO DEPOSIT VALUES(104, 'MADHURI', 'CHANDI', 1200, '1995-12-17');
INSERT INTO DEPOSIT VALUES(105, 'PRAMOD', 'M.G. ROAD', 3000, '1996-03-27');
INSERT INTO DEPOSIT (CNAME, BNAME, ACTNO, AMOUNT, ADATE) VALUES ('SANDIP', 'ANDHERI', 106,  2000, '1996-03-31');
INSERT INTO DEPOSIT VALUES(107, 'SHIVANI', 'VIRAR', 1000, '1995-09-05');
INSERT INTO DEPOSIT VALUES(108, 'KRANTI', 'NEHRU PLACE', 5000, '1995-07-02');
INSERT INTO DEPOSIT VALUES(109, 'MINU', 'POWAI', 7000, '1995-08-10');
SELECT * FROM DEPOSIT;



CREATE TABLE BRANCH(
	BNAME VARCHAR(50),
	CITY VARCHAR(50)
);

INSERT INTO BRANCH VALUES('VRCE', 'NAGPUR');
INSERT INTO BRANCH VALUES('AJNI', 'NAGPUR');
INSERT INTO BRANCH VALUES('KAROLBAGH', 'DELHI');
INSERT INTO BRANCH VALUES('CHANDI', 'DELHI');
INSERT INTO BRANCH VALUES('DHARAMPETH', 'NAGPUR');
INSERT INTO BRANCH VALUES('M.G. ROAD', 'BANGLORE');
INSERT INTO BRANCH VALUES('ANDHERI', 'BOMBAY');
INSERT INTO BRANCH VALUES('VIRAR', 'BOMBAY');
INSERT INTO BRANCH VALUES('NEHRU PALACE', 'DELHI');
INSERT INTO BRANCH VALUES('POWAI', 'BOMBAY');
DELETE FROM BRANCH WHERE BNAME='POWAI';
SELECT * FROM BRANCH;



CREATE TABLE CUSTOMERS(
	CNAME VARCHAR(50),
	CITY VARCHAR(50)
);

INSERT INTO CUSTOMERS VALUES('ANIL', 'CALCUTTA');
INSERT INTO CUSTOMERS VALUES('SUNIL', 'DELHI');
INSERT INTO CUSTOMERS VALUES('MEHUL', 'BARODA');
INSERT INTO CUSTOMERS VALUES('MANDAR', 'PATNA');
INSERT INTO CUSTOMERS VALUES('MADHURI', 'NAGPUR');
INSERT INTO CUSTOMERS VALUES('PRADMOD', 'NAGPUR');
INSERT INTO CUSTOMERS VALUES('SANDIP', 'SURAT');
INSERT INTO CUSTOMERS VALUES('SHIVANI', 'BOMBAY');
INSERT INTO CUSTOMERS VALUES('KRANTI', 'BOMBAY');
INSERT INTO CUSTOMERS VALUES('NAREM', 'BOMBAY');
SELECT * FROM CUSTOMERS;



CREATE TABLE BORROW(
	LOANNO INT,
	CNAME VARCHAR(50),
	BNAME VARCHAR(50),
	AMOUNT DECIMAL(8,2)
);

INSERT INTO BORROW VALUES(201, 'ANIL', 'VRCE', 1000);
INSERT INTO BORROW VALUES(206, 'MEHUL', 'AJNI', 5000);
INSERT INTO BORROW VALUES(311, 'SUNIL', 'DHARAMETH', 3000);
INSERT INTO BORROW VALUES(321, 'MADHURI', 'ANDHERI', 2000);
INSERT INTO BORROW VALUES(375, 'PRAMOD', 'VIRAR', 8000);
INSERT INTO BORROW VALUES(481, 'KRANTI', 'NEHRU PALACE', 3000);
DELETE FROM BORROW WHERE LOANNO='202';
SELECT * FROM BORROW;
