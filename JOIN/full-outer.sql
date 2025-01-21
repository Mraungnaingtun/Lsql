

-- Returns rows when there is a match in one of the tables. 
-- If there is no match, NULLs are returned for the missing side.
SELECT e.Name, d.DepartmentName 
FROM Employees e
FULL OUTER JOIN Departments d ON e.DepartmentID = d.DepartmentID;

-- Name	DepartmentName
-- Alice	HR
-- Bob	Finance
-- Charlie	NULL
-- David	IT
-- NULL	Marketing