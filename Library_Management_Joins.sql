CREATE TABLE Books (
  book_id INTEGER PRIMARY KEY AUTOINCREMENT,
  title VARCHAR(100) NOT NULL,
  author VARCHAR(50),
  category VARCHAR(30),
  total_copies INT DEFAULT 1,
  available_copies INT DEFAULT 1
);

CREATE TABLE Members (
  member_id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(50) NOT NULL,
  email VARCHAR(100) UNIQUE,
  phone VARCHAR(15),
  join_date DATE
);

CREATE TABLE BorrowRecords (
  record_id INTEGER PRIMARY KEY AUTOINCREMENT,
  book_id INT,
  member_id INT,
  issue_date DATE,
  return_date DATE,
  FOREIGN KEY (book_id) REFERENCES Books(book_id),
  FOREIGN KEY (member_id) REFERENCES Members(member_id)
);



INSERT INTO Books (title, author, category, total_copies, available_copies) VALUES
('Harry Potter', 'J.K. Rowling', 'Fantasy', 5, 3),
('The Alchemist', 'Paulo Coelho', 'Fiction', 3, 1),
('Data Science 101', 'A. Kumar', 'Education', 4, 4),
('To Kill a Mockingbird', 'Harper Lee', 'Classic', 2, 2),
('The Great Gatsby', 'F. Scott Fitzgerald', 'Classic', 3, 2),
('Deep Learning Made Easy', 'Ian Goodfellow', 'Education', 5, 4),
('Atomic Habits', 'James Clear', 'Self-Help', 6, 5);

INSERT INTO Members (name, email, phone, join_date) VALUES
('Alice Johnson', 'alice@example.com', '9000000001', '2023-02-01'),
('Bob Smith', 'bob@example.com', '9000000002', '2023-03-15'),
('Charlie Brown', 'charlie@example.com', '9000000003', '2023-04-10'),
('Diana Adams', 'diana@example.com', '9000000004', '2023-05-20'),
('Ethan Miller', 'ethan@example.com', '9000000005', '2023-06-11'),
('Fiona Clark', 'fiona@example.com', '9000000006', '2023-07-22'),
('George King', 'george@example.com', '9000000007', '2023-08-03');

INSERT INTO BorrowRecords (book_id, member_id, issue_date, return_date) VALUES
(1, 1, '2023-10-01', NULL),
(2, 2, '2023-09-15', '2023-09-30'),
(3, 3, '2023-08-05', '2023-08-25'),
(4, 4, '2023-07-20', NULL),
(5, 5, '2023-07-25', '2023-08-10'),
(6, 6, '2023-09-01', NULL),
(7, 7, '2023-09-05', NULL);



-- 1) INNER JOIN – Show borrowed books with member names and issue dates
SELECT b.title, m.name, br.issue_date, br.return_date
FROM BorrowRecords br
JOIN Books b ON br.book_id = b.book_id
JOIN Members m ON br.member_id = m.member_id;

-- 2) LEFT JOIN – Show all books, even those never borrowed
SELECT b.title, b.category, br.issue_date
FROM Books b
LEFT JOIN BorrowRecords br ON b.book_id = br.book_id;

-- 3) RIGHT JOIN – Show all borrow records even if book data is missing
SELECT m.name, b.title, br.issue_date
FROM Books b
RIGHT JOIN BorrowRecords br ON b.book_id = br.book_id
JOIN Members m ON br.member_id = m.member_id;

-- 4) FULL OUTER JOIN (via UNION) – Combine all books and borrow records
SELECT b.title, m.name, br.issue_date
FROM Books b
LEFT JOIN BorrowRecords br ON b.book_id = br.book_id
LEFT JOIN Members m ON br.member_id = m.member_id
UNION
SELECT b.title, m.name, br.issue_date
FROM Books b
RIGHT JOIN BorrowRecords br ON b.book_id = br.book_id
RIGHT JOIN Members m ON br.member_id = m.member_id;

-- 5) CROSS JOIN – Show every possible combination of members and books
SELECT m.name, b.title
FROM Members m
CROSS JOIN Books b;

-- 6) Count how many books each member has borrowed
SELECT m.name, COUNT(br.record_id) AS total_borrowed
FROM Members m
LEFT JOIN BorrowRecords br ON m.member_id = br.member_id
GROUP BY m.member_id, m.name;

-- 7) Show members and their currently borrowed (not returned) books
SELECT m.name, b.title, br.issue_date
FROM BorrowRecords br
JOIN Books b ON br.book_id = b.book_id
JOIN Members m ON br.member_id = m.member_id
WHERE br.return_date IS NULL;

-- 8) Show total borrowed books grouped by category
SELECT b.category, COUNT(br.record_id) AS total_borrowed
FROM Books b
LEFT JOIN BorrowRecords br ON b.book_id = br.book_id
GROUP BY b.category;