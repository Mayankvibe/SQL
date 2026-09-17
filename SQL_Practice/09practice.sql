CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100) UNIQUE,
    DepartmentID INT,
    HireDate DATE,
    Salary DECIMAL(10, 2)
);

INSERT INTO Employees (EmployeeID, FirstName, LastName, Email, DepartmentID, HireDate, Salary)
VALUES 
(1, 'John', 'Smith', 'john.smith@example.com', 101, '2021-06-15', 75000.00),
(2, 'Jane', 'Doe', 'jane.doe@example.com', 102, '2020-03-10', 85000.00),
(3, 'Michael', 'Johnson', 'michael.johnson@example.com', 101, '2019-11-22', 95000.00),
(4, 'Emily', 'Davis', 'emily.davis@example.com', 103, '2022-01-05', 68000.00),
(5, 'William', 'Brown', 'william.brown@example.com', 102, '2018-07-19', 80000.00);


--Write a SQL query to select all columns and rows from the Employees table.
select * from employees

--Write a SQL query to find the names and email addresses of all employees who work in the department with DepartmentID = 101.
select firstname,email from employees where departmentid=101

--Write a SQL query to find the total number of employees in the Employees table.
select count(departmentid) from employees 

--Write a SQL query to find the details of employees who were hired in the year 2020.
select * from employees where extract(year from HireDate)=2020

--Write a SQL query to update the salary of 'Jane Doe' to 90,000.
update employees set salary=90000  where firstname='Jane'

SELECT * from employees