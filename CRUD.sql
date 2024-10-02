--INSERT AUTHORS DATAS (CREATE)
INSERT INTO Authors (FirstName, LastName, Birthdate, Nationality)
VALUES
('Lev', 'Tolstoy', '1828-09-09', 'Rus'),
('Fyodor', 'Dostoyevski', '1821-11-11', 'Rus'),
('Miguel', 'de Cervantes', '1547-09-29', '�spanyol'),
('Jane', 'Austen', '1775-12-16', '�ngiliz'),
('Cengiz', 'Aytmatov', '1928-12-12', 'K�rg�z')

--INSERT BOOKS DATAS (CREATE)
INSERT INTO Books (Title, AuthorID, PublishedYear, Genre, AvailableCopies)
VALUES
('Sava� ve Bar��', 1, 1869, 'Tarih', 5),
('Su� ve Ceza', 2, 1866, 'Klasik', 3),
('Karamazov Karde�ler', 2, 1880, 'Klasik', 4),
('Anna Karenina', 1, 1877, 'Roman', 2),
('�nsan Ne ile Ya�ar', 1, 1885, 'Felsefe', 6),
('Don Ki�ot', 3, 1605, 'Roman', 8),
('Gurur ve �nyarg�', 4, 1813, 'Roman', 7),
('Beyaz Gemi', 5, 1970, 'Roman', 9)

--INSERT USERS DATAS (CREATE)
INSERT INTO Users (FirstName, LastName, Email, Phone, Address)
VALUES
('Ahmet', 'Y�lmaz', 'ahmet.yilmaz@example.com', '5555555555', '�stanbul, T�rkiye'),
('Mehmet', 'Kara', 'mehmet.kara@example.com', '5555555555', 'Ankara, T�rkiye'),
('Ay�e', 'Demir', 'ayse.demir@example.com', '5555555555', '�zmir, T�rkiye'),
('Fatma', '�elik', 'fatma.celik@example.com', '5555555555', 'Bursa, T�rkiye'),
('Ali', '�ahin', 'ali.sahin@example.com', '5555555555', 'Antalya, T�rkiye');

--INSERT LOANS DATAS (CREATE)
INSERT INTO Loans (UserID, BookID, LoanDate, ReturnDate)
VALUES
(1, 1, '2024-09-01', '2024-09-15'),  -- Ahmet Y�lmaz, Sava� ve Bar��
(2, 2, '2024-09-03', '2024-09-17'),  -- Mehmet Kara, Su� ve Ceza
(3, 3, '2024-09-05', '2024-09-19'),  -- Ay�e Demir, Karamazov Karde�ler
(4, 4, '2024-09-07', '2024-09-21'),  -- Fatma �elik, Anna Karenina
(5, 5, '2024-09-09', '2024-09-23');  -- Ali �ahin, �nsan Ne ile Ya�ar


--READ DATAS
SELECT * FROM Books

--UPDATE
UPDATE Books SET AvailableCopies = 4
WHERE ID = 1

--DELETE
DELETE FROM Loans
WHERE ID = 3
