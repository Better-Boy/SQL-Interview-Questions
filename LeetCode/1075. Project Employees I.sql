SELECT  project_id
       ,round(AVG(experience_years),2) average_years
FROM Project
INNER JOIN Employee using
(employee_id
)
GROUP BY  1;