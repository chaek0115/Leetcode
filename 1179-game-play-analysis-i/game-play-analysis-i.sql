/* Write your PL/SQL query statement below */
SELECT player_id, TO_CHAR(min(event_date),'YYYY-MM-DD') as first_login
FROM Activity
GROUP BY player_id;

