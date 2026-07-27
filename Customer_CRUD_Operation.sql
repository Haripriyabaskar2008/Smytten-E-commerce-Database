-- ============================================
-- SMYTTEN E-COMMERCE DATABASE
-- CUSTOMER1 TABLE
-- CREATE TABLE, INSERT AND CRUD OPERATIONS
-- ============================================


-- 1. CREATE CUSTOMER1 TABLE

CREATE TABLE Customer1 (
    Customer_ID INT PRIMARY KEY,
    Customer_Name VARCHAR2(100) NOT NULL,
    Email VARCHAR2(100) NOT NULL UNIQUE,
    Phone_Number VARCHAR2(15) NOT NULL UNIQUE,
    Address VARCHAR2(255) NOT NULL
);


-- 2. INSERT 10 CUSTOMER RECORDS

INSERT ALL
    INTO Customer1 VALUES (101, 'Haripriya', 'haripriya@gmail.com', '9876543210', 'Chennai')
    INTO Customer1 VALUES (102, 'Ananya', 'ananya@gmail.com', '9876543211', 'Coimbatore')
    INTO Customer1 VALUES (103, 'Dhivya', 'dhivya@gmail.com', '9876543212', 'Madurai')
    INTO Customer1 VALUES (104, 'Keerthana', 'keerthana@gmail.com', '9876543213', 'Tirunelveli')
    INTO Customer1 VALUES (105, 'Priya', 'priya@gmail.com', '9876543214', 'Salem')
    INTO Customer1 VALUES (106, 'Swetha', 'swetha@gmail.com', '9876543215', 'Trichy')
    INTO Customer1 VALUES (107, 'Sonakshi', 'sonakshi@gmail.com', '9876543216', 'Erode')
    INTO Customer1 VALUES (108, 'Kavya', 'kavya@gmail.com', '9876543217', 'Vellore')
    INTO Customer1 VALUES (109, 'Sanjana', 'sanjana@gmail.com', '9876543218', 'Thanjavur')
    INTO Customer1 VALUES (110, 'Aishwarya', 'aishwarya@gmail.com', '9876543219', 'Chengalpattu')
SELECT * FROM dual;

COMMIT;


-- 3. READ OPERATION
-- Display all customer records

SELECT * FROM Customer1;


-- 4. CREATE OPERATION
-- Add a new customer

INSERT INTO Customer1
VALUES (111, 'Meena', 'meena@gmail.com', '9876543220', 'Kanchipuram');

COMMIT;


-- 5. READ OPERATION
-- Display a specific customer

SELECT * FROM Customer1
WHERE Customer_ID = 101;


-- 6. UPDATE OPERATION
-- Update customer name and email

UPDATE Customer1
SET Customer_Name = 'Sonakshi',
    Email = 'sonakshi@gmail.com'
WHERE Customer_ID = 107;

COMMIT;


-- 7. DELETE OPERATION
-- Delete a customer

DELETE FROM Customer1
WHERE Customer_ID = 111;

COMMIT;


-- 8. FINAL READ OPERATION
-- Display all customer records after CRUD operations

SELECT * FROM Customer1;