SELECT  neighbourhood
       ,AVG(beds) AS n_beds_avg
FROM airbnb_search_details
GROUP BY  neighbourhood
HAVING MIN(beds) >= 3
ORDER BY n_beds_avg desc;