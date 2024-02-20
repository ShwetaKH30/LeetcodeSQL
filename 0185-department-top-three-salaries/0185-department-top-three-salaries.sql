# Write your MySQL query statement below
select d.name as department, e.name as Employee, salary
 from employee e left join department d
 on e.departmentid = d.id 
 where 3>(select count(distinct e1.salary) from employee e1
          where e1.salary>e.salary and e.departmentid=e1.departmentid)