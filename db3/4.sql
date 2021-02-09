use book;

show table;
desc BookReview;
desc Book;

insert into Book(ISBN,Title,PublisherID) values(9,"BOOK 1",1431);


create view bookv2 as select Title, rating from Book inner join BookReview on Book.ISBN=BookReview.ISBN;
-- delete duplicated lines;
select  Title from bookv2;
select distinct Title from bookv2;
-- list all views;
show full tables in book
where table_type='VIEW';
select Title from bookv2 where upper(Title) like 'B%';
