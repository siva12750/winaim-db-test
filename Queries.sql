-- Write a query to find all employees who have been hired in the last year.
SELECT *
FROM employees
WHERE hire_date >= DATE_SUB(CURRENT_DATE, INTERVAL 1 YEAR);



-- Write a query to calculate the total salary expenditure for each department.
SELECT d.department_name, SUM(s.salary) AS total_salary_expenditure
FROM departments d
JOIN employees e ON d.department_id = e.department_id
JOIN salaries s ON e.employee_id = s.employee_id
GROUP BY d.department_name;


-- Write a query to find the top 5 highest-paid employees along with their department names
SELECT e.first_name, e.last_name, d.department_name, s.salary
FROM employees e
JOIN departments d ON e.department_id = d.department_id
JOIN salaries s ON e.employee_id = s.employee_id
ORDER BY s.salary DESC
LIMIT 5;
