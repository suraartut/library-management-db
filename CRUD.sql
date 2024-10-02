--INSERT AUTHORS DATAS (CREATE)
INSERT INTO Authors (FirstName, LastName, Birthdate, Nationality)
VALUES
('Lev', 'Tolstoy', '1828-09-09', 'Rus'),
('Fyodor', 'Dostoyevski', '1821-11-11', 'Rus'),
('Miguel', 'de Cervantes', '1547-09-29', 'Ýspanyol'),
('Jane', 'Austen', '1775-12-16', 'Ýngiliz'),
('Cengiz', 'Aytmatov', '1928-12-12', 'Kýrgýz')

--INSERT BOOKS DATAS (CREATE)
INSERT INTO Books (Title, AuthorID, PublishedYear, Genre, AvailableCopies)
VALUES
('Savaþ ve Barýþ', 1, 1869, 'Tarih', 5),
('Suç ve Ceza', 2, 1866, 'Klasik', 3),
('Karamazov Kardeþler', 2, 1880, 'Klasik', 4),
('Anna Karenina', 1, 1877, 'Roman', 2),
('Ýnsan Ne ile Yaþar', 1, 1885, 'Felsefe', 6),
('Don Kiþot', 3, 1605, 'Roman', 8),
('Gurur ve Önyargý', 4, 1813, 'Roman', 7),
('Beyaz Gemi', 5, 1970, 'Roman', 9)

--INSERT USERS DATAS (CREATE)
INSERT INTO Users (FirstName, LastName, Email, Phone, Address)
VALUES
('Ahmet', 'Yýlmaz', 'ahmet.yilmaz@example.com', '5555555555', 'Ýstanbul, Türkiye'),
('Mehmet', 'Kara', 'mehmet.kara@example.com', '5555555555', 'Ankara, Türkiye'),
('Ayþe', 'Demir', 'ayse.demir@example.com', '5555555555', 'Ýzmir, Türkiye'),
('Fatma', 'Çelik', 'fatma.celik@example.com', '5555555555', 'Bursa, Türkiye'),
('Ali', 'Þahin', 'ali.sahin@example.com', '5555555555', 'Antalya, Türkiye');

--INSERT LOANS DATAS (CREATE)
INSERT INTO Loans (UserID, BookID, LoanDate, ReturnDate)
VALUES
(1, 1, '2024-09-01', '2024-09-15'),  -- Ahmet Yýlmaz, Savaþ ve Barýþ
(2, 2, '2024-09-03', '2024-09-17'),  -- Mehmet Kara, Suç ve Ceza
(3, 3, '2024-09-05', '2024-09-19'),  -- Ayþe Demir, Karamazov Kardeþler
(4, 4, '2024-09-07', '2024-09-21'),  -- Fatma Çelik, Anna Karenina
(5, 5, '2024-09-09', '2024-09-23');  -- Ali Þahin, Ýnsan Ne ile Yaþar


--READ DATAS
SELECT * FROM Books

--UPDATE
UPDATE Books SET AvailableCopies = 4
WHERE ID = 1

--DELETE
DELETE FROM Loans
WHERE ID = 3
