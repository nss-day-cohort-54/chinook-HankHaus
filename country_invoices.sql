SELECT c.Country, 
COUNT(c.Country) as InvoiceCount
FROM Invoice i
JOIN Customer c
    ON i.customerid = c.customerid
GROUP BY c.country