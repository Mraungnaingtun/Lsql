-- Basic SELECT
SELECT CustomerName, City FROM Customers;

-- Selecting Unique Values with DISTINCT
SELECT DISTINCT Country FROM Customers;

-- Filtering Rows with WHERE
-- BETWEEN: Range (inclusive)
-- LIKE: Pattern matching (e.g., names starting with 'J')
-- IN: Matching any value in a list
-- Comparison Operators: =, >, <, >=, <=, <> (not equal)
SELECT * FROM Customers WHERE Country = 'Mexico';

-- Combining Filters with AND / OR / NOT
SELECT name FROM employees WHERE age > 25 AND department = 'Sales';
SELECT name FROM employees WHERE age < 30 OR department = 'HR';
SELECT name FROM employees WHERE NOT department = 'HR';

-- Sorting Results with ORDER BY
-- ASC: Ascending (default), DESC: Descending
SELECT * FROM Customers ORDER BY Country ASC, CustomerName DESC;

-- Renaming Columns with Aliases
SELECT name AS 'Employee Name', age AS 'Years Old' FROM employees;

-- Limiting Rows with TOP
SELECT TOP 3 * FROM Customers;
