create table orders (
    id serial primary key,
    customer_id int,
    order_date date,
    total_amount numeric(10,2)
);

insert into orders (customer_id, order_date, total_amount) values
(1, '2023-01-10', 12000000),
(2, '2023-03-15', 8000000),
(3, '2023-07-22', 15000000),
(1, '2024-02-05', 20000000),
(2, '2024-05-18', 9000000),
(3, '2024-09-30', 18000000),
(4, '2024-11-12', 7000000),
(1, '2025-01-20', 30000000),
(2, '2025-04-08', 25000000),
(3, '2025-06-25', 10000000);

select
    sum(total_amount) as total_revenue,
    count(*) as total_orders,
    avg(total_amount) as average_order_value
from orders;

select
    extract(year from order_date) as order_year,
    sum(total_amount) as total_revenue
from orders
group by extract(year from order_date)
having sum(total_amount) > 50000000
order by order_year;

select *
from orders
order by total_amount desc
limit 5;
