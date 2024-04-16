USE TechShop;
--q1
SELECT FirstName, LastName, Email
FROM Customers;

--q2
SELECT o.OrderID, o.OrderDate, CONCAT(c.FirstName, ' ', c.LastName) AS CustomerName
FROM Orders o
INNER JOIN Customers c ON o.CustomerID = c.CustomerID;

--q3
INSERT INTO Customers (CustomerID, FirstName, LastName, Email, Phone, Address)
VALUES (11,'Shyam', 'Tiwari', 'shyam@gmail.com',123456097 ,'Street123');
Select * from Customers;

--q4
UPDATE Products
SET Price = Price * 1.1
WHERE ProductName IN ('Laptop', 'Smartphone', 'Tablet', 'Headphones', 'Camera', 'Smartwatch', 'Printer', 'Router', 'External Hard Drive', 'Speaker');
select * from Products;

--Q5


--q6
INSERT INTO Orders
VALUES(11, 11, '2024-04-08', 5000);

SELECT * FROM Orders;
SELECT * FROM OrderDetails;

--Q7


--q8 later as subquery
UPDATE Orders
SET TotalAmount = (
    SELECT SUM(od.Quantity * p.Price)
    FROM OrderDetails od
    INNER JOIN Products p ON od.ProductID = p.ProductID
    WHERE od.OrderID = Orders.OrderID
)

--q10
INSERT INTO Products (ProductID,ProductName, Description, Price)
VALUES (11,'Samsung Smartphone', '5G-enabled smartphone with high-resolution camera', 19999);

--q11
ALTER TABLE Customers
ADD NumberOfOrders INT;

UPDATE Customers
SET NumberOfOrders = (
    SELECT COUNT(*)
    FROM Orders
    WHERE Orders.CustomerID = Customers.CustomerID
);
select * from Customers;








