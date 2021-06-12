SELECT  ad_id
       ,coalesce(round((SUM(if(action="Clicked",1,0))/(SUM(if(action="Clicked",1,0)) + SUM(if(action="Viewed",1,0)))) * 100,2),0.00) ctr
FROM Ads
GROUP BY  1
ORDER BY 2 desc
         ,1;