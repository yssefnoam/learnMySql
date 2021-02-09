-- creat a view (virtual table)
use book;

show table;
desc BookReview;
desc Book;

create view bookv
as
select Title, rating
from Book
inner join BookReview
on Book.ISBN=BookReview.ISBN;
select * from bookv;
select Title from bookv;
