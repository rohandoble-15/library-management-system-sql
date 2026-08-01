CREATE DATABASE library_db;
USE library_db ;

-- ==========================================
-- LIBRARY MANAGEMENT SYSTEM
-- ==========================================

-- 1. BRANCH
CREATE TABLE Branch (
    Branch_ID INT PRIMARY KEY,
    Branch_Name VARCHAR(50) NOT NULL,
    City VARCHAR(30) NOT NULL,
    Phone VARCHAR(10) UNIQUE NOT NULL CHECK (LENGTH(PHONE)=10)
);

-- 2. EMPLOYEE
CREATE TABLE Employee (
    Employee_ID INT PRIMARY KEY,
    Employee_Name VARCHAR(50) NOT NULL,
    Designation VARCHAR(30) NOT NULL,
    Phone VARCHAR(15) UNIQUE,
    Branch_ID INT,
        FOREIGN KEY (Branch_ID)
        REFERENCES Branch(Branch_ID)
);

-- 3. BOOKS
CREATE TABLE Books (
    Book_ID INT PRIMARY KEY,
    Book_Title VARCHAR(100) NOT NULL,
    Author VARCHAR(50) NOT NULL,
    Category VARCHAR(30),
    Price DECIMAL(8,2) CHECK (Price > 0),
    Available_Copies INT CHECK (Available_Copies >= 0)
);

-- 4. MEMBERS
CREATE TABLE Members (
    Member_ID INT PRIMARY KEY,
    Member_Name VARCHAR(50) NOT NULL,
    Phone VARCHAR(15) UNIQUE,
    Email VARCHAR(50) UNIQUE,
    Join_Date DATE
);

-- 5. ISSUE_STATUS
CREATE TABLE Issue_Status (
    Issue_ID INT PRIMARY KEY,
    Book_ID INT,
    Member_ID INT,
    Employee_ID INT,
    Issue_Date DATE NOT NULL,
    Due_Date DATE NOT NULL,
    Return_Date DATE,
    Fine DECIMAL(8,2) DEFAULT 0,
    Status VARCHAR(20)
        CHECK (Status IN ('Issued','Returned','Overdue')),

        FOREIGN KEY (Book_ID)
        REFERENCES Books(Book_ID),
        
        FOREIGN KEY (Member_ID)
        REFERENCES Members(Member_ID),

        FOREIGN KEY (Employee_ID)
        REFERENCES Employee(Employee_ID)
);
