drop database student;
create database student;
use student;
create table studentinfo(
	id int primary key,
	name varchar(10)
);

create table studentDegree(
	id int,
	degree Decimal(4,2),
	CONSTRAINT studentDegree_fk
	FOREIGN KEY (id)
	REFERENCES studentinfo(id)
	ON DELETE CASCADE
	ON UPDATE CASCADE
);

insert into studentinfo(id,name)values(1,"youssef");
insert into studentDegree(id,degree)values(1,11.50);
insert into studentDegree(id,degree)values(1,15.70);
insert into studentDegree(id,degree)values(1,7.50);
insert into studentDegree(id,degree)values(1,14.50);

select * from studentinfo;
select * from studentDegree;

update studentinfo set id=3 where id=1;

select * from studentinfo;
select * from studentDegree;

delete from studentinfo where id=3;
select * from studentinfo;
select * from studentDegree;
