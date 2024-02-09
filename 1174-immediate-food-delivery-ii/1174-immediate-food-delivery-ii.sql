# Write your MySQL query statement below
select Round(sum(case when order_date=customer_pref_delivery_date then 1 else 0 end)*100/count(distinct customer_id),2) as immediate_percentage from delivery where(customer_id,order_date) 
IN (select customer_id, min(order_date) from delivery group by customer_id );
