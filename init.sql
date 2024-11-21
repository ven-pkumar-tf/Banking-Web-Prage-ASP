-- Create the database if it doesn't exist
IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = N'TransactionDB')
BEGIN
    CREATE DATABASE TransactionDB;
END;

-- Switch to the created database
USE TransactionDB;

-- Create the Transactions table
IF NOT EXISTS (SELECT * FROM sysobjects WHERE name = 'Transactions' AND xtype = 'U')
BEGIN
    CREATE TABLE Transactions (
        TransactionID INT PRIMARY KEY IDENTITY(1,1),
        AccountNumber VARCHAR(20) NOT NULL,
        TransactionType VARCHAR(50) NOT NULL,
        Amount DECIMAL(18, 2) NOT NULL,
        Date DATETIME NOT NULL DEFAULT GETDATE()
    );
END;

