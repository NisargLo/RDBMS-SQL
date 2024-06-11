/*
     From the above given tables perform the following queries:
     1. Retrieve all data from table DEPOSIT. 
     2. Retrieve all data from table BORROW. 
     3. Retrieve all data from table CUSTOMERS. 
     4. Display Account No, Customer Name & Amount from DEPOSIT.
     5. Display Loan No, Amount from BORROW.
     6. Display loan details of all customers who belongs to ‘ANDHERI’ branch from borrow table.
     7. Give account no and amount of depositor, whose account no is equals to 106 from deposit table. 
     8. Give name of borrowers having amount greater than 5000 from borrow table. 
     9. Give name of customers who opened account after date '1-12-96' from deposit table. 
     10. Display name of customers whose account no is less than 105 from deposit table.
     11. Display name of customer who belongs to either ‘NAGPUR’ or ‘DELHI’ from customer table. (OR & IN)
     12. Display name of customers with branch whose amount is greater than 4000 and account no is less than 105 from deposit table.
     13. Find all borrowers whose amount is greater than equals to 3000 & less than equals to 8000 from borrow table. (AND & BETWEEN)
     14. Find all depositors who do not belongs to ‘ANDHERI’ branch from deposit table.
     15. Display Account No, Customer Name & Amount of such customers who belongs to ‘AJNI’, ‘KAROLBAGH’ 
     Or ‘M.G.ROAD’ and Account No is less than 104 from deposit table.
*/


--1
SELECT * FROM DEPOSIT

--2
SELECT * FROM BORROW

--3
SELECT * FROM CUSTOMERS

--4
SELECT ACTNO, CNAME, AMOUNT FROM DEPOSIT

--5
SELECT LOANNO, AMOUNT FROM BORROW

--6
