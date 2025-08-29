-- Challenge 2: Top 5 artists by total revenue
SELECT 
    a.Name AS Artist,
    SUM(il.UnitPrice * il.Quantity) AS TotalRevenue
FROM Artist AS a
JOIN Album AS al ON a.ArtistId = al.ArtistId
JOIN Track AS t ON al.AlbumId = t.AlbumId
JOIN InvoiceLine AS il ON t.TrackId = il.TrackId
GROUP BY a.ArtistId, a.Name
ORDER BY TotalRevenue DESC
LIMIT 5;
