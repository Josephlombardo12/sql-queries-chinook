-- Challenge 4: Sales Support Agents and their customers
SELECT 
    e.FirstName || ' ' || e.LastName AS EmployeeName,
    e.Title,
    COUNT(c.CustomerId) AS TotalCustomers
FROM Employee AS e
JOIN Customer AS c ON e.EmployeeId = c.SupportRepId
WHERE e.Title = 'Sales Support Agent'
GROUP BY e.EmployeeId, e.FirstName, e.LastName, e.Title
ORDER BY TotalCustomers DESC;
