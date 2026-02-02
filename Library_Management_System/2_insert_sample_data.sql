-- INSERT SAMPLE DATA.SQL
USE LibraryDataBase;

-- BOOKS
INSERT INTO BOOKS(title,author,genre,published_year) VALUES
('The Great Gatsby','F.Scott Fitzgerald','Fiction',1925),
('1984','George Orwell','Dystopian',1949),
('To Kill a Mockingbird','Harper Lee','Classic',1960);

ALTER TABLE BOOKS
ADD author VARCHAR(255);

INSERT INTO BOOKS(title,author,genre,published_year) VALUES
('The Great Gatsby','F.Scott Fitzgerald','Fiction',1925),
('1984','George Orwell','Dystopian',1949),
('To Kill a Mockingbird','Harper Lee','Classic',1960);

-- Members
INSERT INTO Members(name,email,phone_number) VALUES
('Alen King','alenking@example.com','1234567890'),
('Alece Hofman','alecehofman@example.com','9876543210');

-- Librarians
INSERT INTO Librarians(name,email,phone_number) VALUES
('Garden McGraw','garden@example.com','7894561230'),
('Nail Horn','nail@example.com','4567891230');
