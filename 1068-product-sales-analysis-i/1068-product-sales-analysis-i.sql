# Write your MySQL query statement below
Select product_name, year, price from Sales left join Product on Sales.product_id=Product.product_id Order By year ASC