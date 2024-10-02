# Library Management System (MSSQL)

This project is a **Library Management System** built using **MSSQL**. It manages the library's data, including information about authors, books, loans, and users.

## Features

- **Authors**: Store and manage author details (e.g., name, birthdate, nationality).
- **Books**: Track books in the library, including title, genre, author, and availability.
- **Loans**: Manage loans, recording which user borrowed which book and the return status.
- **Users**: Maintain information about library users, including name and contact information.

## Database Structure

The database consists of the following main tables:

1. **Authors**: Stores details of book authors.
   - `ID` (Primary Key)
   - `FirstName`
   - `LastName`
   - `Birthdate`
   - `Nationality`

2. **Books**: Manages information about the books available in the library.
   - `ID` (Primary Key)
   - `Title`
   - `AuthorID` (Foreign Key from Authors)
   - `PublishedYear`
   - `Genre`
   - `AvailableCopies`

3. **Loans**: Tracks which users have borrowed which books.
   - `ID` (Primary Key)
   - `UserID` (Foreign Key from Users)
   - `BookID` (Foreign Key from Books)
   - `LoanDate`
   - `ReturnDate`

4. **Users**: Contains information about the library's users.
   - `ID` (Primary Key)
   - `FirstName`
   - `LastName`
   - `Email`
   - `Phone`
   - `Address`

## How to Use

1. Clone the repository to your local machine:
   ```bash
   git clone https://github.com/your-username/library-management-db.git
2. Open your SQL management tool (e.g., SQL Server Management Studio) and connect to your MSSQL database.
3. Run the provided SQL scripts to create the tables in your database.
4. Populate the tables with sample data and start managing authors, books, users, and loans.

## Requirements

  - MSSQL: Ensure that MSSQL is installed on your machine.
  - SQL Management Tool: Use any SQL management tool like SQL Server Management Studio (SSMS) to execute the provided SQL scripts.
