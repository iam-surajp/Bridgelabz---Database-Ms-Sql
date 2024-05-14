use employeeDB;
select * from employee_info;

CREATE TABLE employee_info(
empId INTEGER PRIMARY KEY,
empName VARCHAR(20) NOT NULL,
empSalary DECIMAL(10,2) NOT NULL,
job VARCHAR(20),
phone varchar(50),
deptId INTEGER NOT NULL
);


create table department_info
(
   deptId integer not null,
   deptName varchar(50) not null,
   deptLocation varchar(20)
);

insert into employee_info values (
     01,'Nilesh',35000,'Jr.Manager','9439554934',21
);

insert into employee_info(empId,empName,empSalary,deptId) values (
     02,'Umesh',40000,6);


-- update command
update employee_info 
set projectComplete = 3
where empName = 'Suresh';


-- drop, delete commands
delete from dbo.employee_info 
where deptId = 6;

drop table dbo.employee_info;
