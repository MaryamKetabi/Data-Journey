-- case
select case when state="California" or state="Nevada" then "group_1"
else "group_2"
end as group_of_state, sum(revenue-opex) as net_profit
from data_of_orders
group by group_of_state;

SELECT CASE WHEN state="California" OR state="Nevada" THEN "group_1"
ELSE "group_2"
END as group_of_state, SUM(revenue-opex) as net_provit
FROM data_of_orders
GROUP BY group_of_state;
