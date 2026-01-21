create table course (
    id serial primary key,
    title varchar(100),
    instructor varchar(50),
    price numeric(10,2),
    duration int
);

insert into course (title, instructor, price, duration) values
('sql cơ bản', 'an', 800000, 25),
('sql nâng cao', 'bình', 1500000, 35),
('postgresql thực chiến', 'chi', 2000000, 40),
('python cho data', 'dũng', 1200000, 28),
('demo khóa học sql', 'em', 400000, 10),
('cơ sở dữ liệu', 'giang', 600000, 32);

update course
set price = price * 1.15
where duration > 30;

delete from course
where title ilike '%demo%';

select *
from course
where title ilike '%sql%';

select *
from course
where price between 500000 and 2000000
order by price desc
limit 3;
