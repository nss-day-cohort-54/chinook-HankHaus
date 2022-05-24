select e.Firstname || " " || e.LastName AS full_name,
case when count(c.SupportRepId) isnull then 0
    when count(c.SupportRepId) >= 0 then count(c.SupportRepId) end as CustomerCount
from Employee as e
left join customer c
on c.SupportRepId = e.EmployeeId
group by e.EmployeeId