-- NULL handling

-- Find NULL values
SELECT *
FROM employees
WHERE department_id IS NULL;

-- Find non-NULL values
SELECT *
FROM employees
WHERE department_id IS NOT NULL;

-- COALESCE: use another value when NULL
SELECT
    employee_name,
    COALESCE(department_id, 0) AS department_id
FROM employees;

-- COALESCE with text
SELECT
    employee_name,
    COALESCE(CAST(department_id AS TEXT), 'Not Assigned') AS department
FROM employees;

-- NULLIF: returns NULL when both values are equal
SELECT NULLIF(10, 10);

SELECT NULLIF(10, 5);

-- Avoid division by zero
SELECT 100 / NULLIF(0, 0);

-- Remember:
-- NULL is checked with IS NULL / IS NOT NULL.
-- Do not use = NULL.
