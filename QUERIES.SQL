-- ==========================================
-- Library Management System
-- Practice Questions
-- ==========================================

-- 1. Display all books.
SELECT * FROM BOOKS ;

-- 2. Display all members.
SELECT * FROM MEMBERS ; 

-- 3. Display all employees.
SELECT * FROM EMPLOYEE ;

-- 4. Display all branches.
SELECT * FROM BRANCH ;

-- 5. Display books costing more than 500.
SELECT * FROM BOOKS 
WHERE PRICE > 500 ;  

-- 6. Display books in the Programming category.
SELECT * FROM BOOKS 
WHERE CATEGORY = 'PROGRAMMING' ;

-- 7. Display books ordered by price (highest to lowest).
SELECT * FROM BOOKS 
ORDER BY PRICE DESC ; 

-- 8. Count the total number of books.
SELECT COUNT(*) AS TOTAL_BOOKS
FROM BOOKS ;

-- 9. Find the average price of books.
SELECT AVG(PRICE) AS AVERAGE_PRICE FROM BOOKS ;

-- 10. Find the highest-priced book.
SELECT MAX(PRICE) AS HIGHEST_PRICE 
FROM BOOKS ;

-- 11. Display employee names along with their branch names.
SELECT E.EMPLOYEE_NAME ,B.BRANCH_NAME 
FROM EMPLOYEE E 
JOIN BRANCH B
ON E.BRANCH_ID = B.BRANCH_ID ; 

-- 12. Display issued books along with member names and issue dates.
SELECT I.ISSUED_DATE , M.MEMBER_NAME ,B.BRANCH_NAME 
FROM EMPLOYEE E 
JOIN BRANCH B
ON E.BRANCH_ID = B.BRANCH_ID ; 

-- 13. Display all overdue books.
SELECT * FROM ISSUE_STATUS 
WHERE STATUS = 'OVERDUE' ;

-- 14. Count the number of books in each category.
SELECT CATEGORY ,COUNT(*) AS TOTAL FROM BOOKS
GROUP BY CATEGORY ; 

-- 15. Count the number of employees in each branch.
SELECT BRANCH_ID ,COUNT(*) AS TOTAL_EMPLOYEES FROM EMPLOYEE
GROUP BY BRANCH_ID ;  

-- 16. Display members who joined after 1 April 2025.
SELECT * FROM MEMBERS 
WHERE JOIN_DATE > '2025-04-01' ;

-- 17. Display all returned books.
SELECT * FROM ISSUE_STATUS 
WHERE STATUS = 'RETURNED' ; 

-- 18. Calculate the total fine collected.
SELECT SUM(FINE) AS TOTAL_FINE
FROM ISSUE_STATUS ; 

-- 19. Display books with available copies less than 5.
SELECT * FROM BOOKS 
WHERE AVAILABLE_COPIES <5 ; 

-- 20. Display member names along with their fine amounts.
SELECT M.MEMBER_NAME , I.FINE FROM 
MEMBERS M 
JOIN ISSUE_STATUS I 
ON M.MEMBER_ID = I.MEMBER_ID ; 

-- 21. Find members who have borrowed books.
SELECT DISTINCT M.MEMBER_NAME FROM MEMBERS M 
JOIN ISSUE_STATUS I 
ON M.MEMBER_ID = I.MEMBER_ID ; 

-- 22. Find books that have never been issued.
SELECT * FROM BOOKS 
WHERE BOOK_ID NOT IN (SELECT BOOKS_ID FROM ISSUE_STATUS ) ; 

-- 23. Count the total number of issued books.
SELECT COUNT(*) AS TOTAL_ISSUED
FROM ISSUE_STATUS ; 

-- 24. Find the book(s) with the maximum price.
SELECT * FROM BOOKS 
WHERE PRICE = (SELECT MAX(PRICE) FROM BOOKS );

-- 25. Display complete issue details along with employee 
SELECT I.ISSUE_ID ,
B.BOOK_TITLE ,
M.MEMBER_NAME,
E.EMPLOYEE_NAME ,
I.STATUS FROM ISSUE_STATUS I 
JOIN BOOKS B 
ON I.BOOK_ID = B.BOOK_ID 
JOIN MEMBERS M 
ON I.MEMBER_ID = M.MEMBER_ID 
JOIN EMPLOYEE E
ON I.EMPLOYEE_ID = E.EMPLOYEE_ID ;


-- 26. Display the book title, member name, and issue date.

SELECT B.Book_Title,
       M.Member_Name,
       I.Issue_Date
FROM Issue_Status I
JOIN Books B
ON I.Book_ID = B.Book_ID
JOIN Members M
ON I.Member_ID = M.Member_ID;


-- 27. Display the member name and the total fine paid by each member.

SELECT M.Member_Name, SUM(I.Fine) AS Total_Fine
FROM Members M
JOIN Issue_Status I
ON M.Member_ID = I.Member_ID
GROUP BY M.Member_Name;

-- 28. Find the cheapest book.
SELECT * FROM BOOKS 
WHERE PRICE = (SELECT MIN(PRICE) FROM BOOKS ) ;

-- 29. Display books whose title starts with 'P'.
SELECT * FROM BOOKS 
WHERE BOOK_TITLE LIKE 'P%' ;

-- 30. Display members whose names end with 'a'.
SELECT * FROM MEMBERS 
WHERE MEMBER_NAME LIKE '%a' ;

-- 31. Display books priced between 300 and 700.
SELECT * FROM BOOKS 
WHERE PRICE BETWEEN 300 AND 700 ;

-- 32. Count books having available copies greater than 5 .
SELECT COUNT(*) AS TOTAL_BOOKS FROM 
BOOKS
WHERE AVAILABLE_COPIES > 5 ;

-- 33. Find branches having more than 1 employees.
SELECT BRANCH_ID,COUNT(*) AS TOTAL_EMPLOYEES
FROM EMPLOYEE 
GROUP BY BRANCH_ID 
HAVING COUNT(*) > 1 ;

-- 34. Display all members in alphabetical order.
SELECT * FROM MEMBERS 
ORDER BY MEMBER_NAME ;

-- 35. Display books whose title contains the word 'SQL'.
SELECT * FROM BOOKS 
WHERE BOOK_TITLE LIKE '%SQL%' ;

-- 36. Find the total fine paid by each member.
SELECT MEMBER_ID ,SUM(FINE) AS TOTAL_FINE
FROM ISSUE_STATUS
GROUP BY MEMBER_ID ;

-- 37. Display issue details sorted by issue date (latest first).
SELECT * FROM ISSUE_STATUS
ORDER BY ISSUE_DATE DESC ; 

-- 38. Display employees working in the Hyderabad branch.
SELECT E.EMPLOYEE_NAME FROM EMPLOYEE E 
JOIN BRANCH B ON E.BRANCH_ID = B.BRANCH_ID
WHERE CITY =  'HYDERABAD' ;

-- 39. Count the total number of returned books.
SELECT COUNT(*) AS RETURNED_BOOKS
FROM ISSUE_STATUS 
WHERE STATUS = 'RETURNED' ; 


-- 40. Display books having more than 10 available copies.
SELECT * FROM BOOKS 
WHERE AVAILABLE_COPIES > 10 ;

-- 41. Find the total value of all books.
SELECT SUM(PRICE) AS TOTAL_BOOK_PRICE FROM BOOKS ;

-- 42. Display member names in uppercase.
SELECT UPPER(MEMBER_NAME) AS MEMBER_NAME
FROM MEMBERS ; 

-- 43. Display the length of each book title.
SELECT BOOK_TITLE , LENGTH(BOOK_TITLE) AS TITLE_LENGTH 
FROM BOOKS ; 

-- 44. Display the current date.
SELECT CURDATE() ;

-- 45. Find books issued in the current year.
SELECT * FROM ISSUE_STATUS 
WHERE YEAR(ISSUE_DATE) = YEAR(CURDATE()) ;

-- 46. Display the employee count branch-wise.
SELECT B.BRANCH_NAME,COUNT(E.EMPLOYEE_ID) AS EMPLOYEE_COUNT
FROM BRANCH B LEFT JOIN EMPLOYEE E 
ON B.BRANCH_ID = E.BRANCH_ID
GROUP BY B.BRANCH_NAME ; 

-- 47. Find members who have paid a fine greater than 100.
SELECT DISTINCT M.MEMBER_NAME 
FROM MEMBERS M
JOIN ISSUE_STATUS I 
ON M.MEMBER_ID = I.MEMBER_ID
WHERE I.FINE >100 ;

-- 48. Find books that have been issued more than once.
SELECT BOOK_ID ,COUNT(*) AS ISSUE_COUNT
FROM ISSUE_STATUS 
GROUP BY BOOK_ID
HAVING COUNT(*)> 100 ;

-- 49. Display all unique branch names.
SELECT DISTINCT BRANCH_NAME FROM BRANCH ;

-- 50. Count the total number of members.
SELECT COUNT(*) AS TOTAL_MEMBER FROM  MEMBERS ;