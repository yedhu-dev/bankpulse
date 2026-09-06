-- Q13: Find customers whose total transaction amount is above the average customer total

SELECT
    customer_id,
    SUM(transaction_amount) AS total_transaction_amount
FROM bank_transactions
GROUP BY customer_id
HAVING SUM(transaction_amount) > (
    SELECT AVG(customer_total)
    FROM (
        SELECT
            customer_id,
            SUM(transaction_amount) AS customer_total
        FROM bank_transactions
        GROUP BY customer_id
    ) AS customer_summary
)
ORDER BY total_transaction_amount DESC;


-- Q14: Rank customers by total transaction amount

SELECT
    customer_id,
    SUM(transaction_amount) AS total_transaction_amount,
    RANK() OVER (
        ORDER BY SUM(transaction_amount) DESC
    ) AS customer_rank
FROM bank_transactions
GROUP BY customer_id
ORDER BY customer_rank;


-- Q15: Rank states by total transaction amount

SELECT
    state,
    SUM(transaction_amount) AS total_transaction_amount,
    RANK() OVER (
        ORDER BY SUM(transaction_amount) DESC
    ) AS state_rank
FROM bank_transactions
GROUP BY state
ORDER BY state_rank;


-- Q16: Rank account types by total transaction amount

SELECT
    account_type,
    SUM(transaction_amount) AS total_transaction_amount,
    RANK() OVER (
        ORDER BY SUM(transaction_amount) DESC
    ) AS account_type_rank
FROM bank_transactions
GROUP BY account_type
ORDER BY account_type_rank;


-- Q17: Analyze monthly transaction trends using a CTE

WITH monthly_transactions AS (
    SELECT
        DATE_FORMAT(transaction_date, '%Y-%m') AS transaction_month,
        COUNT(*) AS transaction_count,
        SUM(transaction_amount) AS total_transaction_amount,
        AVG(transaction_amount) AS average_transaction_amount
    FROM bank_transactions
    GROUP BY DATE_FORMAT(transaction_date, '%Y-%m')
)

SELECT
    transaction_month,
    transaction_count,
    total_transaction_amount,
    average_transaction_amount
FROM monthly_transactions
ORDER BY transaction_month;


-- Q18: Identify high-frequency customers

SELECT
    customer_id,
    COUNT(*) AS transaction_count,
    SUM(transaction_amount) AS total_transaction_amount
FROM bank_transactions
GROUP BY customer_id
HAVING COUNT(*) > 5
ORDER BY transaction_count DESC;


-- Q19: Calculate the fraud rate for each banking channel

SELECT
    channel,
    COUNT(*) AS total_transactions,
    SUM(CASE WHEN is_fraud = 1 THEN 1 ELSE 0 END) AS fraud_transactions,
    ROUND(
        SUM(CASE WHEN is_fraud = 1 THEN 1 ELSE 0 END) * 100.0
        / COUNT(*),
        2
    ) AS fraud_rate_percentage
FROM bank_transactions
GROUP BY channel
ORDER BY fraud_rate_percentage DESC;


-- Q20: Create a monthly transaction summary view

CREATE VIEW monthly_transaction_summary AS
SELECT
    DATE_FORMAT(transaction_date, '%Y-%m') AS transaction_month,
    COUNT(*) AS transaction_count,
    SUM(transaction_amount) AS total_transaction_amount,
    AVG(transaction_amount) AS average_transaction_amount
FROM bank_transactions
GROUP BY DATE_FORMAT(transaction_date, '%Y-%m');


-- Q20: Display the monthly transaction summary

SELECT *
FROM monthly_transaction_summary
ORDER BY transaction_month;
