# Write your MySQL query statement below
Select "Low Salary" as category, count(*) accounts_count from accounts 
where income <20000
Union
Select "Average Salary" as category, count(*) accounts_count from accounts
where income between 20000 and 50000
Union 
Select "High Salary" as category, count(*) accounts_count from accounts
where income> 50000
