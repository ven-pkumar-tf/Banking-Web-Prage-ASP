-- Create the database if it doesn't exist
IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = N'TransactionDB')
BEGIN
    CREATE DATABASE TransactionDB;
END;

