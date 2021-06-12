SELECT  extra                   AS report_reason
       ,COUNT(distinct post_id) AS report_count
FROM Actions
WHERE action_date = "2019-07-04" 
AND action = "report" 
AND extra is not null 
GROUP BY  1
HAVING COUNT(distinct post_id) > 0
ORDER BY 1;