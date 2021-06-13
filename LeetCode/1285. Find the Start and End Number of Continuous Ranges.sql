SELECT  MIN(log_id) start_id
       ,MAX(log_id) end_id
FROM 
(
	SELECT  log_id
	       ,rank() over(order by log_id) num
	FROM Logs
) a
GROUP BY  log_id - num;