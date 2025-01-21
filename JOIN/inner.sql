
-- The INNER JOIN keyword selects records that have matching values in both tables.
-- table နှစ်ခုလုံးမှာ တူမှ
SELECT e.Name, d.DepartmentName 
FROM Employees e
INNER JOIN Departments d ON e.DepartmentID = d.DepartmentID;

-- Name	DepartmentName
-- Alice	HR
-- Bob	Finance
-- David	IT