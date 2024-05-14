-- Joins in sql

create database companydb;
use companydb;

create table employee(
       emp_id integer primary key,
	   emp_name varchar(30) not null,
	   emp_salary decimal(10,2),
	   emp_deptId varchar(10)
);

create table department(
          dept_id integer not null,
		  dept_name varchar(30) not null,
		  dept_location varchar(30)
		  );

alter table department alter column dept_id varchar(10);

select * from employee;
select * from department;

insert into employee values
     (111,'Steve',35000,'D1'),
	 (112,'Adam',28000,'D2'),
	 (113,'John',50000,'D3'),
	 (114,'Mike',45000,'D2'),
	 (115,'Smith',60000,'D5');

insert into department values
      ('D1','DEVELOPEMENT','CALIFORNIA'),
	  ('D2','MARKETING','MUMBAI'),
	  ('D3','ACCOUNTS','NEW YORK'),
	  ('D4','MANAGEMENT','SYDNEY');


-- Inner Join in SQL
select e.emp_name,e.emp_salary,d.dept_name,d.dept_location
from employee e 
INNER JOIN department d
ON e.emp_deptId = d.dept_id;


-- Left Outer Join in SQL
select e.emp_name,e.emp_salary,d.dept_name,d.dept_location
from employee e
LEFT OUTER JOIN department d
ON e.emp_deptId = d.dept_id;


-- Right Outer Join in SQL
select e.emp_name,e.emp_salary,d.dept_name,d.dept_location
from employee e
RIGHT OUTER JOIN department d
ON e.emp_deptId = d.dept_id;


-- Full Outer Join in SQL
select e.emp_name,e.emp_salary,d.dept_name,d.dept_location
from employee e
FULL OUTER JOIN department d
ON e.emp_deptId = d.dept_id;