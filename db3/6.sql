use book;
desc book;

create table bookname(
	Title varchar(70));

insert into bookname
select Title from Book;

select * from bookname;
select Title,ISBN from Book;
