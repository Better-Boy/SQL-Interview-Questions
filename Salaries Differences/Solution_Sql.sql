SELECT  abs(engg.engg_salary - market.market_salary)
FROM 
(
	SELECT  MAX(salary) AS engg_salary
	FROM db_employee
	WHERE department_id = ( 
	SELECT  id
	FROM db_dept
	WHERE department = 'engineering') 
) AS engg, (
SELECT  MAX(salary) AS market_salary
FROM db_employee
WHERE department_id = ( 
SELECT  id
FROM db_dept
WHERE department = 'marketing')) AS market; 