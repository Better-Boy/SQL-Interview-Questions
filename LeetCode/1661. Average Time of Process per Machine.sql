SELECT  machine_id
       ,round((SUM(if(activity_type = 'end',timestamp,0)) - SUM(if(activity_type = 'start',timestamp,0))) / COUNT(distinct process_id),3) AS processing_time
FROM Activity
GROUP BY  1;