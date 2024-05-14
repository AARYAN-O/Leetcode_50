select b.unique_id , s.name
from Employees s
left join EmployeeUNI b
on s.id=b.id
