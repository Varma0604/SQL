-- schema.sql

-- Create Authors table
CREATE TABLE IF NOT EXISTS Authors (
    AuthorID INT PRIMARY KEY,
    Name VARCHAR(100),
    BirthDate DATE
);

-- Create Genres table
CREATE TABLE IF NOT EXISTS Genres (
    GenreID INT PRIMARY KEY,
    GenreName VARCHAR(50)
);

-- Create Books table
CREATE TABLE IF NOT EXISTS Books (
    BookID INT PRIMARY KEY,
    Title VARCHAR(200),
    AuthorID INT,
    GenreID INT,
    PublishedYear INT,
    AvailableCopies INT,
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID),
    FOREIGN KEY (GenreID) REFERENCES Genres(GenreID)
);

-- Create Members table
CREATE TABLE IF NOT EXISTS Members (
    MemberID INT PRIMARY KEY,
    Name VARCHAR(100),
    MembershipDate DATE
);

-- Create Transactions table
CREATE TABLE IF NOT EXISTS Transactions (
    TransactionID INT PRIMARY KEY,
    BookID INT,
    MemberID INT,
    BorrowDate DATE,
    ReturnDate DATE,
    FOREIGN KEY (BookID) REFERENCES Books(BookID),
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID)
);
