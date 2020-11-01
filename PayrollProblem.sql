/* UC 7 :
Find sum, average, min, count and max of salary*/
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
/*Retreiving data from table*/
select * from employee_payroll;
/*Retrieving data with a given condition*/
select Salary from employee_payroll where EmpName='Kartikeya';
/*Retrieving data with a given condition*/
select * from employee_payroll where StartDate between cast('2020-01-01' as date) and cast(getdate() as date);
/*Add new column to table of gender*/
alter table employee_payroll add Gender char(1);
/*Update table*/
update employee_payroll set Gender='M' where EmpName ='Kartikeya' or EmpName ='Morgan';
/*Sum of salary of male and female employees*/
select Gender,sum(salary) as SalarySum from employee_payroll where Gender='M' or Gender='F' group by Gender;
/*Average salary of male and female employees*/
select Gender,avg(salary) as AvgSalary from employee_payroll where Gender='M' or Gender='F' group by Gender;
/*Minimum salary*/
select Gender,min(salary) as MinSalary from employee_payroll where Gender='M' or Gender='F' group by Gender;
/*Maximum salary*/
select Gender,max(salary) as MaxSalary from employee_payroll where Gender='M' or Gender='F' group by Gender;
/*Employee count*/
select Gender,count(salary) as EmpCount from employee_payroll where Gender='M' or Gender='F' group by Gender;