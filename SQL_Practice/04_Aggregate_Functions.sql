-- Aggregate functions

-- Count rows
SELECT COUNT(*)
FROM students;

-- Count non-null marks
SELECT COUNT(marks)
FROM students;

-- Total marks
SELECT SUM(marks)
FROM students;

-- Average marks
SELECT AVG(marks)
FROM students;

-- Highest marks
SELECT MAX(marks)
FROM students;

-- Lowest marks
SELECT MIN(marks)
FROM students;

-- Several functions together
SELECT
    COUNT(*) AS total_students,
    SUM(marks) AS total_marks,
    AVG(marks) AS average_marks,
    MAX(marks) AS highest_marks,
    MIN(marks) AS lowest_marks
FROM students;

-- Round the average
SELECT ROUND(AVG(marks), 2) AS average_marks
FROM students;
