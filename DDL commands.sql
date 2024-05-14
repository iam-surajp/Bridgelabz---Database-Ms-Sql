use employeeDB;
select * from employee_info;


-- alter table add command
ALTER TABLE employee_info ADD projectComplete integer not null default 1;

ALTER TABLE employee_info ADD projectId integer null;

ALTER TABLE employee_info 
add constraint pID_unique_key UNIQUE(projectId);


-- alter table drop command
alter table employee_info drop COLUMN projectId;

alter table employee_info 
drop constraint DF__employee___proje__6E01572D;

ALTER TABLE employee_info
drop constraint PK__employee__AFB3EC0D9FDB1C2B;

-- alter table alter column command
alter table employee_info 
alter column phone bigint;

alter table employee_info 
alter column projectComplete varchar(10);