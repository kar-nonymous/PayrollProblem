/* UC 3 :
Insert data into the table */
use payroll_service;
/* Creating a table */
create table employee_payroll
(EmpID int not null identity(1,1) primary key,
EmpName varchar(150) not null,
Salary float not null,
StartDate date not null
);
/* Inserting data into table */
insert into employee_payroll(EmpName,Salary,StartDate) values
('Kartikeya',72000,'2020-09-18'),
('Morgan',180000,'2020-10-26');