SELECT  IFNULL((
SELECT  distinct salary
FROM Employee
ORDER BY Salary desc
LIMIT 1, 1), null) AS SecondHighestSalary ;