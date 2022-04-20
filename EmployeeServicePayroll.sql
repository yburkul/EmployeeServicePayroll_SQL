create database Payroll_Service;
use Paryoll_Service;

create table employee_payroll(
Id int not null primary key,
Name varchar(50),
Salary bigint,
StartDate datetime);