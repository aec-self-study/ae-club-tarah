select c.id as cust_id
, c.name as cust_name
, c.email as cust_email
, count(distinct o.id) as order_ct
, min(o.created_at) as first_order_at
from `analytics-engineers-club.coffee_shop.customers` as c
join `analytics-engineers-club.coffee_shop.orders` as o
on c.id = o.customer_id
group by 1,2,3
order by first_order_at limit 5