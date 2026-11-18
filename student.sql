-- 1. Create Database
CREATE DATABASE BankingManagementDB;
USE BankingManagementDB;
CREATE TABLE Customer(
    CustomerID INt AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    Phone VARCHAR(20),
    Address VARCHAR(255),
    CreatedAt DATETIME DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE Accounts (
    AccountID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerID INT,
    AccountType VARCHAR(20) CHECK (AccountType IN ('Saving', 'Checking', 'Current')),
    Balance DECIMAL(18, 2) DEFAULT 0.00,
    OpenedDate DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID) ON DELETE CASCADE
);
INSERT INTO Customer (FirstName, LastName, Email, Phone, Address) 
VALUES 
('Gashachew', 'Birhan', 'gashachewbrhan@gmail.com', '+251911223344', 'Debark, Ethiopia'),
('Abebe', 'Kebede', 'abebe@gmail.com', '+251922334455', 'Gondar, Ethiopia');
INSERT INTO Accounts (CustomerID, AccountType, Balance) 
VALUES 
(1, 'Saving', 15500.50),
(2, 'Checking', 8400.00);
DROP DATABASE BankingManagementDB;
DROP TABLE Customers;
SELECT * FROM Customer;
SELECT * FROM Accounts;