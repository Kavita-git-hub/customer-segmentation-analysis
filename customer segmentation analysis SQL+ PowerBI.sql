CREATE TABLE customers(
CustomerID INT PRIMARY KEY,
Age INT,
City VARCHAR(50),
PurchaseAmount INT,
Orders INT
);

INSERT INTO customers VALUES
(101,25,'Mumbai',12000,4),
(102,38,'Pune',45000,10),
(103,30,'Mumbai',32000,6),
(104,28,'Delhi',15000,3),
(105,45,'Bangalore',52000,12),
(106,35,'Pune',28000,5),
(107,41,'Mumbai',61000,15),
(108,29,'Delhi',21000,4),
(109,33,'Bangalore',47000,9),
(110,27,'Pune',18000,2);

SELECT * FROM customers WHERE PurchaseAmount  > 30000;

SELECT City,
SUM (PurchaseAmount) AS TotalRevenue
FROM customers
GROUP BY City
ORDER BY TotalRevenue DESC;

SELECT CustomerID, Orders FROM customers ORDER BY Orders DESC;




