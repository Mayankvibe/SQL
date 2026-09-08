-- CASE WHEN

SELECT
    name,
    marks,
    CASE
        WHEN marks >= 90 THEN 'Excellent'
        WHEN marks >= 75 THEN 'Good'
        WHEN marks >= 50 THEN 'Average'
        ELSE 'Fail'
    END AS performance
FROM students;

-- CASE with city
SELECT
    name,
    city,
    CASE
        WHEN city = 'Delhi' THEN 'North'
        WHEN city = 'Mumbai' THEN 'West'
        ELSE 'Other'
    END AS region
FROM students;

-- CASE in ORDER BY
SELECT *
FROM students
ORDER BY
    CASE
        WHEN marks >= 90 THEN 1
        WHEN marks >= 75 THEN 2
        ELSE 3
    END;

-- Conditional counting
SELECT
    COUNT(CASE WHEN marks >= 75 THEN 1 END) AS above_75,
    COUNT(CASE WHEN marks < 75 THEN 1 END) AS below_75
FROM students;
