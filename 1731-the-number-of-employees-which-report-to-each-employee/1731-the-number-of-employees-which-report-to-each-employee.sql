# Write your MySQL query statement below 
select e.employee_id, e.name, count(er.reports_to) as reports_count, Round(avg(er.age)) as average_age
from employees e inner join employees er 
on e.employee_id=er.reports_to 
group by e.employee_id, e.name
order by e.employee_id

#where e.employee_id 
#in (select reports_to from employees where reports_to is not null)

 #where (er.reports_to) in (select reports_to from employees) and er.reports_to=e.employee_id) 