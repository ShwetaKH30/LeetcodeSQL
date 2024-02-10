# Write your MySQL query statement below
select
  Round(Count(distinct player_id) / (Select Count(DISTINCT player_id) FROM Activity), 2) as fraction
from Activity
where (player_id, DATE_SUB(event_date, INTERVAL 1 DAY))
  IN (
    select player_id, MIN(event_date) AS first_login from Activity group by player_id
  )
  --without join