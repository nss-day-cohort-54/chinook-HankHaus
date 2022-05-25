SELECT mt.name, SUM(il.TrackId) AS Number
FROM InvoiceLine il 
JOIN Track t 
    ON il.TrackId = t.TrackId
JOIN MediaType mt 
    ON t.MediaTypeId = mt.MediaTypeId
GROUP BY mt.name
ORDER BY Number DESC
LIMIT 1

