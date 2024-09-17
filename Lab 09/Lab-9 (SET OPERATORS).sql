USE BTECH_CSE_3A_113;


--Perform SQL queries for Set operator


--Part – A:

--Create below two tables as per following data.

CREATE TABLE Computer (
    RollNo INT,
    Name VARCHAR(50)
);

INSERT INTO Computer (RollNo, Name) VALUES
(101, 'Ajay'),
(109, 'Haresh'),
(115, 'Manish');

SELECT * FROM Computer;

------------------------------------------------------------

CREATE TABLE Electrical (
    RollNo INT PRIMARY KEY,
    Name VARCHAR(50)
);

INSERT INTO Electrical (RollNo, Name) VALUES
(105, 'Ajay'),
(107, 'Mahesh'),
(115, 'Manish');

SELECT * FROM Electrical;


--1. Display name of students who is either in Computer or in Electrical.
SELECT NAME FROM Computer UNION SELECT NAME FROM Electrical;

--2. Display name of students who is either in Computer or in Electrical including duplicate data.
SELECT NAME FROM Computer UNION ALL SELECT NAME FROM Electrical;

--3. Display name of students who is in both Computer and Electrical.
SELECT NAME FROM Computer INTERSECT SELECT NAME FROM Electrical;

--4. Display name of students who are in Computer but not in Electrical.
SELECT NAME FROM Computer EXCEPT SELECT NAME FROM Electrical;

--5. Display name of students who are in Electrical but not in Computer.
SELECT NAME FROM Electrical EXCEPT SELECT NAME FROM Computer;

--6. Display all the details of students who are either in Computer or in Electrical.
SELECT * FROM Computer UNION SELECT * FROM Electrical;--7. Display all the details of students who are in both Computer and Electrical.SELECT * FROM Computer INTERSECT SELECT * FROM Electrical;--Part – B:

--Create below two tables as per following data.

CREATE TABLE Emp_DATA (
    EID INT,
    Name VARCHAR(50)
);

INSERT INTO Emp_DATA (EID, Name) VALUES
(1, 'Ajay'),
(9, 'Haresh'),
(5, 'Manish');

SELECT * FROM Emp_DATA;

------------------------------------------------------------

CREATE TABLE Customer (
    CID INT,
    Name VARCHAR(50)
);

INSERT INTO Customer (CID, Name) VALUES
(5, 'Ajay'),
(7, 'Mahesh'),
(5, 'Manish');

SELECT * FROM Customer;


--1. Display name of persons who is either Employee or Customer.
SELECT NAME FROM Emp_DATA UNION SELECT NAME FROM Customer;

--2. Display name of persons who is either Employee or Customer including duplicate data.
SELECT NAME FROM Emp_DATA UNION ALL SELECT NAME FROM Customer;

--3. Display name of persons who is both Employee as well as Customer.
SELECT NAME FROM Emp_DATA INTERSECT SELECT NAME FROM Customer;

--4. Display name of persons who are Employee but not Customer.
SELECT NAME FROM Emp_DATA EXCEPT SELECT NAME FROM Customer;

--5. Display name of persons who are Customer but not Employee.
SELECT NAME FROM Customer EXCEPT SELECT NAME FROM Emp_DATA;



--Part – C:

--1. Perform all the queries of Part-B but display ID and Name columns instead of Name only

--Display ID, name of persons who is either Employee or Customer.
SELECT EID, NAME FROM Emp_DATA UNION SELECT CID, NAME FROM Customer;

--Display ID, name of persons who is either Employee or Customer including duplicate data.
SELECT EID, NAME FROM Emp_DATA UNION ALL SELECT CID, NAME FROM Customer;

--Display ID, name of persons who is both Employee as well as Customer.
SELECT EID, NAME FROM Emp_DATA INTERSECT SELECT CID, NAME FROM Customer;

--Display ID, name of persons who are Employee but not Customer.
SELECT EID, NAME FROM Emp_DATA EXCEPT SELECT CID, NAME FROM Customer;

--Display ID, name of persons who are Customer but not Employee.
SELECT CID, NAME FROM Customer EXCEPT SELECT EID, NAME FROM Emp_DATA;