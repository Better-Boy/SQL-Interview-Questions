SELECT  name        AS NAME
       ,SUM(amount) AS BALANCE
FROM Transactions t
INNER JOIN Users u
ON u.account = t.account
GROUP BY  t.account
HAVING balance > 10000;