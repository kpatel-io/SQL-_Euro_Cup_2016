# Write a SQL query to find referees and the number of matches they worked in each venue

SELECT c.referee_name,
       b.country_name,
       d.venue_name,
       count(a.match_no)
FROM match_mast a
JOIN referee_mast c ON a.referee_id=c.referee_id
JOIN soccer_country b ON c.country_id=b.country_id
JOIN soccer_venue d ON a.venue_id=d.venue_id
GROUP BY c.referee_name,
         country_name,
         venue_name
ORDER BY referee_name;

