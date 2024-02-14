use [ACE 5- 2024]
create table KritikaA
(
EmpID int primary key,
EName varchar(15),
EDept varchar(10),
ESalary decimal
)

insert into KritikaA values(1,'Kri','Agent',2000000)
insert into KritikaA values(2,'Shaini','Content',2100000)
insert into KritikaA values(3,'Anu','Content',500000)

select * from KritikaA

use [ACE 5- 2024]
drop table KritikaA


use [ACE 5- 2024]
create table KritikaEmp
(
EmpID int primary key,
EName varchar(15),
EDept varchar(10),
ESalary decimal
)

insert into KritikaEmp values(1,'Kri','Agent',2000000)
insert into KritikaEmp values(2,'Shaini','Content',2100000)
insert into KritikaEmp values(3,'Anu','Content',500000)
