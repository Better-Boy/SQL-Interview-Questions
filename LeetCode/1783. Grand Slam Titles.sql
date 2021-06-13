SELECT  player_id
       ,player_name
       ,SUM(player_id=c.Wimbledon) + SUM(player_id=c.Fr_open) + SUM(player_id=c.US_open) + SUM(player_id=c.Au_open) grand_slams_count
FROM Players p
INNER JOIN Championships c
ON p.player_id IN (c.Wimbledon, c.Fr_open, c.US_open, c.Au_open)
GROUP BY  player_id