SELECT  MAX(num) num
FROM 
(
	SELECT  num
	FROM my_numbers
	GROUP BY  num
	HAVING COUNT(*) = 1
) p;