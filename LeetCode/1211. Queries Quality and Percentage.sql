SELECT  query_name
       ,round(SUM(rating / position) / COUNT(*),2)        AS quality
       ,round(SUM(if(rating < 3,1,0)) * 100 / COUNT(*),2) AS poor_query_percentage
FROM Queries
GROUP BY  1