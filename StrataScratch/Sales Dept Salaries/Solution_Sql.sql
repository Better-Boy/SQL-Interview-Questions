SELECT  distinct first_name
FROM employee
WHERE lower(department) = 'sales' 
AND target > 150
ORDER BY first_name desc; 