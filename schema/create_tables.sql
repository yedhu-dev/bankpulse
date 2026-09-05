-- BankPulse Database Schema
-- Table: bank_transactions

CREATE DATABASE IF NOT EXISTS bankpulse;

USE bankpulse;

CREATE TABLE bank_transactions (
    transaction_id TEXT,
    customer_id TEXT,
    transaction_date TEXT,
    transaction_time TEXT,
    account_type TEXT,
    transaction_type TEXT,
    transaction_amount DOUBLE,
    transaction_direction TEXT,
    account_balance DOUBLE,
    merchant_category TEXT,
    state TEXT,
    credit_score INT,
    has_loan INT,
    loan_type TEXT,
    emi_amount DOUBLE,
    transaction_status TEXT,
    channel TEXT,
    kyc_status TEXT,
    is_fraud INT,
    transaction_hour INT
);