select t.Name, sum(il.TrackId) purchases
from InvoiceLine il
join Track t
on il.TrackId = t.TrackId
join Invoice i
on i.InvoiceId = il.InvoiceId
where i.invoiceDate like '%2013%'
group by t.Name
order by purchases DESC
LIMIT 10