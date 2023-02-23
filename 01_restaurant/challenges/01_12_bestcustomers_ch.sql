-- Identify a few customers who have ordered delivery
-- from the restaurant the most often, so we can send
-- them a promotional coupon. first name, last name, email

SELECT COUNT(o.OrderID) AS OrderCount, c.FirstName,
c.LastName, c.Email
FROM Orders o
JOIN Customers c ON c.CustomerID = o.CustomerID
GROUP BY o.CustomerID
ORDER BY OrderCount DESC
LIMIT 15;
