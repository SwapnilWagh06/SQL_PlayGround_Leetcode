# Write your MySQL query statement below
select player_id,Min(event_date)first_login from Activity GROUP BY player_id ORDER BY player_id