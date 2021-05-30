SELECT  date_format(order_date,"%Y-%m") AS month
       ,COUNT(distinct order_id)        AS order_count
       ,COUNT(distinct customer_id)     AS customer_count
FROM Orders
WHERE invoice > 20 
GROUP BY  1;