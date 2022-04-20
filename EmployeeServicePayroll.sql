create database Payroll_Service;
use Paryoll_Service;

create table employee_payroll(
Id int not null primary key,
Name varchar(50),
Salary bigint,
StartDate Date);

insert into employee_payroll(Id,Name,Salary,StartDate)values
(1,'Yogesh',30000,'2022-04-20'),
(2,'Sayali',20000,'2022-02-25'),
(3,'Arjun',40000,'2022-01-17'),
(4,'Neha',25000,'2022-04-01');

select * from employee_payroll;
