create database Payroll_Service;
use Payroll_Service;

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

select * from employee_payroll;
alter table employee_payroll 
add Phone varchar(15), Address varchar(100), Department varchar(100);

update employee_payroll set Address = 'Pune';
update employee_payroll set Department = 'HR' where Name in ('Yogesh','Arjun');
update employee_payroll set Department = 'Manager' where Name not in ('Yogesh','Arjun');
update employee_payroll set Phone = 9922100977 where Name = 'Yogesh';
update employee_payroll set Phone = 8820100907 where Name = 'Sayali';
update employee_payroll set Phone = 7700144970 where Name = 'Arjun';
update employee_payroll set Phone = 8613780911 where Name = 'Neha';

alter table employee_payroll
add Deductions bigint, Taxable_Pay bigint,Income_Tax bigint,Net_Pay bigint;

insert into employee_payroll(Id,Name,Salary,StartDate,Gender,Phone,Address,Department,Deductions,Taxable_Pay,Income_Tax,Net_Pay)values
(5,'Terissa',20000,'2022-04-30','F',7788112233,'Pune','Sales',2000,1000,200,18800),
(6,'Terissa',30000,'2022-02-10','F',9988012033,'Pune','Marketing',2000,1000,200,26800);

select * from employee_payroll;

update employee_payroll set Deductions = 2000,Taxable_Pay = 1000, Income_Tax =200, Net_Pay = 26800 where Name = 'Yogesh';
update employee_payroll set Deductions = 2000,Taxable_Pay = 1000, Income_Tax =200, Net_Pay = 18800 where Name = 'Sayali';
update employee_payroll set Deductions = 2000,Taxable_Pay = 1000, Income_Tax =200, Net_Pay = 36800 where Name = 'Arjun';
update employee_payroll set Deductions = 2000,Taxable_Pay = 1000, Income_Tax =200, Net_Pay = 21800 where Name = 'Neha';

select * from employee_payroll where Name = 'Terissa';

select * from employee_payroll;