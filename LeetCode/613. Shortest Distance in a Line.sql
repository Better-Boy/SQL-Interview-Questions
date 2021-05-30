SELECT  MIN(abs(t2.x - t1.x)) AS shortest
FROM point t1
CROSS JOIN point t2
WHERE t1.x != t2.x; 


-- LEAD FUNCTION
 with cte AS (
SELECT  x
       ,lead(x) over (order by x) as x_next
FROM point )
SELECT  MIN(x_next - x) AS shortest
FROM cte