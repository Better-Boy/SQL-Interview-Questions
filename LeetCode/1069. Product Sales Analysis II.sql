SELECT  p.product_id
       ,SUM(quantity) AS total_quantity
FROM Product p
INNER JOIN Sales s
ON p.product_id = s.product_id
GROUP BY  1;