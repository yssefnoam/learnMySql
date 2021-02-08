drop database info1;

create database info1;

use info1;

create table orders(
	orderId int auto_increment,
	orderDate date,
	constraint orders_pk
	primary key(orderId)
);
-- orderDate   == '2021-2-7'

create table ordersItem(
	orderId int not null,
	orderName varchar(26),
	order_Description varchar(150),
	price decimal(6,2),

	constraint ordersItem_fk
	foreign key(orderId)
	references orders(orderId)
);
-- (orderId, orderName, order_Description)  == (1,'phone','nokia from version')
show tables;
describe orders;
describe ordersItem;
