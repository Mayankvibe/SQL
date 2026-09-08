-- JOINs

CREATE TABLE departments (
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(100)
);

CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(100),
    department_id INT,
    salary INT,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

INSERT INTO departments (department_name)
VALUES ('IT'), ('HR'), ('Sales'), ('Finance');

INSERT INTO employees (employee_name, department_id, salary)
VALUES
('Rahul', 1, 60000),
('Aman', 1, 55000),
('Priya', 2, 50000),
('Neha', 3, 45000),
('Rohit', NULL, 40000);

-- INNER JOIN: matching rows only
SELECT e.employee_name, d.department_name
FROM employees e
INNER JOIN departments d
ON e.department_id = d.department_id;

-- LEFT JOIN: all employees
SELECT e.employee_name, d.department_name
FROM employees e
LEFT JOIN departments d
ON e.department_id = d.department_id;

-- RIGHT JOIN: all departments
SELECT e.employee_name, d.department_name
FROM employees e
RIGHT JOIN departments d
ON e.department_id = d.department_id;

-- FULL JOIN: all rows from both tables
SELECT e.employee_name, d.department_name
FROM employees e
FULL JOIN departments d
ON e.department_id = d.department_id;

-- SELF JOIN
SELECT
    e1.employee_name AS employee_1,
    e2.employee_name AS employee_2
FROM employees e1
JOIN employees e2
ON e1.department_id = e2.department_id
AND e1.employee_id <> e2.employee_id;
