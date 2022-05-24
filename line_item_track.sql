SELECT i.InvoiceLineId, i.TrackId, t.name FROM InvoiceLine AS i
JOIN Track AS t
ON i.TrackId = t.TrackId