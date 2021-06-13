 with recursive cte AS (
SELECT  employee_id
FROM employees
WHERE manager_id=1 
AND employee_id!=1  
UNION ALL
SELECT  a.employee_id
FROM employees a
JOIN cte b
ON (b.employee_id=a.manager_id) )
SELECT  employee_id
FROM cte