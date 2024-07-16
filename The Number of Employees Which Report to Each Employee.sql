/* Write your PL/SQL query statement below */

-- whenever doing joins or inner joins just copy paste the table in an excel
-- to see what is happening 

select e1.employee_id,e1.name,count(e2.reports_to) as reports_count,
round(avg(e2.age)) as average_age
from Employees e1 
inner join Employees e2
on e1.employee_id=e2.reports_to
group by e1.employee_id,e1.name
order by e1.employee_id

