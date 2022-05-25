select Country, max(mycount) Count
from (
select i.BillingCountry Country, sum(i.Total) mycount
from Invoice i 
group by i.BillingCountry
)