SELECT  Total, 
        CCountry,
        CFirstName, 
        CLastName, 
        e.FirstName AS AFirstName, 
        e.LastName AS ALastName
FROM
(
    SELECT  i.InvoiceId,
            i.Total,
            c.Country AS CCountry,
            c.FirstName AS CFirstName,
            c.LastName AS CLastName,
            c.SupportRepId
    FROM Invoice as i
    JOIN Customer as c
    ON i.CustomerId = c.CustomerId
)
JOIN Employee AS e
ON SupportRepId = e.EmployeeId