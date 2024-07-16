USE BTECH_CSE_3A_113;


--Perform SQL queries for Group by with having and Order by

CREATE TABLE SALES_DATA(
	Region VARCHAR(15),
	Product VARCHAR(10),
	Sales_Amount INT,
	Year INT
);

INSERT INTO SALES_DATA (Region, Product, Sales_Amount, Year) 
VALUES ('North America', 'Watch', 1500, 2023),
		('Europe', 'Mobile', 1200, 2023),
		('Asia', 'Watch', 1800, 2023),
		('North America', 'TV', 900, 2024),
		('Europe', 'Watch', 2000, 2024),
		('Asia', 'Mobile', 1000, 2024),
		('North America', 'Mobile', 1600, 2023),
		('Europe', 'TV', 1500, 2023),
		('Asia', 'TV', 1100, 2024),
		('North America', 'Watch', 1700, 2024);

SELECT * FROM SALES_DATA;


--Part–A :

--1. Display Total Sales Amount by Region.
SELECT REGION, SUM(Sales_Amount) AS TOTAL_SALES FROM SALES_DATA GROUP BY REGION;

--2. Display Average Sales Amount by Product
SELECT PRODUCT, AVG(Sales_Amount) AS AVERAGE_SALES FROM SALES_DATA GROUP BY PRODUCT;

--3. Display Maximum Sales Amount by Year


--4. Display Minimum Sales Amount by Region and Year


--5. Count of Products Sold by Region


--6. Display Sales Amount by Year and Product


--7. Display Regions with Total Sales Greater Than 5000


--8. Display Products with Average Sales Less Than 10000


--9. Display Years with Maximum Sales Exceeding 500


--10. Display Regions with at Least 3 Distinct Products Sold.


--11. Display Years with Minimum Sales Less Than 1000


--12. Display Total Sales Amount by Region for Year 2023, Sorted by Total Amount




--Part – B:

--1. Display Count of Orders by Year and Region, Sorted by Year and Region


--2. Display Regions with Maximum Sales Amount Exceeding 1000 in Any Year, Sorted by Region


--3. Display Years with Total Sales Amount Less Than 1000, Sorted by Year Descending


--4. Display Top 3 Regions by Total Sales Amount in Year 2024



--Part – C:


--1. Display Products with Average Sales Amount Between 1000 and 2000, Ordered by Product Name


--2. Display Years with More Than 5 Orders from Each Region


--3. Display Regions with Average Sales Amount Above 1500 in Year 2023 sort by amount in descending.


--4. Find out region wise duplicate product.


--5. Find out region wise highest sales amount.


