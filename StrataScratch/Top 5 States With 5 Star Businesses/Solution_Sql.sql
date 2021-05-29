SELECT  state
       ,COUNT(*) AS n_businesses
FROM yelp_business
WHERE stars = 5 
GROUP BY  state
ORDER BY COUNT(*) desc
         ,state
LIMIT 5;