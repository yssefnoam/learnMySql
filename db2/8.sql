use info1;

describe orders;

select orderDate
,count(*) as counter
from orders
group by orderDate;
