SELECT  sale_date SALE_DATE
       ,SUM(if(fruit="apples",sold_num,-sold_num)) DIFF
FROM Sales
GROUP BY  sale_date
ORDER BY 1