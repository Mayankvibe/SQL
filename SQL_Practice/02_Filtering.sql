-- Filtering with WHERE

SELECT * FROM students
WHERE age = 20;

SELECT * FROM students
WHERE marks > 80;

SELECT * FROM students
WHERE marks >= 80;

SELECT * FROM students
WHERE city <> 'Delhi';

-- AND
SELECT * FROM students
WHERE age = 20
AND marks > 80;

-- OR
SELECT * FROM students
WHERE city = 'Delhi'
OR city = 'Mumbai';

-- NOT
SELECT * FROM students
WHERE NOT city = 'Delhi';

-- IN
SELECT * FROM students
WHERE city IN ('Delhi', 'Mumbai');

-- NOT IN
SELECT * FROM students
WHERE city NOT IN ('Delhi', 'Mumbai');

-- BETWEEN
SELECT * FROM students
WHERE marks BETWEEN 70 AND 90;

-- LIKE
SELECT * FROM students
WHERE name LIKE 'R%';

SELECT * FROM students
WHERE name LIKE '%a';
