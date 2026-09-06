# BankPulse – Banking Transaction Analysis

## 1. Project Overview

BankPulse is a SQL-based banking transaction analysis project built using MySQL.

The project analyzes 598 banking transaction records to identify transaction patterns, customer behavior, banking channel performance, and fraud-related trends.

## 2. Objective

The main objectives of this project are:

- Analyze banking transactions using SQL

- Understand transaction patterns

- Identify high-value transactions and customers

- Compare account types, transaction types, and banking channels

- Analyze fraudulent transactions

- Create useful summaries using advanced SQL

## 3. Dataset Description

The dataset contains 598 banking transaction records.

The main table is:

bank_transactions

Important columns include:

- transaction_id

- customer_id

- transaction_date

- transaction_time

- account_type

- transaction_type

- transaction_amount

- transaction_direction

- account_balance

- merchant_category

- state

- channel

- transaction_status

- is_fraud

## 4. Tools Used

- MySQL

- MySQL Workbench

- SQL

- CSV dataset

- GitHub

## 5. Business Questions

### Beginner Level

1. List all transactions from Maharashtra

2. Find transactions with amount greater than ₹50,000

3. Find the 10 highest-value transactions

4. List all successful transactions

5. List all fraudulent transactions

### Intermediate Level

6. Calculate the total transaction value

7. Analyze transactions by account type

8. Find the top 5 customers by total transaction amount

9. Find states with total transaction amount above ₹1,000,000

10. Analyze transactions by banking channel

11. Analyze transactions by transaction type

12. Analyze fraudulent transactions by banking channel

### Advanced Level

13. Find customers whose total transaction amount is above the average customer total

14. Rank customers by total transaction amount

15. Rank states by total transaction amount

16. Rank account types by total transaction amount

17. Analyze monthly transaction trends using a CTE

18. Identify high-frequency customers

19. Calculate the fraud rate for each banking channel

20. Create a monthly transaction summary view

## 6. SQL Concepts Used

- SELECT

- WHERE

- ORDER BY

- LIMIT

- GROUP BY

- HAVING

- Aggregate Functions

- SUM()

- COUNT()

- AVG()

- CASE

- Subqueries

- Common Table Expressions (CTEs)

- Window Functions

- RANK()

- CREATE VIEW



## 7. Key Skills Demonstrated

- SQL data analysis
- Data aggregation and grouping
- Customer and transaction analysis
- Fraud analysis
- Banking channel analysis
- Ranking using window functions
- Subqueries and CTEs
- Creating SQL views
- Organizing an analytics project using


## 8. Key Findings

- The dataset contains 598 transactions.

- The monthly transaction summary shows 598 transactions for January 2019.

- The total transaction amount for January 2019 is approximately ₹12.39 million.

- The average transaction amount is approximately ₹20,726.

- The project analyzes fraud across different banking channels.

- Customer and account-level rankings help identify high-value activity.

## 9 How to Run the Project

1. Open MySQL Workbench.

2. Create or select the bankpulse database.

3. Create the bank_transactions table using the schema file.

4. Import the CSV dataset into the table.

5. Run the SQL files in the queries folder.

6. Review the query results in MySQL Workbench.

## 10. Project Structure


'''text
bankpulse/
├── README.md
├── schema/
│   └── create_tables.sql
├── queries/
│   ├── 01_beginner_questions.sql
│   ├── 02_intermediate_questions.sql
│   └── 03_advanced_questions.sql
└── screenshots/
    ├── 01_database_table.png
    ├── 02_beginner_q1.png
    ├── 03_intermediate_q7.png
    ├── 04_advanced_q14.png
    └── 05_monthly_view_q20.png
'''




11. Conclusion
BankPulse demonstrates how SQL can be used to analyze banking transaction data and extract meaningful business insights.
The project covers basic SQL queries, data aggregation, customer analysis, fraud analysis, ranking, CTEs, and SQL views. It provides a practical example of using MySQL for banking and customer analytics.



