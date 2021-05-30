 with cte AS (
SELECT  *
       ,row_number() over (partition by employee_id ORDER BY primary_flag asc) AS rownum
FROM Employee )
SELECT  employee_id
       ,department_id
FROM cte
WHERE rownum = 1; 