# Write your MySQL query statement below
# select distinct p1.product_id, IFNULL(p2.price,10) as price from products p1
# left join( select product_id, new_price, change_date,
#           first_value(new_price) over (partition by product_id                              order by change_date desc)
#           as price from Products where change_date<='2019-0-16') as p2
# on p1.product_id=p2.product_id;


SELECT DISTINCT a.product_id, ifnull(b.price, 10) as price
FROM Products a
LEFT JOIN
(SELECT product_id, new_price, change_date, 
FIRST_VALUE(new_price) OVER (PARTITION BY product_id ORDER BY change_date DESC) price
FROM Products
WHERE change_date <= '2019-08-16') as b ON a.product_id = b.product_id
