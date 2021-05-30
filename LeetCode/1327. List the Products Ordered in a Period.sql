SELECT  product_name AS PRODUCT_NAME
       ,SUM(unit)    AS UNIT
FROM Orders o
INNER JOIN Products p using
(product_id
)
WHERE year(order_date) = 2020 
AND month(order_date) = 2 
GROUP BY  1
HAVING UNIT >= 100;