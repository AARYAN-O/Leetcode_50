/* Write your PL/SQL query statement below */

/* we dont always need to create joins for accessing data from 
two tables.It can simply be done using sub queries.  */

select contest_id,round(count(distinct user_id)*100/(select count(user_id) from users),2) as percentage
from Register
group by contest_id
order by percentage desc,contest_id
