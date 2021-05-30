SELECT  seller_id
FROM 
(
	SELECT  seller_id
	       ,rank() over(order by SUM(price) desc) AS rnk
	FROM Sales
	GROUP BY  1
) a
WHERE rnk = 1; 