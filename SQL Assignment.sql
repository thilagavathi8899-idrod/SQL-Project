-- to create database employee
create database employee;
use employee;
create table Departments (
Department_id int,
Department_name varchar(100)
);

create table Location (
Location_id int,
Location varchar(30)
);

create table Employees (
Employee_id int,
Employee_name varchar(50),
Gender enum('M','F'),
Age int,
Hire_Date date,
Designation varchar(100),
Department_id int,
Location_id int,
Salary decimal(10,2)
);	

ALTER TABLE Employees
ADD email VARCHAR(255);

alter table employees modify designation varchar(150);
alter table employees drop age;
alter table employees rename column hire_date to date_of_joining;

rename table departments to departments_info;
rename table location to locations;


truncate table employees;
drop table employees;
drop database employee;


create database employee;
use employee;
create table departments (
department_id int primary key,
department_name varchar (100) not null unique
);
create table location (
location_id int auto_increment primary key ,
location varchar(30) not null unique
);
create table employees (
employee_id int primary key,
emplyoee_name varchar(50) not null,
gender enum('M','F') check (gender in ('M','F')),
age int check (age>=18),
designation varchar(100),
salary decimal(10,2),
hire_date date default(current_date),
department_id int,
location_id int,
  foreign key (department_id) references departments(department_id),
 foreign key (location_id) references location(location_id)
);


