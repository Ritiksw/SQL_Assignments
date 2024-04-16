USE HMBank;


--Q1
SELECT AVG(balance) AS average_balance
FROM Accounts;

Select * from Accounts;

--q2
SELECT TOP 10 account_id, balance
FROM Accounts
ORDER BY balance DESC;

--Q3
SELECT SUM(amount) AS total_deposits
FROM Transactions
WHERE transaction_type = 'deposit' AND transaction_date = '2024-04-01';

SELECT * FROM Transactions;

--Q4
SELECT MIN(DOB) AS oldest_customer, MAX(DOB) AS newest_customer
FROM Customers;

SELECT * FROM Customers;

--Q5
SELECT t.*, a.account_type
FROM Transactions t
JOIN Accounts a ON t.account_id = a.account_id;

--Q6
SELECT c.first_name, c.last_name, a.*
FROM Customers c
JOIN Accounts a ON c.customer_id = a.customer_id;

SELECT * FROM CUSTOMERS;

--Q7
SELECT t.*, c.*
FROM Transactions t
JOIN Accounts a ON t.account_id = a.account_id
JOIN Customers c ON a.customer_id = c.customer_id
WHERE t.account_id = 101;

Select * from Transactions;

--Q8 doubt
SELECT customer_id
FROM Accounts
GROUP BY customer_id
HAVING COUNT(*) > 1;

select * from accounts;


--Q9
SELECT 
    t1.account_id,
    SUM(t1.amount) AS total_deposits,
    SUM(t2.amount) AS total_withdrawals,
    SUM(t1.amount) - SUM(t2.amount) AS difference
FROM 
    Transactions t1
LEFT JOIN
    Transactions t2 ON t1.account_id = t2.account_id AND t2.transaction_type = 'withdrawal'
WHERE 
    t1.transaction_type = 'deposit'
GROUP BY 
    t1.account_id;



--Q9
SELECT account_type, SUM(balance) AS total_balance
FROM Accounts
GROUP BY account_type;


--Q10
SELECT account_id, COUNT(*) AS transaction_count
FROM Transactions
GROUP BY account_id
ORDER BY transaction_count DESC;

--Q11
SELECT amount, transaction_date, account_id
FROM Transactions
GROUP BY amount, transaction_date, account_id
HAVING COUNT(*) > 1;

--Q12
SELECT *
FROM Transactions
GROUP BY amount, transaction_date, account_id
HAVING COUNT(*) > 1;


select * from Transactions;


