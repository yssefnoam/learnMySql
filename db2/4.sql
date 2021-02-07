use info1;
-- find any item in table ordersItem that his order Id match < orderId date between 2021-2-1 and 2021-2-8
select * from ordersItem
where orderId in (
	select orderId from orders
	where orderDate
	between '2021-02-01' and '2021-02-08'
);
