/* Write your PL/SQL query statement below */

select p.product_name, sum(o.unit) as unit
from products p
right join orders o
on p.product_id=o.product_id
where extract(month from order_date)=02 and extract(year from order_date)=2020
group by p.product_name
having sum(o.unit)>=100

