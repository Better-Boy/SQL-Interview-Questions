SELECT  lower(trim(product_name)) product_name
       ,date_format(sale_date,"%Y-%m") sale_date
       ,COUNT(*) total
FROM Sales
GROUP BY  1
         ,2
ORDER BY 1
         ,2;