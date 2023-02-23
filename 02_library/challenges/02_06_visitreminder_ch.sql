-- Prepare a report of the library patrons
-- who have checked out the fewest books.

SELECT * FROM Loans

SELECT COUNT(l.LoanID) AS CheckOuts,
p.FirstName, p.LastName, p.Email
FROM Loans l
JOIN Patrons p ON l.PatronID = p.PatronID
GROUP BY p.PatronID
ORDER BY CheckOuts
LIMIT 15;