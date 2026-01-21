create table orderinfo (
    id serial primary key,
    customer_id int,
    order_date date,
    total numeric(10,2),
    status varchar(20)
);

insert into orderinfo (customer_id, order_date, total, status) values
(1, '2024-10-02', 450000, 'completed'),
(2, '2024-10-10', 750000, 'pending'),
(3, '2024-09-28', 1200000, 'processing'),
(1, '2024-10-25', 520000, 'completed'),
(4, '2024-10-30', 980000, 'cancelled');

select *
from orderinfo
where total > 500000;

select *
from orderinfo
where order_date between '2024-10-01' and '2024-10-31';

select *
from orderinfo
where status <> 'completed';

select *
from orderinfo
order by order_date desc
limit 2;
