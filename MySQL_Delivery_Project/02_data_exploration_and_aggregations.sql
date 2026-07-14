select * from data_of_orders
where state="Oregon";

select * from data_of_orders
where cost_of_product>500;

select distinct state from data_of_orders; 

select customer_id from data_of_orders;

select * from data_of_orders;

select * from data_of_orders
where sub_category like "s%";

select * from data_of_orders
where sub_category like "_____";

select * from data_of_customers;

insert into data_of_customers
values (32345, 'High School', 'Not married', 'Cat');

delete from data_of_customers
where customer_id=3000;

update data_of_customers
set info_on_pets='Cat'
where customer_id=11001;

select * from data_of_orders
where state="Nevada"
order by customer_age;

select * from data_of_orders
where state="Nevada"
order by customer_age ASC;

select * from data_of_orders
where state="Nevada"
order by customer_age DESC;

/*
MIN   -   returns the smallest value of the selected column
MAX   -   returns the largest value of the selected column
COUNT -   returns the number of rows that matches a specified criteria
AVG   -   returns the average value of a numeric column
SUM   -   returns the total sum of a numeric column
*/

select min(cost_of_product) from data_of_orders;

select max(cost_of_product) from data_of_orders;

select count(*) from data_of_orders;

select count(cost_of_product) from data_of_orders;

select avg(cost_of_product) from data_of_orders;

select sum(cost_of_product) from data_of_orders;

select sum(cost_of_product) from data_of_orders
where year_of_order=2016;

-- nested select
select * from data_of_orders
where cost_of_product=(select min(cost_of_product) from data_of_orders);

-- group by 
select count(*), year_of_order from data_of_orders
group by year_of_order;

select year_of_order, count(*) as number_of_order from data_of_orders
group by year_of_order;

SELECT state, SUM(revenue-opex) as net_profit
FROM data_of_orders
WHERE year_of_order=2016
GROUP BY state
ORDER BY net_profit DESC;

-- having
/*
select
from
where
group by
having
order by
*/
select state, SUM(revenue-opex) as net_profit
from data_of_orders
where year_of_order=2016
group by state
having SUM(revenue-opex)>3000
order by net_profit DESC;
