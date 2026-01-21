create table employee (
    employee_id serial primary key,
    full_name varchar(100) not null,
    department varchar(50) not null,
    salary numeric(12,0) not null,
    hire_date date not null
);

insert into employee (full_name, department, salary, hire_date) values
('nguyễn an', 'it', 8000000, '2023-02-10'),
('trần minh', 'hr', 6500000, '2022-11-05'),
('lê anh tuấn', 'it', 12000000, '2023-06-20'),
('phạm hoàng', 'sales', 5500000, '2023-09-01'),
('đỗ thảo an', 'marketing', 7000000, '2024-01-15'),
('vũ quang', 'it', 5900000, '2023-12-12');

update employee
set salary = salary * 1.10
where department = 'it';

delete from employee
where salary < 6000000;

select *
from employee
where full_name ilike '%an%';

select *
from employee
where hire_date between '2023-01-01' and '2023-12-31';
