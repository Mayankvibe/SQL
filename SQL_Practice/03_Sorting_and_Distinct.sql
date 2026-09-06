-- Sorting and removing duplicates

-- Ascending
SELECT * FROM students
ORDER BY marks ASC;

-- Descending
SELECT * FROM students
ORDER BY marks DESC;

-- Multiple columns
SELECT * FROM students
ORDER BY city ASC, marks DESC;

-- DISTINCT
SELECT DISTINCT city
FROM students;

SELECT DISTINCT age
FROM students;

-- LIMIT
SELECT * FROM students
LIMIT 3;

-- Top 3 students
SELECT * FROM students
ORDER BY marks DESC
LIMIT 3;

-- OFFSET
SELECT * FROM students
ORDER BY id
LIMIT 2 OFFSET 2;
