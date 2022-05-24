select max(TotalSales) as topSales,
FullName
from (
select e.FirstName || " " || e.LastName as FullName,
sum(i.Total) as TotalSales
from Employee as e
join customer as c
on e.EmployeeId = c.SupportRepId
join Invoice as i
on c.CustomerId = i.CustomerId
where i.InvoiceDate like '%2009%'
group by e.EmployeeId
)