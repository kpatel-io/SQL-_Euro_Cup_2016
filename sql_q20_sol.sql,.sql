# . Write a SQL query to find the substitute players who came into the field in the first half of play, within a normal play schedule.

SELECT match_no,country_name,player_name,jersey_no,time_in_out
FROM player_in_out a
JOIN player_mast b ON a.player_id=b.player_id
JOIN soccer_country c ON b.team_id=c.country_id
WHERE a.in_out='I'
AND a.play_schedule='NT'
AND a.play_half=1
ORDER BY match_no;