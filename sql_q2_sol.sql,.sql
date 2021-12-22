#Write a SQL query to find the number of matches that were won by penalty shootout.
SELECT COUNT(DISTINCT match_no) 
FROM penalty_shootout;