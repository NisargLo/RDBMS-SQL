-- SELECT INTO OPERATION :-


-- Part–A : 

--Create table as per following.

create table CRICKET(
	Name varchar(50),
	City varchar(50),
	Age int
);

insert into CRICKET (Name, City, Age) values ('Sachin Tendulkar', 'Mumbai', 30);
insert into CRICKET (Name, City, Age) values ('Rahul Dravid', 'Bombay', 35);
insert into CRICKET (Name, City, Age) values ('M.S. Dhoni', 'Jharkhand', 31);
insert into CRICKET (Name, City, Age) values ('Suresh Raina', 'Gujarat', 30);
select * from CRICKET;


--1. Create table Worldcup from cricket with all the columns and data.
select * into WORLDCUP from CRICKET;
select * from WORLDCUP;

--2. Create table T20 from cricket with first two columns with no data.
select Name,City into T20 from CRICKET where 1=0;
select * from T20;

--3. Create table IPL From Cricket with No Data
select * into IPL from CRICKET where 1=0;
select * from IPL;



-- Part–B :

--Create table as per following.

create table EMPLOYEE(
	Name varchar(50),
	City varchar(50),
	Age int
);

insert into EMPLOYEE (Name, City, Age) values ('Jay Patel', 'Rajkot', 30);
insert into EMPLOYEE (Name, City, Age) values ('Rahul Dave', 'Baroda', 35);
insert into EMPLOYEE (Name, City, Age) values ('Jeet Patel ', 'Surat', 31);
insert into EMPLOYEE (Name, City, Age) values ('Vijay Raval', 'Rajkot', 30);
select * from EMPLOYEE;


--1. Create table Employee_detail from Employee with all the columns and data. 
select * into Employee_Detail from EMPLOYEE;
select * from Employee_Detail;

--2. Create table Employee_data from Employee with first two columns with no data.
select Name, City into Employee_Data from EMPLOYEE where 1=0;
select * from Employee_Data;

--3. Create table Employee_info from Employee with no Data
select * into Employee_Info from EMPLOYEE where 1=0;
select * from Employee_Info;



-- Part–C :

--Perform following queries on Employee table.

--1. Insert the Data into Employee_info from Employee whose CITY is Rajkot
insert into Employee_Info select * from EMPLOYEE where City='Rajkot';
select * from Employee_Info;

--2. Insert the Data into Employee_info from Employee whose age is more than 32.
insert into Employee_Info select * from EMPLOYEE where age>32;
select * from Employee_Info;




-- UPDATE OPERATION :-


-- Part–A :

--From the above given tables perform the following queries (UPDATE Operation):

--1. Update deposit amount of all customers from 3000 to 5000. (Use Deposit Table)
update DEPOSIT set amount=5000 where amount=3000;
select * from DEPOSIT;

--2. Change branch name of ANIL from VRCE to C.G. ROAD. (Use Borrow Table)
update BORROW set bname='C.G. Road' where cname='ANIl' and bname='VRCE';
select * from BORROW;

--3. Update Account No of SANDIP to 111 & Amount to 5000. (Use Deposit Table)
update DEPOSIT set ACTNO=111, AMOUNT=5000 where CNAME='SANDIP';
select * from DEPOSIT;

--4. Update amount of KRANTI to 7000. (Use Deposit Table)
update DEPOSIT set AMOUNT=7000 where CNAME='Kranti';
select * from DEPOSIT;

--5. Update branch name from ANDHERI to ANDHERI WEST. (Use Branch Table)
update BRANCH set BNAME='ANDHERI WEST' where BNAME='ANDHERI';
select * from BRANCH;

--6. Update branch name of MEHUL to NEHRU PALACE. (Use Deposit Table)
update DEPOSIT set BNAME='NEHRU PALACE' where BNAME='MEHUL';
select * from DEPOSIT;

--7. Update deposit amount of all depositors to 5000 whose account no between 103 & 107. (Use Deposit Table)
update DEPOSIT set AMOUNT=5000 where ACTNO>103 and ACTNO<107;
select * from DEPOSIT;

--8. Update ADATE of ANIL to 1-4-95. (Use Deposit Table)
update DEPOSIT set ADATE='1995-04-01' where CNAME='ANIL';
select * from DEPOSIT;

--9. Update the amount of MINU to 10000. (Use Deposit Table)
update DEPOSIT set AMOUNT=10000 where CNAME='MINU';
select * from DEPOSIT;

--10. Update deposit amount of PRAMOD to 5000 and ADATE to 1-4-96 (Use Deposit Table)
update DEPOSIT set AMOUNT=5000, ADATE='1996-04-01' where CNAME='PRAMOD';
select * from DEPOSIT;



-- Part–B :

--1. Give 10% Increment in Loan Amount. (Use Borrow Table)
update BORROW set LOANNO=LOANNO+(LOANNO*10/100);
select * from BORROW;

--2. Customer deposits additional 20% amount to their account, update the same. (Use Deposit Table)
update DEPOSIT set AMOUNT=AMOUNT+(AMOUNT*20/100);
select * from DEPOSIT;



--Part–C :

--1. Update amount of loan no 321 to NULL. (Use Borrow Table)
update BORROW set LOANNO=null where LOANNO=321;
select * from BORROW;

--2. Update branch name of KRANTI to NULL (Use Borrow Table)
update BORROW set BNAME=null where BNAME='KRANTI';
select * from BORROW;

--3. Display the name of borrowers whose amount is NULL. (Use Borrow Table)
select CNAME from BORROW where AMOUNT is null;

--4. Display the Borrowers whose having branch. (Use Borrow Table)
select * from BORROW where BNAME is not null;

--5. Update the Loan Amount to 5000, Branch to VRCE & Customer Name to Darshan whose loan no is 481. (Use Borrow Table)
update BORROW set AMOUNT=5000, BNAME='VRCE', CNAME='DARSHAN' where LOANNO=481;
select * from BORROW;

--6. Update the Deposit table and set the date to 01-01-2021 for all the depositor whose amount is less than 2000.
update DEPOSIT set ADATE='2021-01-01' where AMOUNT<2000;
select * from DEPOSIT;

--7. Update the Deposit table and set the date to NULL & Branch name to ‘ANDHERI whose Account No is 110.
update DEPOSIT set ADATE=null, BNAME='ANDHERI' where ACTNO=110;
select * from DEPOSIT;