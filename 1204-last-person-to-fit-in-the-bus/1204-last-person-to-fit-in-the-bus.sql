# Write your MySQL query statement below
SELECT person_name
FROM (
SELECT *, SUM(weight) OVER (ORDER BY turn) AS total
FROM Queue) as t
WHERE total <=1000
ORDER BY turn desc
LIMIT 1