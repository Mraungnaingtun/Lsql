
-- AVG
SELECT AVG(Salary) AS AverageSalary FROM Employees;

-- COUNT
SELECT COUNT(*) AS TotalEmployees FROM Employees;

-- SUM
SELECT SUM(Salary) AS TotalSales FROM Employees;

--  MAX
SELECT MAX(Salary) AS HighestSalary FROM Employees;

--  MIN
SELECT MIN(Salary) AS LowestSalary FROM Employees;

-- GROUP BY
SELECT d.DepartmentName, AVG(Salary) AS AverageSalary
FROM Employees e join Departments d on e.DepartmentID = d.DepartmentID
GROUP BY d.DepartmentName;
-- DepartmentName	AverageSalary
-- Finance	2000000
-- HR	1000000
-- IT	2010000

-- HAVING
SELECT Department, COUNT(*) AS EmployeeCount
FROM Employees
GROUP BY Department
HAVING COUNT(*) > 5;

--DISTINCT with Aggregate Functions:
SELECT COUNT(DISTINCT Department) AS UniqueDepartments FROM Employees;

-- Use Cases
-- Data Summarization: Analyzing total sales, average salary, or maximum profit.
-- Data Grouping: Categorizing data into meaningful groups using GROUP BY.
-- Data Filtering: Applying conditions to aggregated data using HAVING.