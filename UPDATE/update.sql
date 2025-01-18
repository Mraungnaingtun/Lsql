-- Basic UPDATE
-- Updates existing data in a table.
UPDATE Customers  
SET ContactName = 'Jane Doe', City = 'Los Angeles'  
WHERE CustomerID = 1;


-- Updating Multiple Columns
-- Sets multiple values in one statement.
UPDATE Employees  
SET department = 'Finance', salary = 75000  
WHERE name = 'John Smith';


-- Using WHERE to Filter Rows
-- Always use WHERE to avoid updating all rows unintentionally.
UPDATE Orders  
SET OrderStatus = 'Shipped'  
WHERE OrderDate < '2025-01-01';


-- Updating All Rows
-- Without a WHERE clause, all rows in the table will be updated.
UPDATE Products  
SET Price = Price * 1.10; -- Increases price by 10% for all products


-- Using a Subquery in UPDATE
-- Updates using data from another table.
UPDATE Customers  
SET Country = (SELECT Country FROM Regions WHERE RegionID = 1)  
WHERE CustomerID = 3;


-- Updating with CASE for Conditional Logic
-- Applies different updates based on conditions.
UPDATE Employees  
SET bonus = CASE  
    WHEN department = 'Sales' THEN salary * 0.10  
    WHEN department = 'IT' THEN salary * 0.05  
    ELSE 0  
END;


--Updating Based on Another Column
UPDATE Employees  
SET salary = salary + 5000  
WHERE department = 'HR';


-- Updating with JOIN (for related tables)
UPDATE e  
SET e.salary = e.salary * 1.05  
FROM Employees e  
INNER JOIN Departments d ON e.department_id = d.department_id  
WHERE d.department_name = 'Sales';

