use book;

--- create index
create index bookindex
on book(ISBN);

select Title,Rating from book
inner join BookReview
on book.ISBN-BookReview.ISBN;

-- delete index

drop index bookindex on book;
