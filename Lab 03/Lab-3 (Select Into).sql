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