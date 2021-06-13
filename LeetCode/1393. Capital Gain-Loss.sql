SELECT  stock_name
       ,SUM(if(operation="Sell",price,-price)) capital_gain_loss
FROM Stocks
GROUP BY  1