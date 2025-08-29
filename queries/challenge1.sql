-- Challenge 1: Top 5 customers by total spending
SELECT 
    c.FirstName || ' ' || c.LastName AS CustomerName,
    SUM(i.Total) AS TotalSpent
FROM Customer AS c
JOIN Invoice AS i ON c.CustomerId = i.CustomerId
GROUP BY c.CustomerId
ORDER BY TotalSpent DESC
LIMIT 5;
