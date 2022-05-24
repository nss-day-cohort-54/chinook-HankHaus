SELECT e.FirstName, e.LastName, InvoiceId
FROM
(
    SELECT  i.InvoiceId,
            c.SupportRepId
    FROM Invoice as i
    JOIN Customer as c
    ON i.CustomerId = c.CustomerId
)
JOIN Employee AS e
ON SupportRepId = e.EmployeeId;