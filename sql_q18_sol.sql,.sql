# Write a SQL query to find the highest number of foul cards given in one match.

SELECT match_no, Booked FROM (
SELECT match_no,COUNT(*) Booked 
FROM player_booked  
GROUP BY match_no) M1 where Booked=(
SELECT MAX(MX1) 
FROM (SELECT match_no,COUNT(*) MX1 
FROM player_booked  
GROUP BY match_no) M2);

