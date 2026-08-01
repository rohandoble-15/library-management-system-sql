-- ==========================================
-- LIBRARY MANAGEMENT SYSTEM
-- ==========================================

-- --------------------------
-- 1. BRANCH
-- --------------------------
INSERT INTO Branch VALUES
(1, 'Central Library', 'Hyderabad', '9876543210'),
(2, 'City Library', 'Nagpur', '9876543211'),
(3, 'Knowledge Hub', 'Pune', '9876543212'),
(4, 'Readers Point', 'Mumbai', '9876543213'),
(5, 'Book World', 'Bhopal', '9876543214');

-- --------------------------
-- 2. EMPLOYEE
-- --------------------------
INSERT INTO Employee VALUES
(101, 'Rahul Sharma', 'Librarian', '9000000001', 1),
(102, 'Priya Verma', 'Assistant', '9000000002', 1),
(103, 'Amit Kumar', 'Librarian', '9000000003', 2),
(104, 'Neha Singh', 'Assistant', '9000000004', 2),
(105, 'Rohan Patel', 'Manager', '9000000005', 3),
(106, 'Sneha Gupta', 'Librarian', '9000000006', 3),
(107, 'Vikas Yadav', 'Assistant', '9000000007', 4),
(108, 'Pooja Jain', 'Librarian', '9000000008', 4),
(109, 'Arjun Mehta', 'Manager', '9000000009', 5),
(110, 'Kiran Das', 'Assistant', '9000000010', 5);

-- --------------------------
-- 3. BOOKS
-- --------------------------
INSERT INTO Books VALUES
(201, 'Python Basics', 'John Smith', 'Programming', 450.00, 10),
(202, 'SQL Mastery', 'David Lee', 'Database', 550.00, 8),
(203, 'Java Programming', 'James Gosling', 'Programming', 600.00, 12),
(204, 'Data Structures', 'Mark Allen', 'Computer Science', 500.00, 7),
(205, 'Operating Systems', 'Galvin', 'Computer Science', 700.00, 5),
(206, 'Machine Learning', 'Andrew Ng', 'AI', 850.00, 6),
(207, 'Power BI Guide', 'Robert King', 'Analytics', 480.00, 9),
(208, 'Excel for Data Analysis', 'Paul Brown', 'Analytics', 420.00, 15),
(209, 'C Programming', 'Dennis Ritchie', 'Programming', 390.00, 10),
(210, 'DBMS Concepts', 'Korth', 'Database', 650.00, 8);

-- --------------------------
-- 4. MEMBERS
-- --------------------------
INSERT INTO Members VALUES
(301, 'Aarav Sharma', '9876500001', 'aarav@gmail.com', '2025-01-10'),
(302, 'Ananya Verma', '9876500002', 'ananya@gmail.com', '2025-02-15'),
(303, 'Rohit Kumar', '9876500003', 'rohit@gmail.com', '2025-03-12'),
(304, 'Priya Singh', '9876500004', 'priya@gmail.com', '2025-03-25'),
(305, 'Aditya Jain', '9876500005', 'aditya@gmail.com', '2025-04-10'),
(306, 'Sneha Patel', '9876500006', 'sneha@gmail.com', '2025-05-08'),
(307, 'Karan Mehta', '9876500007', 'karan@gmail.com', '2025-05-20'),
(308, 'Pooja Sharma', '9876500008', 'pooja@gmail.com', '2025-06-01'),
(309, 'Vikas Gupta', '9876500009', 'vikas@gmail.com', '2025-06-15'),
(310, 'Neha Das', '9876500010', 'neha@gmail.com', '2025-07-05');

-- --------------------------
-- 5. ISSUE_STATUS
-- --------------------------
INSERT INTO Issue_Status VALUES
(401, 201, 301, 101, '2025-07-01', '2025-07-15', '2025-07-14', 0.00, 'Returned'),
(402, 202, 302, 102, '2025-07-02', '2025-07-16', NULL, 0.00, 'Issued'),
(403, 203, 303, 103, '2025-07-03', '2025-07-17', '2025-07-20', 30.00, 'Returned'),
(404, 204, 304, 104, '2025-07-04', '2025-07-18', NULL, 0.00, 'Overdue'),
(405, 205, 305, 105, '2025-07-05', '2025-07-19', '2025-07-18', 0.00, 'Returned');