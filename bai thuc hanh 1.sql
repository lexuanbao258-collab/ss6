create table product (
    product_id serial primary key,
    product_name varchar(100),
    category varchar(50),
    price numeric(12,0),
    quantity int
);

insert into product (product_name, category, price, quantity) values
('laptop dell', 'điện tử', 20000000, 10),
('điện thoại samsung', 'điện tử', 9000000, 25),
('tai nghe bluetooth', 'điện tử', 1500000, 50),
('bàn làm việc', 'nội thất', 3000000, 15),
('ghế văn phòng', 'nội thất', 2500000, 8);

select * from product;

select *
from product
order by price desc
limit 3;

select *
from product
where category = 'điện tử'
  and price < 10000000;

select *
from product
order by quantity asc;
