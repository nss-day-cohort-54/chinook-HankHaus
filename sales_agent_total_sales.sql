select e.FirstName || " " || e.LastName as FullName,
sum(i.total) as AgentsTotalSales
from Invoice as i 
join customer as c 
on c.CustomerId = i.CustomerId
join Employee as e 
on c.SupportRepId = e.EmployeeId
group by e.employeeId
