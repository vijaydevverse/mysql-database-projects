-- QUERIES.SQL

--  Borrow a Book
INSERT INTO Borrowing(book_id,member_id,librarian_id) VALUES(1,1,1);
UPDATE BOOKS SET is_available=FALSE WHERE book_id=1;

-- Return a Book
UPDATE Borrowing SET return_date=CURRENT_DATE WHERE loan_id=1;
UPDATE Books SET is_available=TRUE WHERE book_id=1;

-- List Available books
SELECT * FROM BOOKS WHERE is_available=TRUE;

-- Member Loan History
SELECT m.name,b.title,br.borrow_date,br.return_date
FROM Borrowing br
JOIN Members m ON br.member_id=m.member_id
JOIN Books b ON br.book_id=b.book_id
WHERE m.member_id=1;

-- Overdue books(>14 days)
SELECT m.name,b.title,br.borrow_date
FROM Borrowing br
JOIN Members m ON br.member_id=m.member_id
JOIN Books b ON br.book_id=b.book_id
WHERE br.return_date IS NULL
AND br.borrow_date<CURRENT_DATE-INTERVAL 14 DAY;


-- Books by 'George Orwell'
SELECT title,genre,published_year
FROM Books
WHERE author='George Orwell';

 -- Books published after 2000
SELECT title,author,published_year
FROM Books
WHERE published_year>2000;

-- Total books in library
SELECT COUNT(*) AS total_books FROM Books;

--  Members who borrowed '1984'
SELECT m.name,br.borrow_date,br.return_date
FROM Borrowing br
JOIN Members m ON br.member_id=m.member_id
JOIN Books b ON br.book_id=b.book_id
WHERE b.title='1984';

-- Borrowing history for member 1
SELECT b.title,br.borrow_date,br.return_date
FROM Borrowing br
JOIN Books b ON br.book_id=b.book_id
WHERE br.member_id=1;

-- Available Fiction books
SELECT title,author,published_year FROM Books
WHERE genre='Fiction' AND is_available=TRUE;

-- Total Books Borrowed per Member
SELECT m.name,COUNT(br.loan_id) AS total_books_borrowed
FROM Borrowing br
JOIN Members m ON br.member_id=m.member_id
GROUP BY m.name;

-- Overdue books not returned(>30 days)
SELECT m.name,b.title,br.borrow_date FROM Borrowing br
JOIN Members m ON br.member_id=m. member_id
JOIN Books b ON br.book_id=b.book_id
WHERE br.return_date IS NULL
AND br.borrow_date<CURRENT_DATE-INTERVAL 30 DAY;

-- Top librarians by borrowings
SELECT I.name,COUNT(br.loan_id) AS total_borrowings
FROM Borrowing br
JOIN Librarians I ON br.librarian_id=I.librarian_id
GROUP BY I.name
ORDER BY total_borrowings DESC;

-- Currently borrowed books
SELECT m.name,b.title,br.borrow_date
FROM Borrowing br
JOIN Members m ON br.member_id=m.member_id
JOIN Books b ON br.book_id=b.book_id
WHERE br.return_date IS NULL;
