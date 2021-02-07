use info1;

-- add one column in ordersItem 
alter table ordersItem
add column price int;
describe ordersItem;

alter table ordersItem
add column test1 int,
add column test2 int,
add column test3 int,
add column test4 int;
describe ordersItem;
-- modify one column in ordersItem 
alter table ordersItem
modify price int default 0;
describe ordersItem;

-- modify one column in ordersItem 
alter table ordersItem
drop price,
drop test1,
drop test2,
drop test3,
drop test4;
describe ordersItem;
