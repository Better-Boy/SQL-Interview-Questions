SELECT  facebook_employees.location
       ,AVG(facebook_hack_survey.popularity)
FROM facebook_employees
INNER JOIN facebook_hack_survey
ON facebook_employees.id = facebook_hack_survey.employee_id
GROUP BY  facebook_employees.location;