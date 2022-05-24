SELECT c.FirstName, c.LastName, i.InvoiceId, i.InvoiceDate, i.BillingCountry
FROM Customer c
JOIN Invoice i
on i.CustomerId = c.CustomerId
WHERE Country = "Brazil";