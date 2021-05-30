SELECT  name                                 AS warehouse_name
       ,SUM(units * Width * Length * Height) AS volume
FROM Products p
INNER JOIN Warehouse w
ON p.product_id = w.product_id
GROUP BY  1;