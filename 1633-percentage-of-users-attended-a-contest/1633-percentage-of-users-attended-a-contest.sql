# Write your MySQL query statement below
select contest_id,
    Round((count(distinct user_id)*100/(select count(user_id) from users)),2) 

as percentage from Register 
Group by contest_id
order by percentage desc, contest_id;