# Write a SQL query to find all the defenders who scored a goal for their teams 


SELECT player_name,
       jersey_no,
       country_name,
       age,
       playing_club
FROM goal_details a
JOIN player_mast b ON a.player_id=b.player_id
JOIN soccer_country c ON a.team_id=c.country_id
WHERE posi_to_play='DF'
ORDER BY player_name;