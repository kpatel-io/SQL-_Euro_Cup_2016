# Write a SQL query to find referees and the number of bookings they made for the entire tournament. Sort your answer by the number of bookings in descending order
 
SELECT c.referee_name,
       count(b.match_no)
FROM player_booked a
JOIN match_mast b ON a.match_no=b.match_no
JOIN referee_mast c ON b.referee_id=c.referee_id
GROUP BY referee_name
ORDER BY count(b.match_no) DESC;