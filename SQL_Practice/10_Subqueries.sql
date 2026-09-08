-- Subqueries

-- Students above the average marks
SELECT *
FROM students
WHERE marks > (
    SELECT AVG(marks)
    FROM students
);

-- Student with the highest marks
SELECT *
FROM students
WHERE marks = (
    SELECT MAX(marks)
    FROM students
);

-- Cities having more than one student
SELECT *
FROM students
WHERE city IN (
    SELECT city
    FROM students
    GROUP BY city
    HAVING COUNT(*) > 1
);

-- Subquery in SELECT
SELECT
    name,
    marks,
    (SELECT AVG(marks) FROM students) AS overall_average
FROM students;

-- Subquery in FROM
SELECT *
FROM (
    SELECT city, AVG(marks) AS average_marks
    FROM students
    GROUP BY city
) AS city_summary
WHERE average_marks > 75;

-- EXISTS
SELECT *
FROM departments d
WHERE EXISTS (
    SELECT 1
    FROM employees e
    WHERE e.department_id = d.department_id
);
