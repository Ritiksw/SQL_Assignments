--Task 3
--q1
SELECT o.OrderID, o.OrderDate, CONCAT(c.FirstName, ' ', c.LastName) AS CustomerName
FROM Orders o
INNER JOIN Customers c ON o.CustomerID = c.CustomerID;

Select * from Orders;

--q2
SELECT p.ProductName, SUM(od.Quantity * p.Price) AS TotalRevenue
FROM OrderDetails od
INNER JOIN Products p ON od.ProductID = p.ProductID
GROUP BY p.ProductName;

--q3
SELECT c.FirstName, c.LastName, c.Email, c.Phone, c.Address
FROM Customers c
INNER JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.FirstName, c.LastName, c.Email, c.Phone, c.Address;

--q4
SELECT TOP 1 p.ProductName, SUM(od.Quantity) AS TotalQuantityOrdered
FROM OrderDetails od
INNER JOIN Products p ON od.ProductID = p.ProductID
GROUP BY p.ProductName
ORDER BY TotalQuantityOrdered DESC;

--q5 no catagory


--q6
SELECT c.FirstName, c.LastName, AVG(o.TotalAmount) AS AverageOrderValue
FROM Customers c
INNER JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.FirstName, c.LastName;

--q7
SELECT TOP 1 o.OrderID, c.FirstName, c.LastName, c.Email, c.Phone, c.Address, o.TotalAmount AS TotalRevenue
FROM Orders o
INNER JOIN Customers c ON o.CustomerID = c.CustomerID
ORDER BY o.TotalAmount DESC;


--q8
SELECT p.ProductName, COUNT(od.ProductID) AS NumberOfOrders
FROM Products p
LEFT JOIN OrderDetails od ON p.ProductID = od.ProductID
GROUP BY p.ProductName;

--q9 and q10 user input
