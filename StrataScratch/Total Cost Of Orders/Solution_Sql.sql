SELECT  c.id
       ,c.first_name
       ,SUM(o.order_cost)
FROM customers c
INNER JOIN orders o
ON c.id=o.cust_id
GROUP BY  c.id
         ,c.first_name
ORDER BY c.first_name;