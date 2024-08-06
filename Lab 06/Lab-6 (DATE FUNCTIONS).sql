USE BTECH_CSE_3A_113;


-- Part–A:

--1. Write a query to display the current date & time. Label the column Today_Date.
SELECT GETDATE() AS 'CURRENT_DATE';

--2. Write a query to find new date after 365 day with reference to today.
SELECT DATEADD(DAY, 365, GETDATE());

--3. Display the current date in a format that appears as may 5 1994 12:00AM.
SELECT CONVERT(VARCHAR(25), GETDATE(), 100);
SELECT FORMAT(GETDATE(), 'MMM dd yyyy HH:MM');

--4. Display the current date in a format that appears as 03 Jan 1995.
SELECT CONVERT(VARCHAR, GETDATE(), 106);
SELECT FORMAT(GETDATE(), 'dd MMM yyyy');

--5. Display the current date in a format that appears as Jan 04, 96.
SELECT CONVERT(VARCHAR, GETDATE(), 7);
SELECT FORMAT(GETDATE(), 'MMM dd, yy');

--6. Write a query to find out total number of months between 31-Dec-08 and 31-Mar-09.
SELECT DATEDIFF(MONTH, '2008-12-31', '2009-03-31');

--7. Write a query to find out total number of years between 25-Jan-12 and 14-Sep-10.
SELECT DATEDIFF(YEAR, '2012-01-25', '2010-09-14');

--8. Write a query to find out total number of hours between 25-Jan-12 7:00 and 26-Jan-12 10:30.
SELECT DATEDIFF(HOUR, '2012-01-25 7:00', '2012-01-26 10:30');

--9. Write a query to extract Day, Month, Year from given date 12-May-16.
SELECT DAY('2016-05-12'), MONTH('2016-05-12'), YEAR('2016-05-12');

--10. Write a query that adds 5 years to current date.
SELECT DATEADD(YEAR, 5, GETDATE());

--11. Write a query to subtract 2 months from current date.
SELECT DATEADD(MONTH, -2, GETDATE());

--12. Extract month from current date using datename () and datepart () function.
SELECT DATENAME(MONTH, GETDATE()), DATEPART(MONTH, GETDATE());

--13. Write a query to find out last date of current month.
SELECT EOMONTH(GETDATE());--14. Calculate your age in years and months.SELECT DATEDIFF(YEAR, '2005-03-31', GETDATE());SELECT DATEDIFF(MONTH, '2005-03-31', GETDATE());-- Part–B:

--Create a table EMP_DETAIL and insert the following records in the table. 

CREATE TABLE EMP_DETAIL(
	EMP_NO INT,
	EMP_NAME VARCHAR(10),
	JOINING_DATE DATE,
	SALARY DECIMAL(8,2),
	CITY VARCHAR(10)
);

INSERT INTO EMP_DETAIL (EMP_NO, EMP_NAME, JOINING_DATE, SALARY, CITY) VALUES
(101, 'Keyur', '2002-01-15', 12000.00, 'Rajkot'),
(102, 'Hardik', '2004-02-15', 14000.00, 'Ahmedabad'),
(103, 'Kajal', '2006-03-14', 15000.00, 'Baroda'),
(104, 'Bhoomi', '2005-06-23', 12500.00, 'Ahmedabad'),
(105, 'Harmit', '2004-02-15', 14000.00, 'Rajkot'),
(106, 'Jay', '2007-03-12', 12000.00, 'Surat');

SELECT * FROM EMP_DETAIL;


--1. Write a query to find new date after 365 day with reference to JoiningDate.
SELECT DATEADD(DAY, 365, JOINING_DATE) FROM EMP_DETAIL;

--2. Display the JoiningDate in a format that appears as may 5 1994 12:00AM.
SELECT CONVERT(VARCHAR(25), JOINING_DATE, 100) FROM EMP_DETAIL;
SELECT FORMAT(JOINING_DATE, 'MMM dd yyyy HH:MM') FROM EMP_DETAIL;

--3. Display the JoiningDate in a format that appears as 03 Jan 1995.
SELECT CONVERT(VARCHAR, JOINING_DATE, 106) FROM EMP_DETAIL;
SELECT FORMAT(JOINING_DATE, 'dd MMM yyyy') FROM EMP_DETAIL;

--4. Display the JoiningDate in a format that appears as Jan 04, 96.
SELECT CONVERT(VARCHAR, JOINING_DATE, 7) FROM EMP_DETAIL;
SELECT FORMAT(JOINING_DATE, 'MMM dd, yy') FROM EMP_DETAIL;

--5. Write a query to find out total number of months between JoiningDate and 31-Mar-09.
SELECT DATEDIFF(MONTH, JOINING_DATE, '2009-03-31') FROM EMP_DETAIL;

--6. Write a query to find out total number of years between JoiningDate and 14-Sep-10.
SELECT DATEDIFF(YEAR, JOINING_DATE, '2010-09-14') FROM EMP_DETAIL;



-- Part–C: 

--1. Write a query to extract Day, Month, Year from JoiningDate.
SELECT DAY(JOINING_DATE), MONTH(JOINING_DATE), YEAR(JOINING_DATE) FROM EMP_DETAIL;

--2. Write a query that adds 5 years to JoiningDate.
SELECT DATEADD(YEAR, 5, JOINING_DATE) FROM EMP_DETAIL;

--3. Write a query to subtract 2 months from JoiningDate.
SELECT DATEDIFF(MONTH, JOINING_DATE, 2) FROM EMP_DETAIL;

--4. Extract month from JoiningDate using datename () and datepart () function.
SELECT DATENAME(MONTH, JOINING_DATE), DATEPART(MONTH, JOINING_DATE) FROM EMP_DETAIL;

--5. Calculate your age in years and months
SELECT DATEDIFF(YEAR, '2005-03-31', GETDATE());SELECT DATEDIFF(MONTH, '2005-03-31', GETDATE());