-- Q6: Calculate the total transaction value

SELECT SUM(transaction_amount) AS total_transaction_value
FROM bank_transactions;


-- Q7: Analyze transactions by account type

SELECT
    account_type,
    COUNT(*) AS transaction_count,
    SUM(transaction_amount) AS total_transaction_amount,
    AVG(transaction_amount) AS average_transaction_amount
FROM bank_transactions
GROUP BY account_type
ORDER BY total_transaction_amount DESC;


-- Q8: Find the top 5 customers by total transaction amount

SELECT
    customer_id,
    COUNT(*) AS transaction_count,
    SUM(transaction_amount) AS total_transaction_amount
FROM bank_transactions
GROUP BY customer_id
ORDER BY total_transaction_amount DESC
LIMIT 5;


-- Q9: Find states with total transaction amount above ₹1,000,000

SELECT
    state,
    COUNT(*) AS transaction_count,
    SUM(transaction_amount) AS total_transaction_amount
FROM bank_transactions
GROUP BY state
HAVING SUM(transaction_amount) > 1000000
ORDER BY total_transaction_amount DESC;


-- Q10: Analyze transactions by banking channel

SELECT
    channel,
    COUNT(*) AS transaction_count,
    SUM(transaction_amount) AS total_transaction_amount,
    AVG(transaction_amount) AS average_transaction_amount
FROM bank_transactions
GROUP BY channel
ORDER BY total_transaction_amount DESC;


-- Q11: Analyze transactions by transaction type

SELECT
    transaction_type,
    COUNT(*) AS transaction_count,
    SUM(transaction_amount) AS total_transaction_amount,
    AVG(transaction_amount) AS average_transaction_amount
FROM bank_transactions
GROUP BY transaction_type
ORDER BY total_transaction_amount DESC;


-- Q12: Analyze fraudulent transactions by banking channel

SELECT
    channel,
    COUNT(*) AS fraud_transaction_count
FROM bank_transactions
WHERE is_fraud = 1
GROUP BY channel
ORDER BY fraud_transaction_count DESC;
