USE TechShop;
select * from Customers;
--q1
SELECT FirstName, LastName
FROM Customers
WHERE CustomerID NOT IN (SELECT CustomerID FROM Orders);


--q2
SELECT (
SELECT COUNT(*)
FROM Products
) AS TotalProducts;


--q3
SELECT (
SELECT SUM(TotalAmount)
FROM Orders
) AS TotalRevenue;


--q4
SELECT (
SELECT AVG(od.Quantity)
FROM OrderDetails od
JOIN Products p ON od.ProductID = p.ProductID
JOIN Category c ON p.CategoryID = c.CategoryID
WHERE c.CategoryName = 'Electronics'
) AS AvgQuantityOrdered;


select * from Category;
select * from Products;
select * from OrderDetails;


--q5
DECLARE @CustomerID INT = 1 
SELECT SUM(total_price) AS total_revenue
FROM (
SELECT SUM(Quantity * Price) AS total_price
FROM Orders , Products, OrderDetails
WHERE orders.CustomerID = @CustomerID
) AS revenue_summary;



--to check the schema
SELECT COLUMN_NAME, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH, IS_NULLABLE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'Customers';

--q6
SELECT FirstName, LastName, NumOrdersPlaced
FROM ( SELECT c.FirstName, c.LastName, COUNT(o.OrderID) AS NumOrdersPlaced
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.FirstName, c.LastName
) AS CustomerOrders
ORDER BY NumOrdersPlaced DESC


--Q7
SELECT CategoryName, TotalQuantity
FROM (
SELECT c.CategoryName, SUM(od.Quantity) AS TotalQuantity
FROM Category c
JOIN Products p ON c.CategoryID = p.CategoryID
JOIN OrderDetails od ON p.ProductID = od.ProductID
GROUP BY c.CategoryID, c.CategoryName
) AS PopularCategories
WHERE TotalQuantity = (SELECT MAX(TotalQuantity) FROM (
SELECT SUM(od.Quantity) AS TotalQuantity
FROM OrderDetails od
GROUP BY od.ProductID
) AS MaxQuantity);



--Q8
SELECT TOP 1 c.FirstName, c.LastName, SUM(od.Quantity * p.Price) AS TotalSpending
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
JOIN OrderDetails od ON o.OrderID = od.OrderID
JOIN Products p ON od.ProductID = p.ProductID
JOIN Category cat ON p.CategoryID = cat.CategoryID
WHERE cat.CategoryName = 'Electronics'
GROUP BY c.CustomerID, c.FirstName, c.LastName
ORDER BY TotalSpending DESC;

select * from Products;
select * from category;

--Q9
SELECT AVG(TotalRevenue / OrderCount) AS AverageOrderValue
FROM (
SELECT o.CustomerID, SUM(od.Quantity * p.Price) AS TotalRevenue, COUNT(o.OrderID) AS OrderCount
FROM Orders o
JOIN OrderDetails od ON o.OrderID = od.OrderID
JOIN Products p ON od.ProductID = p.ProductID
GROUP BY o.CustomerID
) AS CustomerOrderValues;


--q10
SELECT c.FirstName, c.LastName, OrderCount
FROM Customers c
JOIN (
SELECT CustomerID, COUNT(OrderID) AS OrderCount
FROM Orders
GROUP BY CustomerID
) AS CustomerOrderCount ON c.CustomerID = CustomerOrderCount.CustomerID;
 
