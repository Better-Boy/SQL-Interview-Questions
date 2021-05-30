 WITH t AS(
SELECT  o.customer_id
       ,c.name
       ,DATE_FORMAT(o.order_date,"%Y-%m") AS order_date
       ,SUM(o.quantity*p.price)           AS sales
FROM Orders o
JOIN Customers c
ON o.customer_id = c.customer_id
JOIN Product p
ON o.product_id = p.product_id
WHERE o.order_date BETWEEN '2020-06-01' AND '2020-07-31' 
GROUP BY  o.customer_id
         ,DATE_FORMAT(o.order_date,"%Y-%m") )
SELECT  customer_id
       ,name
FROM t
GROUP BY  customer_id
         ,name
HAVING SUM(sales >= 100) = 2