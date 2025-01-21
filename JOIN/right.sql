

-- Returns all rows from the right table, and matched rows from the left table. 
-- Unmatched rows from the left table will have NULLs.
SELECT e.Name, d.DepartmentName 
FROM Employees e
RIGHT JOIN Departments d ON e.DepartmentID = d.DepartmentID;

-- Name	DepartmentName
-- Alice	HR
-- Bob	Finance
-- David	IT
-- NULL	Marketing