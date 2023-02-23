-- Create two reports about book statistics.

-- Report 1: Show how many titles were published 
-- in each year.

SELECT Published, COUNT(DISTINCT(Title)) AS PubCount
FROM Books
GROUP BY Published
ORDER BY PubCount DESC;

-- Report 2: Show the five books that have been
-- checked out the most.

SELECT COUNT(Loans.LoanID) AS CheckedOut, Books.Title 
FROM Loans
JOIN Books ON Loans.BookID = Books.BookID
GROUP BY Books.Title
ORDER BY CheckedOut DESC
LIMIT 5;