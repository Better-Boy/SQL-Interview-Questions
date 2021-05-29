SELECT  name
       ,temp.traveled_distance
FROM lyft_users, 
(
	SELECT  user_id
	       ,SUM(distance) AS traveled_distance
	FROM lyft_rides_log
	GROUP BY  user_id
	ORDER BY traveled_distance desc
	LIMIT 10
) temp
WHERE lyft_users.id = temp.user_id; 