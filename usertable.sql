use [ACE 5- 2024]
create table KritikaUser
(
	UserEmail varchar(30) not null,
	UserName varchar(15),
	UserId int identity(1001,1) primary key,
	UserPassword varchar(15) not null 
)
use [ACE 5- 2024]
insert into KritikaUser values('krits@gmail.com','KA','kritika')

select * from KritikaUser