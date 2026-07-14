-- practise1
select max(cost_of_product) as 2nd_highest_value
from data_of_orders
where not cost_of_product=(select max(cost_of_product) as 2nd_highest_value
						   from data_of_orders);
                           
-- practise2
select data_of_customers.education, count(data_of_orders.order_id) as number_of_orders
from data_of_orders
join data_of_customers
on data_of_orders.customer_id=data_of_customers.customer_id
group by education
order by number_of_orders desc
limit 3;




