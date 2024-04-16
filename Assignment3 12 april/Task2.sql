USE HMBank;

--q1
SELECT first_name, last_name, account_type, email 
FROM Customers 
JOIN Accounts ON Customers.customer_id = Accounts.customer_id;


--q2
SELECT c.first_name, c.last_name, t.transaction_id, t.transaction_type, t.amount, t.transaction_date 
FROM Customers c 
JOIN Accounts a ON c.customer_id = a.customer_id 
JOIN Transactions t ON a.account_id = t.account_id;


--q3
UPDATE Accounts 
SET balance = balance + 1000 
WHERE account_id = 101;
SELECT * FROM Accounts;

--q4
SELECT CONCAT(first_name, ' ', last_name) AS full_name 
FROM Customers;


--q5
DELETE FROM Accounts 
WHERE balance = 0 AND account_type = 'savings';


--q6
SELECT * 
FROM Customers 
WHERE address LIKE '%Mumbai%';


--q7
SELECT balance 
FROM Accounts 
WHERE account_id = 101;


--q8
SELECT * 
FROM Accounts 
WHERE account_type = 'current' AND balance > 50000;

SELECT * FROM Accounts;


--q9
SELECT * 
FROM Transactions 
WHERE account_id = 101;

--q10
SELECT account_id, balance * 0.03 AS interest
FROM Accounts
WHERE account_type = 'savings';

--q11
SELECT account_id, balance
FROM Accounts
WHERE balance < -500;

--q12
SELECT *
FROM Customers
WHERE address NOT LIKE '%Mumbai%';

