use info1;

select upper(orderName),price
from ordersItem;
select orderName,instr(orderName,'te')
from ordersItem;
select orderName,substr(orderName,1,3)
from ordersItem;
select concat(orderName, " is woooow.")
from ordersItem;
select orderName,price, round(price,6)
from ordersItem;
select orderName,price, truncate(price,1)
from ordersItem;
select orderName,price, mod(price,7)
from ordersItem;
