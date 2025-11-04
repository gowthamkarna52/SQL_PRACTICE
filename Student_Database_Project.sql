-- # Student Database SQL Project

-- This project demonstrates basic SQL commands:
-- Table creation using CREATE TABLE
-- Data insertion using INSERT INTO
-- Query examples using SELECT, WHERE, LIKE, GROUP BY, and COUNT()
      
CREATE TABLE Students(
      student_id INT primary key ,
      first_name VARCHAR(20) not null,
      last_name VARCHAR(20) not null,
      age INT,
      dob DATE not null,
      email VARCHAR(60) UNIQUE not null,
      phone VARCHAR(15),
      address VARCHAR(200)
);



INSERT INTO Students (first_name, last_name, age, dob, email, phone, address) VALUES
('Alice', 'Johnson', 23, '2002-05-14', 'alice1@example.com', '9000000001', 'Address 1'),
('Bob', 'Smith', 24, '2001-09-22', 'bob2@example.com', '9000000002', 'Address 2'),
('Charlie', 'Brown', 22, '2003-01-10', 'charlie3@example.com', '9000000003', 'Address 3'),
('David', 'Williams', 23, '2002-07-18', 'david4@example.com', '9000000004', 'Address 4'),
('Emma', 'Taylor', 24, '2001-04-30', 'emma5@example.com', '9000000005', 'Address 5'),
('Frank', 'Anderson', 22, '2003-12-02', 'frank6@example.com', '9000000006', 'Address 6'),
('Grace', 'Thomas', 23, '2002-11-20', 'grace7@example.com', '9000000007', 'Address 7'),
('Hannah', 'Moore', 24, '2001-08-15', 'hannah8@example.com', '9000000008', 'Address 8'),
('Ian', 'Martin', 22, '2003-09-05', 'ian9@example.com', '9000000009', 'Address 9'),
('Jack', 'White', 23, '2002-06-23', 'jack10@example.com', '9000000010', 'Address 10'),
('Kate', 'Harris', 24, '2001-02-18', 'kate11@example.com', '9000000011', 'Address 11'),
('Leo', 'Clark', 22, '2003-10-11', 'leo12@example.com', '9000000012', 'Address 12'),
('Mia', 'Rodriguez', 23, '2002-01-29', 'mia13@example.com', '9000000013', 'Address 13'),
('Noah', 'Lewis', 24, '2001-03-08', 'noah14@example.com', '9000000014', 'Address 14'),
('Olivia', 'Lee', 22, '2003-07-17', 'olivia15@example.com', '9000000015', 'Address 15'),
('Paul', 'Walker', 23, '2002-04-12', 'paul16@example.com', '9000000016', 'Address 16'),
('Quinn', 'Hall', 24, '2001-10-25', 'quinn17@example.com', '9000000017', 'Address 17'),
('Rachel', 'Allen', 22, '2003-05-30', 'rachel18@example.com', '9000000018', 'Address 18'),
('Sam', 'Young', 23, '2002-03-11', 'sam19@example.com', '9000000019', 'Address 19'),
('Tina', 'Hernandez', 24, '2001-12-09', 'tina20@example.com', '9000000020', 'Address 20'),
('Uma', 'King', 22, '2003-02-14', 'uma21@example.com', '9000000021', 'Address 21'),
('Victor', 'Wright', 23, '2002-09-06', 'victor22@example.com', '9000000022', 'Address 22'),
('Wendy', 'Lopez', 24, '2001-11-01', 'wendy23@example.com', '9000000023', 'Address 23'),
('Xander', 'Hill', 22, '2003-06-19', 'xander24@example.com', '9000000024', 'Address 24'),
('Yara', 'Scott', 23, '2002-08-03', 'yara25@example.com', '9000000025', 'Address 25'),
('Zane', 'Green', 24, '2001-01-05', 'zane26@example.com', '9000000026', 'Address 26'),
('Amber', 'Baker', 22, '2003-04-27', 'amber27@example.com', '9000000027', 'Address 27'),
('Brian', 'Nelson', 23, '2002-02-16', 'brian28@example.com', '9000000028', 'Address 28'),
('Clara', 'Carter', 24, '2001-07-13', 'clara29@example.com', '9000000029', 'Address 29'),
('Dylan', 'Mitchell', 22, '2003-11-22', 'dylan30@example.com', '9000000030', 'Address 30'),
('Eva', 'Perez', 23, '2002-10-09', 'eva31@example.com', '9000000031', 'Address 31'),
('Finn', 'Roberts', 24, '2001-06-17', 'finn32@example.com', '9000000032', 'Address 32'),
('Gina', 'Turner', 22, '2003-08-28', 'gina33@example.com', '9000000033', 'Address 33'),
('Henry', 'Phillips', 23, '2002-12-03', 'henry34@example.com', '9000000034', 'Address 34'),
('Isla', 'Campbell', 24, '2001-05-24', 'isla35@example.com', '9000000035', 'Address 35'),
('Jake', 'Parker', 22, '2003-03-20', 'jake36@example.com', '9000000036', 'Address 36'),
('Kara', 'Evans', 23, '2002-07-30', 'kara37@example.com', '9000000037', 'Address 37'),
('Liam', 'Edwards', 24, '2001-09-01', 'liam38@example.com', '9000000038', 'Address 38'),
('Nina', 'Collins', 22, '2003-01-08', 'nina39@example.com', '9000000039', 'Address 39'),
('Oscar', 'Stewart', 25, '2002-06-05', 'oscar40@example.com', '9000000040', 'Address 40');






-- SELECT * FROM Students ORDER BY last_name ASC;
-- SELECT * FROM Students WHERE age BETWEEN 24 AND 25;
-- SELECT * FROM Students WHERE first_name LIKE 'A%';

-- SELECT AVG(age) AS Average_age FROM Students;
-- SELECT MIN(age) AS Youngest,MAX(age) AS Eldest FROM Students;
-- SELECT STRFTIME('%Y',dob) AS Birth_Year,COUNT(*) AS Total FROM Students GROUP BY Birth_Year;

-- SELECT * FROM Students WHERE phone is NULL;
-- SELECT * FROM Students WHERE email LIKE '%31@example%';
-- SELECT * FROM Students WHERE address IN ('Address 1','Address 12');

-- UPDATE Students SET address='Address 101' WHERE first_name='Alice';
-- SELECT first_name, address FROM Students WHERE first_name='Alice';

-- DELETE FROM Students WHERE address='Address 11';
-- SELECT * FROM Students;

-- SELECT address FROM Students;
-- SELECT * FROM Students WHERE age>23;
-- SELECT * FROM Students WHERE address='Address 1';
-- SELECT * FROM Students WHERE email LIKE '%35@example.com';
-- SELECT * FROM Students WHERE first_name LIKE '%an%';

-- SELECT age,COUNT(*) AS age_count FROM Students GROUP BY age;
-- SELECT COUNT(*) FROM Students WHERE dob>'2002-12-31';
-- SELECT age,COUNT(*) AS age_count FROM Students GROUP BY age;
-- SELECT COUNT(*) AS born_in_2002 FROM Students WHERE YEAR(dob) = 2002;

-- SELECT age,COUNT(*) AS age_count FROM Students GROUP BY age ORDER BY age;

