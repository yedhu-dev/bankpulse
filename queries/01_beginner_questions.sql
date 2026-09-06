-- Q1: List all transactions from Maharashtra

SELECT *
FROM bank_transactions
WHERE state = 'Maharashtra';


-- Q2: Find transactions with amount greater than ₹50,000

SELECT *
FROM bank_transactions
WHERE transaction_amount > 50000;


-- Q3: Find the 10 highest-value transactions

SELECT *
FROM bank_transactions
ORDER BY transaction_amount DESC
LIMIT 10;


-- Q4: List all successful transactions

SELECT *
FROM bank_transactions
WHERE transaction_status = 'Success';


-- Q5: List all fraudulent transactions

SELECT *
FROM bank_transactions
WHERE is_fraud = 1;
