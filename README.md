\# BankPulse – Banking Transaction Analysis



\## 1. Project Overview



BankPulse is a SQL-based banking transaction analysis project built using MySQL.



The project analyzes 598 banking transaction records to identify transaction patterns, customer behavior, banking channel performance, and fraud-related trends.



\## 2. Objective



The main objectives of this project are:



\- Analyze banking transactions using SQL

\- Understand transaction patterns

\- Identify high-value transactions and customers

\- Compare account types, transaction types, and banking channels

\- Analyze fraudulent transactions

\- Create useful summaries using advanced SQL



\## 3. Dataset Description



The dataset contains 598 banking transaction records.



The main table is:



bank\_transactions



Important columns include:



\- transaction\_id

\- customer\_id

\- transaction\_date

\- transaction\_time

\- account\_type

\- transaction\_type

\- transaction\_amount

\- transaction\_direction

\- account\_balance

\- merchant\_category

\- state

\- channel

\- transaction\_status

\- is\_fraud



\## 4. Tools Used



\- MySQL

\- MySQL Workbench

\- SQL

\- CSV dataset

\- GitHub



\## 5. Business Questions



\### Beginner Level



1\. List all transactions from Maharashtra

2\. Find transactions with amount greater than ₹50,000

3\. Find the 10 highest-value transactions

4\. List all successful transactions

5\. List all fraudulent transactions



\### Intermediate Level



6\. Calculate the total transaction value

7\. Analyze transactions by account type

8\. Find the top 5 customers by total transaction amount

9\. Find states with total transaction amount above ₹1,000,000

10\. Analyze transactions by banking channel

11\. Analyze transactions by transaction type

12\. Analyze fraudulent transactions by banking channel



\### Advanced Level



13\. Find customers whose total transaction amount is above the average customer total

14\. Rank customers by total transaction amount

15\. Rank states by total transaction amount

16\. Rank account types by total transaction amount

17\. Analyze monthly transaction trends using a CTE

18\. Identify high-frequency customers

19\. Calculate the fraud rate for each banking channel

20\. Create a monthly transaction summary view



\## 6. SQL Concepts Used



\- SELECT

\- WHERE

\- ORDER BY

\- LIMIT

\- GROUP BY

\- HAVING

\- Aggregate Functions

\- SUM()

\- COUNT()

\- AVG()

\- CASE

\- Subqueries

\- Common Table Expressions (CTEs)

\- Window Functions

\- RANK()

\- CREATE VIEW



\## 7. Key Findings



\- The dataset contains 598 transactions.

\- The monthly transaction summary shows 598 transactions for January 2019.

\- The total transaction amount for January 2019 is approximately ₹12.39 million.

\- The average transaction amount is approximately ₹20,726.

\- The project analyzes fraud across different banking channels.

\- Customer and account-level rankings help identify high-value activity.



\## 8. How to Run the Project



1\. Open MySQL Workbench.

2\. Create or select the bankpulse database.

3\. Create the bank\_transactions table using the schema file.

4\. Import the CSV dataset into the table.

5\. Run the SQL files in the queries folder.

6\. Review the query results in MySQL Workbench.



\## 9. Project Structure



`text

bankpulse/

│

├── README.md

│

├── schema/

│   └── create\_tables.sql

│

├── queries/

│   ├── 01\_beginner\_questions.sql

│   ├── 02\_intermediate\_questions.sql

│   └── 03\_advanced\_questions.sql

│

└── screenshots/

&#x20;   ├── 01\_database\_table.png

&#x20;   ├── 02\_beginner\_q1.png

&#x20;   ├── 03\_intermediate\_q7.png

&#x20;   ├── 04\_advanced\_q14.png

&#x20;   └── 05\_monthly\_view\_q20.png

