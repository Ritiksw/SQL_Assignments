USE HMBank;

--Q1
SELECT c.customer_id, c.first_name, c.last_name, a.balance AS highest_balance
FROM Customers c
JOIN Accounts a ON c.customer_id = a.customer_id
WHERE a.balance = (SELECT MAX(balance) FROM Accounts);


--Q2 DOUBT

--Q3
SELECT DISTINCT a.account_id, a.balance
FROM Accounts a
JOIN Transactions t ON a.account_id = t.account_id
WHERE t.amount > (
SELECT AVG(amount)
FROM Transactions
);

--Q4
SELECT c.customer_id, c.first_name, c.last_name
FROM Customers c
LEFT JOIN Accounts a ON c.customer_id = a.customer_id
LEFT JOIN Transactions t ON a.account_id = t.account_id
WHERE t.transaction_id IS NULL;

--Q5 doubt




--Q6
SELECT *
FROM Transactions
WHERE account_id IN (
SELECT account_id
FROM Accounts
WHERE balance = (
SELECT MIN(balance)
FROM Accounts
)
);

--Q7 DOUBT
SELECT c.customer_id, c.first_name, c.last_name
FROM Customers c
JOIN Accounts a ON c.customer_id = a.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
HAVING COUNT(DISTINCT a.account_type) > 1;


--Q8
SELECT 
account_type,
COUNT(*) AS num_accounts,
ROUND((COUNT(*) * 100.0) / (SELECT COUNT(*) FROM Accounts), 2) AS percentage
FROM 
Accounts
GROUP BY 
account_type;

--Q9 DOUBT
SELECT t.*
FROM Transactions t
JOIN Accounts a ON t.account_id = a.account_id
WHERE a.customer_id = '101';

SELECT * FROM Transactions;
SELECT * FROM Accounts;

--Q10
SELECT 
account_type,
(SELECT SUM(balance) FROM Accounts a WHERE a.account_type = t.account_type) AS total_balance
FROM 
Accounts t
GROUP BY 
account_type;

