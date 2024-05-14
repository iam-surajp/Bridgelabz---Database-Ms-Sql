-- Subqueries
 
use companydb;

-- 1. Display name, salary of employee whose salary is greater than Mike's salary

SELECT emp_name, emp_salary from employee
WHERE emp_salary > (Select emp_salary from employee where emp_name = 'Mike');

-- 2. Display name,salary of employee whose salary is greater than Adam's salary
-- and deptno same as Adam's deptno.
SELECT emp_name,emp_salary from employee
WHERE emp_salary > (SELECT emp_salary from employee where emp_name = 'Adam')
AND emp_deptid = (SELECT emp_deptid from employee where emp_name = 'Adam');

select * from employee;


-- 3. Display the employee information whose department is located at New York

SELECT emp_id,emp_name,emp_salary,emp_deptId FROM employee
INNER JOIN department
ON employee.emp_deptId = department.dept_id
WHERE department.dept_location = (SELECT dept_location from department WHERE dept_location = 'NEW YORK');