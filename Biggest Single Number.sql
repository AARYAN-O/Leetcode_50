/* Write your PL/SQL query statement below */

-- when there is only one column, then you can still apply aggregate function and 
-- perform group by on the same column 
-- also when there is a condition where you have to put condition 
-- consisting of the aggregate function, then use having instead of group by 

select max(num) as num from (
    select num
    from MyNumbers
    group by num
    having count(num)=1
    ) 
