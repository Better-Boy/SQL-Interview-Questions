SELECT  owner_name
       ,pe_description
FROM los_angeles_restaurant_health_inspections
WHERE lower(owner_name) like '%bakery%' 
AND lower(pe_description) like '%low%risk%'; 