with big as 
(
    select name , population ,area
    from World
    where area >=3000000 or population>=25000000
)

select * from big
