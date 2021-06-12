SELECT  id
       ,SUM(if(month='Jan',revenue,null)) Jan_Revenue
       ,SUM(if(month='Feb',revenue,null)) Feb_Revenue
       ,SUM(if(month='Mar',revenue,null)) Mar_Revenue
       ,SUM(if(month='Apr',revenue,null)) Apr_Revenue
       ,SUM(if(month='May',revenue,null)) May_Revenue
       ,SUM(if(month='Jun',revenue,null)) Jun_Revenue
       ,SUM(if(month='Jul',revenue,null)) Jul_Revenue
       ,SUM(if(month='Aug',revenue,null)) Aug_Revenue
       ,SUM(if(month='Sep',revenue,null)) Sep_Revenue
       ,SUM(if(month='Oct',revenue,null)) Oct_Revenue
       ,SUM(if(month='Nov',revenue,null)) Nov_Revenue
       ,SUM(if(month='Dec',revenue,null)) Dec_Revenue
FROM Department
GROUP BY  1;