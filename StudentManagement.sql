create database quan_ly_ban_hang;

use quan_ly_ban_hang;

create table customer(
customer_id bigint primary key auto_increment,
c_name nvarchar(20),
c_age int check (c_age between 0 and 150)
);

create table `order`(
order_id bigint primary key auto_increment,
order_date datetime,
order_total_price bigint,
customer_id bigint not null,
foreign key(customer_id) references customer(customer_id)
);

create table product(
product_id bigint primary key auto_increment,
p_name nvarchar(20),
p_price bigint
);

create table order_detail(
order_id bigint,
product_id bigint,
od_quantity int,
foreign key(order_id) references `order`(order_id),
foreign key(product_id) references product(product_id)
);

