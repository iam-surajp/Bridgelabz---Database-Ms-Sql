-- Views in SQL

-- Creating VIEW for displaying name,salary from employees
use companydb;
select * from employee;

CREATE VIEW v_empNameSalary
AS select emp_name, emp_salary from employee;

SELECT * FROM v_empNameSalary;

-- Creating VIEW for displaying employe details and dept name using join
select * from department;

CREATE VIEW v_EmpDetailsWithDeptName
AS SELECT emp_name,emp_salary,dept_name 
FROM employee e INNER JOIN department d
ON e.emp_deptId = d.dept_id
WHERE d.dept_name = 'accounts';

SELECT * from v_EmpDetailsWithDeptName;


-- Creating VIEW for displaying employees without salary
CREATE VIEW v_empPublicDetails
AS SELECT e.emp_name,d.dept_name,d.dept_location 
FROM employee e INNER JOIN department d
ON e.emp_deptId = d.dept_id;

SELECT * FROM v_empPublicDetails;
