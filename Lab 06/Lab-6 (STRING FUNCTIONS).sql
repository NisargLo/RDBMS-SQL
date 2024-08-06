USE BTECH_CSE_3A_113;


-- Part–A:

--1. Find the length of following. (I) NULL (II) ‘ hello ’ (III) Blank
SELECT LEN(NULL), LEN('HELLO'), LEN('');

--2. Display your name in lower & upper case.
SELECT LOWER('Nisarg'), UPPER('Nisarg');

--3. Display first three characters of your name.
SELECT LEFT('Nisarg',3);

--4. Display 3rd to 10th character of your name.
SELECT SUBSTRING('Name - Nisarg Lo',3,8);

--5. Write a query to convert ‘abc123efg’ to ‘abcXYZefg’ & ‘abcabcabc’ to ‘ab5ab5ab5’ using REPLACE.
SELECT REPLACE('abc123efg','123','XYZ'), REPLACE('abcabcabc','C','5');

--6. Write a query to display ASCII code for ‘a’,’A’,’z’,’Z’, 0, 9.
SELECT ASCII('a'), ASCII('A'), ASCII('z'), ASCII('Z'), ASCII('0'), ASCII('9');

--7. Write a query to display character based on number 97,65,122,90,48,57.
SELECT CHAR('95'), CHAR('65'), CHAR('122'), CHAR('90'), CHAR('48'), CHAR('57');

--8. Write a query to remove spaces from left of a given string ‘  hello world  ‘.
SELECT LTRIM('  hello world  ');

--9. Write a query to remove spaces from right of a given string ‘  hello world  ‘.
SELECT RTRIM('  hello world  ');

--10. Write a query to display first 4 & Last 5 characters of ‘SQL Server’.
SELECT LEFT('SQL Server',4), RIGHT('SQL Server',5);

--11. Write a query to convert a string ‘1234.56’ to number (Use cast and convert function).
SELECT CONVERT(DECIMAL(8,2), '1234.56');

--12. Write a query to convert a float 10.58 to integer (Use cast and convert function).
SELECT CONVERT(INT, 10.58);

--13. Put 10 space before your name using function.
SELECT SPACE(10) + 'Nisarg';

--14. Combine two strings using + sign as well as CONCAT ().
SELECT 'NISARG'+' '+'LO', CONCAT('NISARG',' ','LO');

--15. Find reverse of “Darshan”.
SELECT REVERSE('DARSHAN');

--16. Repeat your name 3 times.
SELECT REPLICATE('NISARG ',3);



-- Part–B: 

--Perform following queries on Student table of practical no 5.

--1. Find the length of FirstName and LastName columns.
SELECT LEN(FIRSTNAME), LEN(LASTNAME) FROM STUDENT;

--2. Display FirstName and LastName columns in lower & upper case.
SELECT LOWER(FIRSTNAME), UPPER(FIRSTNAME), LOWER(LASTNAME), UPPER(LASTNAME) FROM STUDENT;

--3. Display first three characters of FirstName column.
SELECT LEFT(FIRSTNAME, 3) FROM STUDENT;

--4. Display 3rd to 10th character of Website column.
SELECT SUBSTRING(WEBSITE, 3, 8) FROM STUDENT;

--5. Write a query to display first 4 & Last 5 characters of Website column.
SELECT LEFT(WEBSITE, 4), RIGHT(WEBSITE, 5) FROM STUDENT;



-- Part–C:

--Perform following queries on Student table of practical no 5.

--1. Put 10 space before FirstName using function.
SELECT SPACE(10)+FIRSTNAME FROM STUDENT;

--2. Combine FirstName and LastName columns using + sign as well as CONCAT ().
SELECT FIRSTNAME+' '+LASTNAME, CONCAT(FIRSTNAME, ' ', LASTNAME) FROM STUDENT;  

--3. Combine all columns using + sign as well as CONCAT ().
SELECT CAST(STUID AS VARCHAR(10))+' '+FIRSTNAME+' '+LASTNAME+' '+WEBSITE+' '+CITY+' '+ADDRESS FROM STUDENT;
SELECT CONCAT(CAST(STUID AS VARCHAR(10)), ' ', FIRSTNAME, ' ', LASTNAME, ' ', WEBSITE, ' ', CITY, ' ', ADDRESS) FROM STUDENT;

--4. Find reverse of FirstName column.
SELECT REVERSE(FIRSTNAME) FROM STUDENT;

--5. Repeat FirstName column 3 times
SELECT REPLICATE(FIRSTNAME, 3) FROM STUDENT;

--6. Give the Names which contains 5 characters.
SELECT FIRSTNAME FROM STUDENT WHERE LEN(FIRSTNAME)=5;

--7. Combine the result as <FirstName> Lives in <City>.
SELECT CONCAT(FIRSTNAME, ' LIVES IN ', CITY) FROM STUDENT;

--8. Combine the result as Student_ID of < FirstName > is <StuID>.
SELECT CONCAT(FIRSTNAME, ' IS ', STUID) AS STUDENT_ID FROM STUDENT;