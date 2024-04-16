use HMBank;

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    DOB DATE,
    email VARCHAR(50),
    phone_number VARCHAR(20),
	address VARCHAR(50)
);

SELECT * FROM Customers;

CREATE TABLE Accounts (
    account_id INT PRIMARY KEY,
    customer_id INT,
    account_type VARCHAR(20),
    balance DECIMAL(15, 2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

SELECT * FROM Customers;

CREATE TABLE Transactions (
    transaction_id INT PRIMARY KEY,
    account_id INT,
    transaction_type VARCHAR(20),
    amount DECIMAL(15, 2),
    transaction_date DATE,
    FOREIGN KEY (account_id) REFERENCES Accounts(account_id)
);

SELECT * FROM Transactions;


INSERT INTO Customers (customer_id, first_name, last_name, DOB, email, phone_number, address) VALUES
(1, 'Akshay', 'Patel', '1990-05-15', 'akshay@gmail.com', '9876543210', '123 ABC Street, Mumbai'),
(2, 'Priya', 'Sharma', '1985-11-20', 'priya@gmail.com', '8765432109', '456 XYZ Road, Delhi'),
(3, 'Rahul', 'Gupta', '1992-03-10', 'rahul@gmail.com', '7654321098', '789 PQR Avenue, Bangalore'),
(4, 'Aarti', 'Singh', '1988-09-25', 'aarti@gmail.com', '6543210987', '321 LMN Lane, Pune'),
(5, 'Amit', 'Kumar', '1995-07-03', 'amit@gmail.com', '5432109876', '654 EFG Street, Mumbai'),
(6, 'Deepika', 'Rajput', '1982-01-12', 'deepika@gmail.com', '4321098765', '987 RST Road, Banglore'),
(7, 'Vikram', 'Verma', '1998-12-28', 'vikram@gmail.com', '3210987654', '741 JKL Avenue, Pune'),
(8, 'Neha', 'Jain', '1993-08-17', 'neha@gmail.com', '2109876543', '852 MNO Lane, Delhi'),
(9, 'Ravi', 'Mishra', '1987-04-09', 'ravi@gmail.com', '1098765432', '963 QWE Street, Delhi'),
(10, 'Anjali', 'Thakur', '1991-06-30', 'anjali@gmail.com', '0987654321', '159 UVW Road, Pune');


INSERT INTO Accounts (account_id, customer_id, account_type, balance) VALUES
(101, 1, 'savings', 50000.00),
(102, 2, 'current', 100000.00),
(103, 3, 'savings', 75000.00),
(104, 4, 'current', 60000.00),
(105, 5, 'savings', 90000.00),
(106, 6, 'current', 85000.00),
(107, 7, 'savings', 70000.00),
(108, 8, 'current', 95000.00),
(109, 9, 'savings', 80000.00),
(110, 10, 'current', 120000.00);

INSERT INTO Transactions (transaction_id, account_id, transaction_type, amount, transaction_date) VALUES
(201, 101, 'deposit', 10000.00, '2024-04-10'),
(202, 102, 'deposit', 20000.00, '2024-04-11'),
(203, 103, 'withdrawal', 5000.00, '2024-04-12'),
(204, 104, 'withdrawal', 10000.00, '2024-04-13'),
(205, 105, 'deposit', 15000.00, '2024-04-14'),
(206, 106, 'withdrawal', 20000.00, '2024-04-15'),
(207, 107, 'deposit', 12000.00, '2024-04-16'),
(208, 108, 'withdrawal', 8000.00, '2024-04-17'),
(209, 109, 'deposit', 18000.00, '2024-04-18'),
(210, 110, 'withdrawal', 25000.00, '2024-04-19');