/* Write your PL/SQL query statement below */

-- the most imp thing to remember here is that listagg is an aggregate function.
-- when distinct is used , it is applied to each and every column in the select statment
-- within group refers to the list of values that are present inside listagg
select substr(sell_date,1,10) as sell_date,
count(distinct product) as num_sold,listagg(product,',') within group(order by sell_date) as products
from (select distinct * from Activities)
group by sell_date
