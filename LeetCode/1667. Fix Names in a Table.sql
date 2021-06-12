SELECT  user_id
       ,concat(upper(left(name,1)),lower(substr(name,2))) name
FROM Users
ORDER BY 1;