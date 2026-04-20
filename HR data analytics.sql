use hrdata;
select * from emptable;

-- 1. Find all employees whose salary is greater than 50,000
select * from emptable
where Salary > 50000;

-- 2. Show the names and salaries of all female employees
select Name, Salary from emptable
where Gender = 'Female';

-- 3. Find the average salary of employees
select avg(Salary) as avg_salary
from emptable;

-- 4. Count how many employees are there in each gender category
select Gender, count(*) as total_employees
from emptable
group by Gender;

-- 5. Find the highest salary for each job title
select Job Title,max(Salary) as highest_salary 
from emptable
group by Job Title

-- 6. Show employees whose age is between 25 and 30
SELECT Name, Age, Job Title
FROM employees
WHERE Age BETWEEN 25 AND 30

-- 7. Find the total number of employees in each education qualification
SELECT [Education Qualification], COUNT(*) AS total_employees
FROM employees
GROUP BY [Education Qualification]

-- 8. Display the top 5 highest-paid employees
SELECT TOP 5 Name, Salary, [Job Title]
FROM employees
ORDER BY Salary DESC;


-- 9. Find employees who joined after January 1, 2020
SELECT Name, Date of Join, Job Title
FROM employees
WHERE Date of Join > '2020-01-01';


-- 10. Find the average leave balance by gender
SELECT Gender, AVG(Leave Balance) AS average_leave_balance
FROM employees
GROUP BY Gender;