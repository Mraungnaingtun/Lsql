

-- Returns all rows from the left table, and matched rows from the right table.
--  Unmatched rows from the right table will have NULLs.
SELECT e.Name, d.DepartmentName 
FROM Employees e
LEFT JOIN Departments d ON e.DepartmentID = d.DepartmentID;

-- Name	DepartmentName
-- Alice	HR
-- Bob	Finance
-- Charlie	NULL
-- David	IT