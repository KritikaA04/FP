use [ACE 5- 2024]
create table KritikaSBAccount
(
AccountNumber int identity(1001,1) primary key,
CustomerName varchar(15),
CustomerAddress varchar(15),
CurrentBalance decimal 
)


use [ACE 5- 2024]
create table KritikaSBTransaction
(
TransactionId int identity(2001,1) primary key,
TransactionDate datetime,
AccountNumber int,
Amount decimal ,
Transactiontype varchar(15)
constraint fka foreign key (AccountNumber)
references KritikaSBAccount(AccountNumber)
)
use [ACE 5- 2024]
select * from KritikaSBAccount