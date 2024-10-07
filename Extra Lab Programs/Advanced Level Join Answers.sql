USE D2D_DB;

SELECT * FROM CUSTOMER2;
SELECT * FROM ORDERS;
SELECT * FROM SALESMAN;


------------ Part-A ------------

--From the above given tables perform the following SQL queries (Join):

--1. Write a SQL query to find the salesperson and customer who reside in the same city. Return Salesman,
--cust_name and city.
SELECT C.cust_name, S.NAME FROM CUSTOMER2 AS C CROSS JOIN SALESMAN AS S WHERE C.CITY=S.CITY;

--2. Write a SQL query to find those orders where the order amount exists between 500 and 2000. Return ord_no,
--purch_amt, cust_name, city.
SELECT O.ORD_NO, O.PURCH_AMT, C.CUST_NAME, C.CITY FROM CUSTOMER2 AS C INNER JOIN ORDERS AS O ON C.customer_id=O.CUSTOMER_ID WHERE purch_amt>=500 AND purch_amt<=2000; 

--3. Write a SQL query to find the salesperson(s) and the customer(s) he represents. Return Customer Name,
--city, Salesman, commission.
SELECT C.CUST_NAME, C.CITY, S.NAME, S.COMMISSION FROM SALESMAN AS S INNER JOIN CUSTOMER2 AS C ON S.salesman_id=C.salesman_id;

--4. Write a SQL query to find salespeople who received commissions of more than 12 percent from the
--company. Return Customer Name, customer city, Salesman, commission.
SELECT C.CUST_NAME, C.CITY, S.NAME, S.COMMISSION FROM CUSTOMER2 C INNER JOIN SALESMAN S ON C.SALESMAN_ID=S.SALESMAN_ID WHERE S.COMMISSION>0.12;

--5. Write a SQL query to locate those salespeople who do not live in the same city where their customers live
--and have received a commission of more than 12% from the company. Return Customer Name, customer
--city, Salesman, salesman city, commission.
SELECT C.CUST_NAME, C.CITY, S.NAME, S.CITY, S.COMMISSION FROM CUSTOMER2 C INNER JOIN SALESMAN S ON C.SALESMAN_ID=S.SALESMAN_ID WHERE C.CITY<>S.CITY AND S.COMMISSION>0.12;

--6. Write a SQL query to find the details of an order. Return ord_no, ord_date, purch_amt, Customer Name, grade,
--Salesman, commission.
SELECT O.ORD_NO, O.ORD_DATE, O.PURCH_AMT, C.CUST_NAME, C.GRADE, S.NAME, S.COMMISSION FROM CUSTOMER2 C INNER JOIN ORDERS O ON C.CUSTOMER_ID=O.CUSTOMER_ID
INNER JOIN SALESMAN S ON O.SALESMAN_ID=S.SALESMAN_ID;

--7. Write a SQL statement to join the tables salesman, customer and orders so that the same column of each
--table appears once and only the relational rows are returned.
SELECT C.CUST_NAME, C.CITY, S.NAME, S.CITY, S.COMMISSION FROM CUSTOMER2 C INNER JOIN SALESMAN S ON C.SALESMAN_ID=S.SALESMAN_ID WHERE C.CITY<>S.CITY AND S.COMMISSION>0.12;

--8. Write a SQL query to display the customer name, customer city, grade, salesman, salesman city. The results
--should be sorted by ascending customer_id.
SELECT C.CUST_NAME, C.CITY, C.GRADE, S.NAME, S.CITY FROM CUSTOMER2 C INNER JOIN SALESMAN S ON C.SALESMAN_ID=S.SALESMAN_ID ORDER BY C.CUSTOMER_ID ASC;

--9. Write a SQL query to find those customers with a grade less than 300. Return cust_name, customer city,
--grade, Salesman, salesmancity. The result should be ordered by ascending customer_id. 
SELECT C.CUST_NAME, C.CITY, C.GRADE, S.NAME, S.CITY FROM CUSTOMER2 C INNER JOIN SALESMAN S ON C.SALESMAN_ID=S.SALESMAN_ID WHERE C.GRADE<300 ORDER BY C.CUSTOMER_ID ASC;

--10. Write a SQL statement to make a report with customer name, city, order number, order date, and order
--amount in ascending order according to the order date to determine whether any of the existing customers
--have placed an order or not.
SELECT C.CUST_NAME, C.CITY, O.ORD_NO, O.ORD_DATE, O.PURCH_AMT FROM CUSTOMER2 C INNER JOIN ORDERS O ON C.SALESMAN_ID=O.SALESMAN_ID ORDER BY O.ORD_DATE ASC;


------------ Part-B ------------

--1. Write a SQL statement to generate a report with customer name, city, order number, order date, order
--amount, salesperson name, and commission to determine if any of the existing customers have not placed
--orders or if they have placed orders through their salesman or by themselves.
SELECT C.CUST_NAME, C.CITY, O.ORD_NO, O.ORD_DATE, O.PURCH_AMT, S.NAME, S.COMMISSION FROM CUSTOMER2 C INNER JOIN ORDERS O ON C.SALESMAN_ID=O.SALESMAN_ID
INNER JOIN SALESMAN S ON O.SALESMAN_ID=S.SALESMAN_ID;

--2. Write a SQL statement to generate a list in ascending order of salespersons who work either for one or more
--customers or have not yet joined any of the customers.
SELECT S.NAME FROM SALESMAN S LEFT OUTER JOIN CUSTOMER2 C ON S.SALESMAN_ID=C.SALESMAN_ID ORDER BY S.NAME ASC;

--3. Write a SQL query to list all salespersons along with customer name, city, grade, order number, date, and
--amount.
SELECT S.NAME, C.CUST_NAME, C.CITY, O.ORD_NO, O.ORD_DATE, O.PURCH_AMT FROM CUSTOMER2 C INNER JOIN ORDERS O ON C.SALESMAN_ID=O.SALESMAN_ID
INNER JOIN SALESMAN S ON O.SALESMAN_ID=S.SALESMAN_ID;

--4. Write a SQL statement to make a list for the salesmen who either work for one or more customers or yet to
--join any of the customer. The customer may have placed, either one or more orders on or above order
--amount 2000 and must have a grade, or he may not have placed any order to the associated supplier.
SELECT S.NAME, C.CUST_NAME, C.CITY, O.ORD_NO, O.ORD_DATE, O.PURCH_AMT FROM CUSTOMER2 C INNER JOIN ORDERS O ON C.SALESMAN_ID=O.SALESMAN_ID
INNER JOIN SALESMAN S ON O.SALESMAN_ID=S.SALESMAN_ID;

--5. For those customers from the existing list who put one or more orders, or which orders have been placed by
--the customer who is not on the list, create a report containing the customer name, city, order number, order
--date, and purchase amount.
SELECT C.CUST_NAME, C.CITY, O.ORD_NO, O.ORD_DATE, O.PURCH_AMT FROM CUSTOMER2 C LEFT OUTER JOIN ORDERS O ON C.CUSTOMER_ID=O.CUSTOMER_ID ORDER BY O.ORD_DATE;

--6. Write a SQL statement to generate a report with the customer name, city, order no. order date, purchase
--amount for only those customers on the list who must have a grade and placed one or more orders or which
--order(s) have been placed by the customer who neither is on the list nor has a grade.
SELECT C.CUST_NAME, C.CITY, O.ORD_NO, O.ORD_DATE, O.PURCH_AMT FROM CUSTOMER2 C FULL OUTER JOIN ORDERS O ON C.CUSTOMER_ID = O.CUSTOMER_ID
WHERE (C.GRADE IS NOT NULL AND O.CUSTOMER_ID IS NOT NULL) OR (C.CUSTOMER_ID IS NULL) ORDER BY O.ORD_DATE;

--7. Write a SQL query to combine each row of the salesman table with each row of the customer table.
SELECT * FROM SALESMAN S CROSS JOIN CUSTOMER2 C;

--8. Write a SQL statement to create a Cartesian product between salesperson and customer, i.e. each
--salesperson will appear for all customers and vice versa for that salesperson who belongs to that city.
SELECT * FROM SALESMAN S CROSS JOIN CUSTOMER2 C WHERE S.CITY=C.CITY;

--9. Write a SQL statement to create a Cartesian product between salesperson and customer, i.e. each
--salesperson will appear for every customer and vice versa for those salesmen who belong to a city and
--customers who require a grade.
SELECT * FROM SALESMAN S CROSS JOIN CUSTOMER2 C WHERE S.CITY IS NOT NULL AND C.GRADE IS NOT NULL;

--10. Write a SQL statement to make a Cartesian product between salesman and customer i.e. each salesman
--will appear for all customers and vice versa for those salesmen who muust belong to a city which is not the
--same as his customer and the customers should have their own grade.
SELECT * FROM SALESMAN S CROSS JOIN CUSTOMER2 C WHERE S.CITY IS NOT NULL AND S.CITY<>C.CITY AND C.GRADE IS NOT NULL;
