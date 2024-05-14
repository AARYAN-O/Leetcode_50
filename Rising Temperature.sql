/* Whenever we want to compare one value of the table with some other 
value inside the same table use self join*/
/*Datediff function is used to find the difference between two dates*/

select w1.id 
from Weather w1, Weather w2
where (w1.recordDate-w2.recordDate)=1
and w1.temperature > w2.temperature
