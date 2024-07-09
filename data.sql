-- data.sql

-- Insert sample data into Authors table
INSERT INTO Authors (AuthorID, Name, BirthDate) VALUES
(1, 'J.K. Rowling', '1965-07-31'),
(2, 'George Orwell', '1903-06-25'),
(3, 'J.R.R. Tolkien', '1892-01-03')
ON CONFLICT (AuthorID) DO NOTHING;

-- Insert sample data into Genres table
INSERT INTO Genres (GenreID, GenreName) VALUES
(1, 'Fantasy'),
(2, 'Dystopian'),
(3, 'Adventure')
ON CONFLICT (GenreID) DO NOTHING;

-- Insert sample data into Books table
INSERT INTO Books (BookID, Title, AuthorID, GenreID, PublishedYear, AvailableCopies) VALUES
(1, 'Harry Potter and the Philosopher''s Stone', 1, 1, 1997, 5),
(2, '1984', 2, 2, 1949, 3),
(3, 'The Hobbit', 3, 3, 1937, 2)
ON CONFLICT (BookID) DO NOTHING;

-- Insert sample data into Members table
INSERT INTO Members (MemberID, Name, MembershipDate) VALUES
(1, 'Alice Johnson', '2022-01-15'),
(2, 'Bob Smith', '2022-02-20')
ON CONFLICT (MemberID) DO NOTHING;

-- Insert sample data into Transactions table
INSERT INTO Transactions (TransactionID, BookID, MemberID, BorrowDate, ReturnDate) VALUES
(1, 1, 1, '2023-06-01', '2023-06-15'),
(2, 2, 2, '2023-06-05', NULL)
ON CONFLICT (TransactionID) DO NOTHING;
