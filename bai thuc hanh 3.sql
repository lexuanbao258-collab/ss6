create table customer (
    id serial primary key,
    name varchar(100),
    email varchar(100),
    phone varchar(20),
    points int
);

insert into customer (name, email, phone, points) values
('nguyễn an', 'an@gmail.com', '0901111111', 120),
('trần bình', 'binh@gmail.com', '0902222222', 300),
('lê chi', null, '0903333333', 150),
('phạm dũng', 'dung@gmail.com', '0904444444', 500),
('vũ em', 'em@gmail.com', '0905555555', 200),
('đỗ giang', 'giang@gmail.com', '0906666666', 450),
('hoàng hà', 'ha@gmail.com', '0907777777', 250);

select distinct name
from customer;

select *
from customer
where email is null;

select *
from customer
order by points desc
limit 3 offset 1;

select *
from customer
order by name desc;
