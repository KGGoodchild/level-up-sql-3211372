-- Register a customer for our Anniversary event.

-- The customer 'atapley2j@kinetecoinc.com' will be in
-- attendance, and will bring 3 friends.

SELECT CustomerID FROM Customers
WHERE Email = 'atapley2j@kinetecoinc.com';

INSERT INTO CustomerResponse (CustomerID, RSVP)
VALUES ((SELECT CustomerID 
FROM Customers
WHERE Email = 'atapley2j@kinetecoinc.com'), 4);

SELECT * FROM CustomerResponse;