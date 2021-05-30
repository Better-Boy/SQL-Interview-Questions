SELECT  customer_number
FROM 
(
	SELECT  customer_number
	FROM Orders
	GROUP BY  1
	ORDER BY COUNT(*) desc
	LIMIT 1
) a;