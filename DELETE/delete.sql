-- Basic DELETE
-- Deletes rows from a table.
DELETE FROM Customers  
WHERE CustomerID = 1;


-- DELETE with Multiple Conditions
-- Combines conditions to filter rows.
DELETE FROM Employees  
WHERE department = 'HR' AND age > 60;


-- DELETE All Rows
-- Deletes all rows without removing the table structure.
DELETE FROM Orders;


-- DELETE with Subquery
-- Uses a subquery to filter rows to delete.
DELETE FROM Customers  
WHERE Country IN (SELECT Country FROM Regions WHERE RegionName = 'Europe');


-- DELETE with JOIN (Using CTE)
-- Deletes rows based on related table data.
WITH Temp AS (  
    SELECT e.EmployeeID  
    FROM Employees e  
    INNER JOIN Departments d ON e.department_id = d.department_id  
    WHERE d.department_name = 'IT'  
)  
DELETE FROM Employees  
WHERE EmployeeID IN (SELECT EmployeeID FROM Temp);


--Delete Related Rows in Two Tables
DELETE o  
FROM Orders o  
INNER JOIN Customers c ON o.CustomerID = c.CustomerID  
WHERE c.Country = 'USA';
