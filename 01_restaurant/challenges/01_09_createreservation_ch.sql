-- Create a reservation for a customer who may or may not
-- already be listed in our Customers table.

-- Use the following information:
-- Sam McAdams (smac@kinetecoinc.com) 555-555-1232
--for 5 people on August 12, 2022 at 6PM (18:00)

SELECT * FROM Customers
WHERE Email = 'smac@kinetecoinc.com';

INSERT INTO Customers (FirstName, LastName, Email, Phone)
VALUES ('Sam', 'McAdams', 'smac@kinetecoinc.com', '555-555-1232');

INSERT INTO Reservations (CustomerID, Date, PartySize)
VALUES (102, '2022-08-12 18:00:00', 5);

SELECT c.FirstName, c.LastName, Date, PartySize 
FROM Reservations r
JOIN Customers c ON r.CustomerID = c.CustomerID
WHERE r.CustomerID = 102;

