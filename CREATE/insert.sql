-- Basic INSERT
-- Inserts a new row into the specified table.
INSERT INTO Customers (CustomerName, ContactName, Country)  
VALUES ('Acme Corp', 'John Doe', 'USA');

-- Insert with Specific Columns (Not All)
-- Omits columns if default values or NULLs are acceptable.
INSERT INTO Employees (name, department)  
VALUES ('Jane Smith', 'HR');

-- Insert Multiple Rows
-- Adds multiple rows with a single query.
INSERT INTO Products (ProductName, Price, Quantity)  
VALUES 
('Laptop', 1200, 10),  
('Smartphone', 800, 25),  
('Tablet', 500, 15);

-- Insert Using SELECT
-- Copies data from one table to another (assuming structure compatibility).
INSERT INTO Archive_Customers (CustomerName, City, Country)  
SELECT CustomerName, City, Country FROM Customers WHERE Country = 'Germany';

-- Insert with Default or NULL Values
-- Skips columns or inserts NULL explicitly.
INSERT INTO Orders (OrderID, CustomerID, OrderDate)  
VALUES (101, 5, NULL); -- NULL for no value


-- Price defaults to NULL or 0
INSERT INTO Products (ProductName) VALUES ('Headphones'); 

-- Avoiding Full Column Specification
INSERT INTO Customers VALUES (5, 'Acme', 'John Doe', 'USA'); -- Column order matters

