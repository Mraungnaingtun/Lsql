
-- plus or minus days
SELECT DATEADD(mm, 1, '2025-01-28') AS NewDate;

--to create a date from parts
SELECT DATEFROMPARTS(2025, 1, 28) AS DateFromParts;

SELECT YEAR(GETDATE()) AS Year, MONTH(GETDATE()) AS Month, DAY(GETDATE()) AS Day;

SELECT FORMAT(GETDATE(), 'yyyy-MM-dd') AS FormattedDate;

-- Get Last Day of the Month
SELECT EOMONTH(GETDATE()) AS LastDayOfMonth;

-- Calculate Age
SELECT DATEDIFF(YEAR, '1998-01-28', GETDATE()) AS Age;