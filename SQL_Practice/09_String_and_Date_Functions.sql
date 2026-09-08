-- String functions

SELECT UPPER(name)
FROM students;

SELECT LOWER(name)
FROM students;

SELECT name, LENGTH(name) AS name_length
FROM students;

SELECT name || ' - ' || city AS student_details
FROM students;

SELECT TRIM('   Rahul   ');

SELECT LEFT(name, 3)
FROM students;

SELECT RIGHT(name, 2)
FROM students;

SELECT REPLACE(city, 'Delhi', 'New Delhi')
FROM students;

-- Date and time

SELECT CURRENT_DATE;

SELECT CURRENT_TIME;

SELECT CURRENT_TIMESTAMP;

-- Extract date parts
SELECT EXTRACT(YEAR FROM CURRENT_DATE);

SELECT EXTRACT(MONTH FROM CURRENT_DATE);

SELECT EXTRACT(DAY FROM CURRENT_DATE);

-- Add time
SELECT CURRENT_DATE + INTERVAL '7 days';

-- Date difference
SELECT CURRENT_DATE - DATE '2026-01-01';
