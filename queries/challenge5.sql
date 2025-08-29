-- Challenge 5: Best-selling genre (by number of tracks sold)
SELECT g.Name AS Genre,
       SUM(il.Quantity) AS TracksSold
FROM Genre AS g
JOIN Track AS t ON g.GenreId = t.GenreId
JOIN InvoiceLine AS il ON t.TrackId = il.TrackId
GROUP BY g.GenreId, g.Name
ORDER BY TracksSold DESC;

-- Alternative version: Best-selling genre (by revenue)
SELECT g.Name AS Genre,
       SUM(il.UnitPrice * il.Quantity) AS TotalRevenue
FROM Genre AS g
JOIN Track AS t ON g.GenreId = t.GenreId
JOIN InvoiceLine AS il ON t.TrackId = il.TrackId
GROUP BY g.GenreId, g.Name
ORDER BY TotalRevenue DESC;
