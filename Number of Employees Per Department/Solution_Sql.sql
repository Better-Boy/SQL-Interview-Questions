SELECT  department
       ,COUNT(*) AS number_of_employees
FROM employee
GROUP BY  department
ORDER BY number_of_employees desc;