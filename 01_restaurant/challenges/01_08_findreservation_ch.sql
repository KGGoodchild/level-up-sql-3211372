-- Find the reservation information for a customer whose
-- name we aren't quite sure how to spell.

-- Variations of the name include:
-- Stevensen, Stephensen, Stevenson, Stephenson, Stuyvesant
--LIKE keyword?
-- There are four people in the party. Today is June 14th.

SELECT c.FirstName, c.LastName, Date, PartySize 
FROM Reservations r
JOIN Customers c ON r.CustomerID = c.CustomerID
WHERE Date >= '2022-06-14' AND PartySize = 4 
AND c.LastName LIKE 'Ste%';
