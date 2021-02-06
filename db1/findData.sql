use company;
-- select * from employee;
-- | salary ,field, field, ...

-- select *
-- from employee
-- where salary>=200 and salary<=400

-- select *
-- from employee
-- where firstName like "__u%"

-- select *
-- from employee
-- where lastName = "noam"

-- select *
-- from employee
-- where lastName is null

-- select *
-- from employee
-- order by salary -- or  order by salary DESC
select *
from employee
where firstName like "%s%"
order by salary DESC
