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

select salary from employee_payroll where Name = 'Yogesh';

alter table employee_payroll
Add Gender char(1);
update employee_payroll set Gender = 'M' where Name = 'Yogesh' or Name = 'Arjun';
update employee_payroll set Gender = 'F' where Name = 'Sayali' or Name = 'Neha';

select sum(Salary) as Sum_Salary_of_Female from employee_payroll where Gender = 'F' Group by Gender;
select sum(Salary) as Sum_Salary_of_Male from employee_payroll where Gender = 'M' Group by Gender;
select avg(Salary) as Avg_Salary_of_Female from employee_payroll where Gender = 'F' Group by Gender;
select avg(Salary) as Avg_Salary_of_Male from employee_payroll where Gender = 'M' Group by Gender;
select max(Salary) as Max_Salary_of_Female from employee_payroll where Gender = 'F' Group by Gender;
select max(Salary) as Max_Salary_of_Male from employee_payroll where Gender = 'M' Group by Gender;
select min(Salary) as Min_Salary_of_Female from employee_payroll where Gender = 'F' Group by Gender;
select min(Salary) as Min_Salary_of_Male from employee_payroll where Gender = 'M' Group by Gender;
select count(Salary) as count_Female from employee_payroll where Gender = 'F' Group by Gender;
select count(Salary) as count_Male from employee_payroll where Gender = 'M' Group by Gender;