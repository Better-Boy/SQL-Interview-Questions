SELECT  COUNT(distinct facility_name) AS no_facilities
       ,COUNT(*)                      AS no_inspections
FROM los_angeles_restaurant_health_inspections
GROUP BY  facility_zip
ORDER BY no_inspections desc;