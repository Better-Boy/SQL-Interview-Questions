SELECT  round(imm.immediate_orders / COUNT(*) * 100,2) AS immediate_percentage
FROM 
(
	SELECT  COUNT(*) AS immediate_orders
	FROM Delivery
	WHERE order_date = customer_pref_delivery_date 
) imm, Delivery d;