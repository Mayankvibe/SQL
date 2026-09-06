-- GROUP BY and HAVING

-- Count students city-wise
SELECT city, COUNT(*) AS total_students
FROM students
GROUP BY city;

-- Average marks city-wise
SELECT city, AVG(marks) AS average_marks
FROM students
GROUP BY city;

-- Highest marks city-wise
SELECT city, MAX(marks) AS highest_marks
FROM students
GROUP BY city;

-- Total marks city-wise
SELECT city, SUM(marks) AS total_marks
FROM students
GROUP BY city;

-- GROUP BY + ORDER BY
SELECT city, AVG(marks) AS average_marks
FROM students
GROUP BY city
ORDER BY average_marks DESC;

-- HAVING filters groups
SELECT city, AVG(marks) AS average_marks
FROM students
GROUP BY city
HAVING AVG(marks) > 75;

-- GROUP BY + HAVING + ORDER BY
SELECT city, COUNT(*) AS total_students
FROM students
GROUP BY city
HAVING COUNT(*) >= 2
ORDER BY total_students DESC;

-- WHERE filters rows before grouping
SELECT city, AVG(marks)
FROM students
WHERE marks > 70
GROUP BY city;

-- HAVING filters after grouping
SELECT city, AVG(marks)
FROM students
GROUP BY city
HAVING AVG(marks) > 75;
