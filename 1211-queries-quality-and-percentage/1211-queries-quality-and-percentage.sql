# # Write your MySQL query statement below
select query_name, Round(avg(rating/position),2) as quality, Round(avg(case when rating<3 then 1.00 else 0.00 end)*100,2) as poor_query_percentage
from queries
where query_name is not null
group by query_name
