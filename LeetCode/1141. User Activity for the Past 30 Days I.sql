 with tmp AS (
SELECT  *
FROM Activity
WHERE DATEDIFF("2019-07-27", activity_date) < 30) 
SELECT  activity_date day
       ,COUNT(distinct user_id) active_users
FROM tmp
GROUP BY  1
ORDER BY 1;