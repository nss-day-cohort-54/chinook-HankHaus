select t.Name, sum(il.TrackId) purchases
from InvoiceLine il
join Track t
on il.TrackId = t.TrackId
join Invoice i
on i.InvoiceId = il.InvoiceId
group by t.Name
order by purchases DESC
LIMIT 5