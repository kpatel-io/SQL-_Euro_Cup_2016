# Write a SQL query that returns the total number of goals scored by each position on each country’s team. Do not include positions which scored no goals

SELECT match_no,country_name,goal_score
FROM match_details a
JOIN soccer_country b
ON a.team_id=b.country_id
WHERE decided_by='N'
ORDER BY match_no;