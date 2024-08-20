USE BTECH_CSE_3A_113;


--Create below tables as per following data

SELECT * FROM STU_INFO;
SELECT * FROM RESULT;
SELECT * FROM EMPLOYEE_MASTER;
--(TABLES ARE MADE USING CLICK)


-- Part–A:

--1. Combine information from student and result table using cross join or Cartesian product.
SELECT * FROM STU_INFO CROSS JOIN RESULT;

--2. Perform inner join on Student and Result tables.
SELECT * FROM STU_INFO INNER JOIN RESULT ON STU_INFO.RNO=RESULT.RNO;

--3. Perform the left outer join on Student and Result tables.
SELECT * FROM STU_INFO LEFT OUTER JOIN RESULT ON STU_INFO.RNO=RESULT.RNO;

--4. Perform the right outer join on Student and Result tables.
SELECT * FROM STU_INFO RIGHT OUTER JOIN RESULT ON STU_INFO.RNO=RESULT.RNO;

--5. Perform the full outer join on Student and Result tables.
SELECT * FROM STU_INFO FULL OUTER JOIN RESULT ON STU_INFO.RNO=RESULT.RNO;

--6. Display Rno, Name, Branch and SPI of all students.
SELECT STU_INFO.RNO, NAME, BRANCH, SPI FROM STU_INFO INNER JOIN RESULT ON STU_INFO.RNO=RESULT.RNO;
-- NOTE: IF ANY COLUMN IS ONLY IN 1 TABLE, THEN NO NEED TO WRITE TABLE_NAME.COLUMN_NAME, JUST WRITE COLUMN_NAME

--7. Display Rno, Name, Branch and SPI of CE branch’s student only.
SELECT S.RNO, S.NAME, S.BRANCH, R.SPI FROM STU_INFO AS S INNER JOIN RESULT AS R ON S.RNO=R.RNO WHERE S.BRANCH='CE'; 

--8. Display Rno, Name, Branch and SPI of other than EC branch’s student only.
SELECT S.RNO, S.NAME, S.BRANCH, R.SPI FROM STU_INFO AS S INNER JOIN RESULT AS R ON S.RNO=R.RNO WHERE S.BRANCH<>'EC';

--9. Display average result of each branch.
SELECT S.BRANCH AS BRANCH, AVG(R.SPI) AS AVG FROM STU_INFO AS S INNER JOIN RESULT AS R ON S.RNO=R.RNO GROUP BY S.BRANCH;

--10. Display average result of CE and ME branch.
SELECT S.BRANCH AS BRANCH, AVG(R.SPI) AS AVG FROM STU_INFO AS S INNER JOIN RESULT AS R ON S.RNO=R.RNO WHERE S.BRANCH='CE' OR S.BRANCH='ME' GROUP BY S.BRANCH ;



-- Part–B:

--1. Display average result of each branch and sort them in ascending order by SPI.
SELECT S.BRANCH AS BRANCH, AVG(R.SPI) AS AVG FROM STU_INFO AS S INNER JOIN RESULT AS R ON S.RNO=R.RNO GROUP BY S.BRANCH ORDER BY AVG(R.SPI) ASC; 

--2. Display highest SPI from each branch and sort them in descending order.
SELECT S.BRANCH AS BRANCH, MAX(R.SPI) AS MAX FROM STU_INFO AS S INNER JOIN RESULT AS R ON S.RNO=R.RNO GROUP BY S.BRANCH ORDER BY MAX(R.SPI) DESC; 



-- Part–C:

--1. Retrieve the names of employee along with their manager’s name from the Employee table.
SELECT M.NAME AS MANAGER, E.NAME AS EMPLOYEE FROM EMPLOYEE_MASTER AS M INNER JOIN EMPLOYEE_MASTER AS E ON M.MANAGER_NO=E.EMPLOYEE_NO;



--Note:-

-- Tables -> New -> Table.. (for creating table)

-- dbo.STU_INFO -> Design (for inserting values into table)

-- dbo.Table1 -> Design -> (right click on arrrow near field, which we have to convert to primary key) -> Set Primary Key

-- db0.Table2 -> Design -> (right click on arrrow near field, which we have to convert to foreign key) -> Relationships... -> (3 dots at 'Tables And Columns Spec') -> (then select table & column of primary key & foreign key)
