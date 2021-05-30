SELECT  contest_id
       ,ROUND(COUNT(*) * 100/(
SELECT  COUNT(*)
FROM Users), 2) AS percentage
FROM Register
GROUP BY  1
ORDER BY 2 desc
         ,1 asc;