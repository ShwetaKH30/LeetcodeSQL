# Write your MySQL query statement below
select case when id=(select Max(id) as id from seat) and Mod(id,2)=1 then id
when Mod(id,2)=1 then id+1
else
id-1 end 
as id, student from seat order by id;