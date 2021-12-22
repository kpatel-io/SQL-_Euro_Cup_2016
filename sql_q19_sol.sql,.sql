# Write a SQL query to find the number of captains who were also goalkeepers.

SELECT count(DISTINCT player_name)
FROM match_captain a
JOIN soccer_country b ON a.team_id=b.country_id
JOIN player_mast c ON a.player_captain=c.player_id
AND posi_to_play='GK';