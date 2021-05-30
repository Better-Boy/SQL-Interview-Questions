SELECT  p.product_id
       ,round((SUM(p.price * s.units)/SUM(s.units)),2) AS average_price
FROM Prices p
JOIN UnitsSold s
ON (p.product_id = s.product_id AND s.purchase_date BETWEEN p.start_date AND p.end_date)
GROUP BY  1;