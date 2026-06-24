create database account;
use account;
create  table shopping1(product_id int auto_increment primary key ,product_name varchar(20),price float);
create table orders(product_id int auto_increment primary key,order_status varchar(20),shipping_details varchar(20));
insert into shopping1(product_name,price)values('sun screen',250),('mixie',2000),('pd fan',2500),
('laptop',25000),('Tv',48000),
('notebook',125);
insert into orders(order_status,shipping_details)values('confirmed','shipped'),('cnfirmed','pending'),('confirmed','pending')
,('confirmed','shipped'),('cnfirmed','pending');
select*from orders;
select*from shopping1;
select  shopping1.product_id, shopping1.product_name,orders.shipping_details from shopping1
left join orders on shopping1.product_id=orders.product_id;
select shopping1.product_name,orders.shipping_details from shopping1
right join orders on shopping1.product_id=orders.product_id;
select  shopping1.product_id, shopping1.product_name,orders.shipping_details from shopping1
left join orders on shopping1.product_id=orders.product_id
union
select  shopping1.product_id, shopping1.product_name,orders.shipping_details from shopping1
right join orders on shopping1.product_id=orders.product_id;
select shopping1.product_name,orders.shipping_details from shopping1
cross join orders;


