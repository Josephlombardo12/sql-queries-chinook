-- Challenge 3: 10 longest tracks
SELECT 
    t.Name AS TrackTitle,
    a.Title AS AlbumTitle,
    ar.Name AS ArtistName,
    t.Milliseconds,
    ROUND(t.Milliseconds / 60000.0, 2) AS DurationMinutes
FROM Track AS t
JOIN Album AS a ON t.AlbumId = a.AlbumId
JOIN Artist AS ar ON a.ArtistId = ar.ArtistId
ORDER BY t.Milliseconds DESC
LIMIT 10;
