SELECT  sell_date
       ,COUNT(distinct product)                         AS num_sold
       ,group_concat(distinct product ORDER BY product) AS products
FROM Activities
GROUP BY  1;