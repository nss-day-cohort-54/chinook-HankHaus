SELECT a.name, SUM(il.TrackId) AS SellOuts
FROM Artist a
JOIN Album alb
    ON alb.ArtistId = a.ArtistId
JOIN InvoiceLine il
    ON il.TrackId = t.TrackId
JOIN Track t
on alb.AlbumId = t.AlbumId
Group BY a.Name
ORDER BY SellOuts DESC
LIMIT 3