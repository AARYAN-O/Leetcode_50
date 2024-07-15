/* Write your PL/SQL query statement below */
-- Each and every column that we are fetching other than the 
-- ones mentioned inside query_name must be one amongst count, sum , max , min , avg
select query_name, round(avg(rating/position),2) as quality,
round(sum(case when rating<3 then 1 else 0 end)*100/count(rating),2) as poor_query_percentage
from Queries
where query_name is not null
group by query_name
