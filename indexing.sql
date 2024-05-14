use companydb;

create table worker(
  Id int,
  Name varchar(50),
  Salary decimal,
  Location varchar(50)
);

insert into worker values
(1003,'Triston',45000,'Australia'),
(1001,'Chris',38000,'England'),
(1004,'Daryl',51000,'England'),
(1002,'Mitchel',66000,'Australia');


-- creating index on salary column
CREATE INDEX idx_worker_salary
ON worker(Salary asc);


-- creating clustered index 
CREATE CLUSTERED INDEX idx_worker_name
ON worker(Name asc);

-- drop index command
-- we cannot create two clustered indexes on same table
drop index idx_worker_name on worker;

CREATE CLUSTERED INDEX idx_worker_loc
ON worker(id desc,location asc);


-- creating non-clustered index
CREATE NONCLUSTERED INDEX idx_employee_name
ON worker(Name asc);

select * from worker;
select * from worker where name= 'chris';


-- creating unique constraint
create table website(
wid integer primary key,
dname varchar(50),
dloc varchar(50)
);

insert into website values(2,'amazon','london'),
(1,'flipkart','delhi'),(3,'walmart','california');

select * from website;

ALTER TABLE website ADD CONSTRAINT unique_key_wname
UNIQUE (wname);

CREATE UNIQUE NONCLUSTERED INDEX UQ_wloc
ON website(wloc);