SELECT g.gender,
       AVG(review_score) AS avg_score
FROM airbnb_reviews r
INNER JOIN airbnb_guests g ON r.from_user = g.guest_id
WHERE r.from_type = 'guest'
GROUP BY g.gender
ORDER BY avg_score DESC
LIMIT 1