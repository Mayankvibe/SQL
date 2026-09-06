-- SQL Basics
-- Create a table
CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    city VARCHAR(100),
    marks INT
);

-- Insert data
INSERT INTO students (name, age, city, marks)
VALUES
('Rahul', 20, 'Delhi', 85),
('Aman', 21, 'Mumbai', 72),
('Priya', 19, 'Delhi', 91),
('Neha', 22, 'Pune', 68),
('Rohit', 20, 'Mumbai', 78);

-- See all data
SELECT * FROM students;

-- See selected columns
SELECT name, marks
FROM students;

-- Update data
UPDATE students
SET marks = 90
WHERE name = 'Aman';

-- Delete a row
DELETE FROM students
WHERE name = 'Neha';
