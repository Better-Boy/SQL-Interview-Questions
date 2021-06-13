SELECT  m.employee_id     AS employee_id
       ,m.name            AS name
       ,COUNT(*)          AS reports_count
       ,round(AVG(e.age)) AS average_age
FROM Employees e
JOIN Employees m
ON e.reports_to = m.employee_id
GROUP BY  1
ORDER BY 1;