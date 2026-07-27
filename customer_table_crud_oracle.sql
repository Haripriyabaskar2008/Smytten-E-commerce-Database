-- ============================================================
-- SMYTTEN E-COMMERCE DATABASE MANAGEMENT SYSTEM
-- CUSTOMER TABLE - ORACLE SQL
-- CREATE TABLE, INSERT 10 RECORDS AND CRUD OPERATIONS
-- ============================================================

CREATE TABLE Customer (
    Customer_ID NUMBER PRIMARY KEY,
    Customer_Name VARCHAR2(100) NOT NULL,
    Email VARCHAR2(100) NOT NULL UNIQUE,
    Phone_Number VARCHAR2(15) NOT NULL UNIQUE,
    Address VARCHAR2(255) NOT NULL
);

INSERT ALL
    INTO Customer VALUES (101, 'Haripriya', 'haripriya@gmail.com', '9876543210', 'Chennai')
    INTO Customer VALUES (102, 'Ananya', 'ananya@gmail.com', '9876543211', 'Coimbatore')
    INTO Customer VALUES (103, 'Dhivya', 'dhivya@gmail.com', '9876543212', 'Madurai')
    INTO Customer VALUES (104, 'Keerthana', 'keerthana@gmail.com', '9876543213', 'Tirunelveli')
    INTO Customer VALUES (105, 'Priya', 'priya@gmail.com', '9876543214', 'Salem')
    INTO Customer VALUES (106, 'Swetha', 'swetha@gmail.com', '9876543215', 'Trichy')
    INTO Customer VALUES (107, 'Sonakshi', 'sonakshi@gmail.com', '9876543216', 'Erode')
    INTO Customer VALUES (108, 'Kavya', 'kavya@gmail.com', '9876543217', 'Vellore')
    INTO Customer VALUES (109, 'Sanjana', 'sanjana@gmail.com', '9876543218', 'Thanjavur')
    INTO Customer VALUES (110, 'Aishwarya', 'aishwarya@gmail.com', '9876543219', 'Chengalpattu')
SELECT * FROM dual;

-- READ: Display all customer records
SELECT * FROM Customer;

-- CREATE: Add a new customer
INSERT INTO Customer
VALUES (111, 'Meena', 'meena@gmail.com', '9876543220', 'Kanchipuram');

-- READ: Display a specific customer
SELECT * FROM Customer
WHERE Customer_ID = 101;

-- UPDATE: Update customer details
UPDATE Customer
SET Customer_Name = 'Sonakshi',
    Email = 'sonakshi@gmail.com'
WHERE Customer_ID = 107;

-- DELETE: Delete a customer
DELETE FROM Customer
WHERE Customer_ID = 111;

-- FINAL READ: Display all customer records
SELECT * FROM Customer;

-- ============================================================
-- END OF CUSTOMER TABLE CRUD OPERATIONS
-- ============================================================
