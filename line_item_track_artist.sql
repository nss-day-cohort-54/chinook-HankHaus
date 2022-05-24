SELECT i.*, ar.name, t.name
FROM InvoiceLine i
JOIN Track t
    ON i.trackid = t.trackid
JOIN Album a
    ON a.albumid = t.albumid
JOIN Artist ar
    On ar.artistid = a.artistid