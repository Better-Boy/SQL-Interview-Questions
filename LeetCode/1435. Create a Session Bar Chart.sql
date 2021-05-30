SELECT  x.bins                 AS BIN
       ,COALESCE(SUM(total),0) AS TOTAL
FROM 
(
	SELECT  "[0-5>" AS bins 
	UNION ALL
	SELECT  "[5-10>" AS bins 
	UNION ALL
	SELECT  "[10-15>" AS bins 
	UNION ALL
	SELECT  "15 or more" AS bins 
) x
LEFT JOIN 
(
	SELECT  bins
	       ,COUNT(*) AS total
	FROM 
	(
		SELECT  CASE WHEN duration < 300 THEN "[0-5>" 
		             WHEN duration < 600 THEN "[5-10>" 
		             WHEN duration < 900 THEN "[10-15>" 
		             WHEN duration >= 900 THEN "15 or more"  ELSE 0 END AS bins
		FROM Sessions 
	) y
	GROUP BY  1
) z
ON x.bins = z.bins
GROUP BY  1