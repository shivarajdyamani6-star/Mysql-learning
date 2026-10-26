create database test;
use test;
create table employees( 
employee_id int primary key auto_increment,
first_name varchar (50) not null,
last_name varchar(50)not null,
joining_date date,
hire_date date default (current_date()),
email varchar(100) unique,
phone_number varchar(100) unique,
salary decimal(10,2) check (salary > 0.0),
employment_status enum( 'active','on leave','terminated') default 'active',
created_at timestamp default current_timestamp,
updated_at timestamp default current_timestamp on update current_timestamp
);


insert into employees (
first_name,
last_name,
joining_date,
email,
phone_number,
salary
 )
values ( 
'shivar',
'dyi',
'2027-02-08',
'shivarayamani6@gmail.com',
'9945952550',
'50000.00'
);

select * from employees;

alter table employees
add column
 department_id int;

alter table employees
modify column department_id int not null;

alter table employees add foreign key (department_id) references departments (department_id);

insert into departments (department_name, location)
values
('IT','BUILDING A'),
('SALES','BUILDING B'),
('HR','BUILDING C');

select *from departments;





create table departments(
department_id int primary key auto_increment,
department_name varchar (100) not null,
location varchar(100),
created_at timestamp default current_timestamp,
updated_at timestamp default current_timestamp on update current_timestamp
);