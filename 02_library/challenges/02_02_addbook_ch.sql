-- Add books to the library database.

-- Title: Dracula
-- Author: Bram Stoker
-- Published: 1897
-- ID Number: 4819277482

-- Title: Gulliver’s Travels into Several Remote Nations of the World
-- Author: Jonathan Swift
-- Published: 1729
-- ID Number: 4899254401

INSERT INTO Books (Title, Author, Published, Barcode)
VALUES ('Dracula', 'Bram Stoker', 1987, 4819277482),
('Gulliver’s Travels into Several Remote Nations of the World',
'Jonathan Swift', 1729, 4899254401);

SELECT * FROM Books
WHERE Barcode = 4819277482 OR Barcode = 4899254401;
--OR
SELECT * FROM Books
ORDER BY BookID DESC
LIMIT 5;