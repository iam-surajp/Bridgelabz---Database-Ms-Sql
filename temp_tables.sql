use companydb;

-- Local temporary table 
create table #EmpDetails (id int , name varchar(30));

--Global temporary table 
create table ##empStatus (id int,isPaid varchar(10));