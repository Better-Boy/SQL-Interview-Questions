SELECT  player_id
       ,MIN(event_date) AS first_login
FROM Activity
GROUP BY  1;


-- Using partition by and dense rank
 with temp AS (
SELECT  player_id
       ,event_date                                                        AS first_login
       ,dense_rank() over(partition by player_id ORDER BY event_date asc) AS rnk
FROM Activity )
SELECT  player_id
       ,first_login
FROM temp
WHERE rnk = 1; 