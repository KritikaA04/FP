use [ACE 5- 2024]
create table KritikaFlights
(
FlightId int primary key,
FlightName varchar(15),
Airline varchar(15),
Source varchar(15),
Destination varchar(15),
Price decimal
)
--use [ACE 5- 2024]
--drop table KritikaFlights

use [ACE 5- 2024]
insert into KritikaFlights values (12431, 'A320', 'AirIndia', 'Delhi', 'Mumbai', 5500)
insert into KritikaFlights values (25134, 'IGO210', 'Indigo', 'Bangalore', 'Mumbai', 6500)
insert into KritikaFlights values (12562, 'V430', 'Vistara', 'Mumbai', 'Goa', 7600)
insert into KritikaFlights values (15410, 'SJ560', 'SpiceJet', 'Bhopal', 'Delhi', 5800)
insert into KritikaFlights values (25132, 'IGO230', 'Indigo', 'Bhopal', 'Mumbai', 5600)
insert into KritikaFlights values (12435, 'A350', 'AirIndia', 'Bhopal', 'Bangalore', 6700)
insert into KritikaFlights values (25133, 'IGO330', 'Indigo', 'Mumbai', 'Bangalore', 4900)
insert into KritikaFlights values (15430, 'SJ310', 'SpiceJet', 'Bangalore', 'Delhi', 7700)
insert into KritikaFlights values (12540, 'V410', 'Vistara', 'Delhi', 'Bangalore', 7500)
insert into KritikaFlights values (12570, 'V170', 'Vistara', 'Delhi', 'Goa', 6400)

use [ACE 5- 2024]
select * from KritikaFlights

use [ACE 5- 2024]
create table KritikaCustomers
(
CustomerId int identity(101,1) primary key,
CustomerName varchar(15),
CustomerEmail varchar(40),
Loc varchar(15),
password varchar(15)
)

insert into KritikaCustomers values('Kri','kri@gmail.com','Bhopal','kri123')
insert into KritikaCustomers values('Anannya','an@gmail.com','Mumbai','an123')
insert into KritikaCustomers values('Khushi','khushi@gmail.com','Bangalore','khushi123')
insert into KritikaCustomers values('Bhavika','bhavika@gmail.com','Delhi','bhavika123')
--use [ACE 5- 2024]
insert into KritikaCustomers values('Admin','admin@gmail.com','Home','admin')

use [ACE 5- 2024]
select * from KritikaCustomers

use [ACE 5- 2024]
--drop table KritikaCustomers

select * from KritikaBookings

use [ACE 5- 2024]
create table KritikaBookings
(
BookingId int identity(10001,1) primary key,
FlightId int,
CustomerId int,
BookingDate datetime,
NoOfPassengers int,
TotalPrice decimal
constraint fkf foreign key (FlightId)
references KritikaFlights(FlightId),
constraint fkx foreign key (CustomerId)
references KritikaCustomers(CustomerId)
)

delete from KritikaBookings where TotalPrice IS NULL


--drop table KritikaBookings