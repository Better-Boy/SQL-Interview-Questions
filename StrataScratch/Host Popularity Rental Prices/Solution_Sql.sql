WITH hosts AS
  (SELECT concat(price, room_type, host_since, zipcode, number_of_reviews) AS host_id,
          number_of_reviews,
          price
   FROM airbnb_host_searches
   GROUP BY 1,2,3)
SELECT host_popularity AS host_pop_rating,
       min(price) AS min_price,
       avg(price) AS avg_price,
       max(price) AS max_price
FROM
  (SELECT CASE
              WHEN number_of_reviews = 0 THEN 'New'
              WHEN number_of_reviews BETWEEN 1 AND 5 THEN 'Rising'
              WHEN number_of_reviews BETWEEN 6 AND 15 THEN 'Trending Up'
              WHEN number_of_reviews BETWEEN 16 AND 40 THEN 'Popular'
              WHEN number_of_reviews > 40 THEN 'Hot'
          END AS host_popularity,
          price
   FROM hosts) a
GROUP BY host_pop_rating