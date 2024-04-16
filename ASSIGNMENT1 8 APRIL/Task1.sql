CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(10),
    LastName VARCHAR(10),
    Email VARCHAR(50),
    Phone VARCHAR(20),
    Address VARCHAR(200)
);
SELECT * FROM Customers;

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Description VARCHAR(50),
    Price INT
);
SELECT * FROM Products;

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount INT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

CREATE TABLE Inventory (
    InventoryID INT PRIMARY KEY,
    ProductID INT,
    QuantityInStock INT,
    LastStockUpdate DATE,
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

INSERT INTO Customers (CustomerID, FirstName, LastName, Email, Phone, Address) VALUES
(1, 'Amit', 'Patil', 'amit.patil@gmail.com', '1234567890', ' Street 123'),
(2, 'Sneha', 'Desai', 'sneha.desai@gmail.com', '2345678901', ' Street 456'),
(3, 'Neha', 'Joshi', 'neha.joshi@gmail.com', '3456789012', 'Street789 '),
(4, 'Rahul', 'Shah', 'rahul.shah@gmail.com', '4567890123', 'Street 901'),
(5, 'Pooja', 'Mehta', 'pooja.mehta@gmail.com', '5678901234', 'Street 234'),
(6, 'Arun', 'Gupta', 'arun.gupta@gmail.com', '6789012345', 'Street 345'),
(7, 'Deepak', 'Pawar', 'deepak.pawar@gmail.com', '7890123456', 'Street 4566'),
(8, 'Anjali', 'Rao', 'anjali.rao@gmail.com', '8901234567', 'Street 567'),
(9, 'Sunita', 'Kulkarni', 'sunita.kulkarni@gmail.com', '9012345678', 'Street 678'),
(10, 'Raj', 'Deshmukh', 'raj.deshmukh@gmail.com', '0123456789', 'Street 34455');

SELECT * FROM Customers;


INSERT INTO Products (ProductID, ProductName, Description, Price) VALUES
(1, 'Laptop', 'High-performance laptop', 1000),
(2, 'Smartphone', 'Latest smartphone model', 800),
(3, 'Tablet', 'Lightweight tablet', 500),
(4, 'Headphones', 'Wireless headphones', 150),
(5, 'Camera', 'Digital camera with zoom', 700),
(6, 'Smartwatch', 'Fitness tracking smartwatch', 200),
(7, 'Printer', 'All-in-one printer', 300),
(8, 'Router', 'High-speed internet router', 100),
(9, 'External Hard Drive', 'Portable storage device', 120),
(10, 'Speaker', 'Bluetooth speaker', 80);

SELECT * FROM Products;

ALTER TABLE Products
ADD CategoryID INT;

ALTER TABLE Products
ADD CONSTRAINT FK_PCategory
FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID);


INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount) VALUES
(1, 1, '2024-04-01', 1200),
(2, 2, '2024-04-02', 900),
(3, 3, '2024-04-03', 600),
(4, 4, '2024-04-04', 450),
(5, 5, '2024-04-05', 850),
(6, 6, '2024-04-06', 300),
(7, 7, '2024-04-07', 180),
(8, 8, '2024-04-08', 240),
(9, 9, '2024-04-09', 420),
(10, 10, '2024-04-10', 960);

SELECT * FROM Orders;


INSERT INTO OrderDetails (OrderDetailID, OrderID, ProductID, Quantity) VALUES
(1, 1, 1, 1),
(2, 2, 2, 2),
(3, 3, 3, 1),
(4, 4, 4, 3),
(5, 5, 5, 1),
(6, 6, 6, 2),
(7, 7, 7, 1),
(8, 8, 8, 2),
(9, 9, 9, 1),
(10, 10, 10, 4);

SELECT * FROM OrderDetails;


INSERT INTO Inventory (InventoryID, ProductID, QuantityInStock, LastStockUpdate) VALUES
(1, 1, 50, '2024-04-01'),
(2, 2, 75, '2024-04-02'),
(3, 3, 100, '2024-04-03'),
(4, 4, 30, '2024-04-04'),
(5, 5, 60, '2024-04-05'),
(6, 6, 40, '2024-04-06'),
(7, 7, 20, '2024-04-07'),
(8, 8, 80, '2024-04-08'),
(9, 9, 55, '2024-04-09'),
(10, 10, 65, '2024-04-10');

SELECT * FROM Inventory;


Create table Category (
	CategoryID INT PRIMARY KEY, 
	CategoryName VARCHAR(20)
);

select * from Category;

INSERT INTO Category (CategoryID, CategoryName) VALUES
(1, 'Electronics'),
(2, 'Clothing'),
(3, 'Home Appliances'),
(4, 'Books'),
(5, 'Beauty');

select * from Category;



