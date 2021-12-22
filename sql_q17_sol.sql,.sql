# Write a SQL query to find the country where the most assistant referees come from, and the count of the assistant referees

SELECT country_name,
       count(DISTINCT match_no)
FROM match_details a
JOIN asst_referee_mast c ON a.ass_ref=c.ass_ref_id
JOIN soccer_country b ON c.country_id=b.country_id
GROUP BY country_name
HAVING count(DISTINCT match_no)=
  (SELECT max(mm)
   FROM
     (SELECT count(DISTINCT match_no) mm
      FROM match_details a
      JOIN asst_referee_mast c ON a.ass_ref=c.ass_ref_id
      JOIN soccer_country b ON c.country_id=b.country_id
      GROUP BY country_name) hh);