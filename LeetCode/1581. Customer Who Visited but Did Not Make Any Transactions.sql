SELECT  customer_id
       ,COUNT(*) AS count_no_trans
FROM Visits v
LEFT JOIN Transactions t
ON v.visit_id = t.visit_id
WHERE amount is null 
GROUP BY  1;