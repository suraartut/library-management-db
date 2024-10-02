-- creating authors table
CREATE TABLE Authors (
	ID INT PRIMARY KEY IDENTITY(1,1),
	FirstName NVARCHAR(50),
	LastName NVARCHAR(50),
	Birthdate DATE,
	Nationality NVARCHAR(50)
)

-- creating books table
CREATE TABLE Books (
	ID INT PRIMARY KEY IDENTITY(1,1),
	Title NVARCHAR(50),
	AuthorId INT FOREIGN KEY REFERENCES Authors(ID),
	PublishedYear INT,
	Genre NVARCHAR(50),
	AvailableCopies INT
)

-- creating users table
CREATE TABLE Users (
	ID INT PRIMARY KEY IDENTITY(1,1),
	FirstName NVARCHAR(50),
	LastName NVARCHAR(50),
	Email NVARCHAR(100),
	Phone NVARCHAR(15),
	Address NVARCHAR(100)
)

--creating loans table
CREATE TABLE Loans (
	ID INT PRIMARY KEY IDENTITY(1,1),
	UserID INT FOREIGN KEY REFERENCES Users(ID),
	BookID INT FOREIGN KEY REFERENCES Books(ID),
	LoanDate DATE,
	ReturnDate DATE
)