SELECT  employee_id
       ,if(employee_id % 2 != 0 AND left(name,1) != 'M',salary,0) AS bonus
FROM Employees
ORDER BY employee_id;