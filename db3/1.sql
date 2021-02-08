drop database book;
create database book;

use book;

-- create table Book(
-- 	ISBN char(13) not null,
-- 	Title varchar(70) not null,
-- 	Description varchar(100),
-- 	Category int(11),
-- 	Edition char(30),
-- 	PublisherID int(11) not null,
-- 	constraint books_pk primary key(ISBN)
-- );
create table Book(
	ISBN char(13) not null,
	Title varchar(70) not null,
	Description varchar(100),
	Category int(11),
	Edition char(30),
	PublisherID int(11) not null
);
insert into Book(ISBN,Title,PublisherID) values(1,"book 1",1231);
insert into Book(ISBN,Title,PublisherID) values(2,"book 2",1232);
insert into Book(ISBN,Title,PublisherID) values(3,"book 3",1233);
insert into Book(ISBN,Title,PublisherID) values(4,"book 4",1234);
insert into Book(ISBN,Title,PublisherID) values(5,"book 5",1235);
insert into Book(ISBN,Title,PublisherID) values(6,"book 6",1236);
insert into Book(ISBN,Title,PublisherID) values(7,"book 7",1237);
insert into Book(ISBN,Title,PublisherID) values(8,"book 8",1238);
insert into Book(ISBN,Title,PublisherID) values(9,"book 9",1239);
insert into Book(ISBN,Title,PublisherID) values(10,"book 11",1240);
insert into Book(ISBN,Title,PublisherID) values(11,"book 11",1241);
-- desc Book;
create table BookReview(
	ISBN char(13) not null,
	ReviewerID int(11) not null,
	Rating int(11),
	Comments varchar(255)
);
-- create table BookReview(
-- 	ISBN char(13) not null,
-- 	ReviewerID int(11) not null,
-- 	Rating int(11),
-- 	Comments varchar(255),
-- 	constraint BookReview
-- 	foreign key(ISBN)
-- 	references  Book(ISBN)
-- );
insert into BookReview(ISBN,ReviewerID,Rating,Comments) values(1,1232,7,'good book');
insert into BookReview(ISBN,ReviewerID,Rating,Comments) values(2,1233,5,'nice book');
insert into BookReview(ISBN,ReviewerID,Rating,Comments) values(3,1234,3,'bad book');
insert into BookReview(ISBN,ReviewerID,Rating,Comments) values(4,1235,8,'great book');
insert into BookReview(ISBN,ReviewerID,Rating,Comments) values(5,1236,5,'ok');
insert into BookReview(ISBN,ReviewerID,Rating,Comments) values(6,1237,7,'teeest');
insert into BookReview(ISBN,ReviewerID,Rating,Comments) values(7,1238,9,'comment 1');
insert into BookReview(ISBN,ReviewerID,Rating,Comments) values(8,1239,8,'comment 2');
insert into BookReview(ISBN,ReviewerID,Rating,Comments) values(8,1239,0,'comment 3');
-- desc BookReview;

create table Reviewer(
	ReviewerID int(11) not null,
	Name varchar(20) not null,
	EmployedBy char(30)
);

insert into Reviewer(ReviewerID,Name) values(1232,'youssef');
insert into Reviewer(ReviewerID,Name) values(1233,'yassir');
insert into Reviewer(ReviewerID,Name) values(1234,'yassin');
insert into Reviewer(ReviewerID,Name) values(1235,'hamza');
insert into Reviewer(ReviewerID,Name) values(1236,'mestafa');
insert into Reviewer(ReviewerID,Name) values(1238,'hicham');
insert into Reviewer(ReviewerID,Name) values(1241,'mohamed');
insert into Reviewer(ReviewerID,Name) values(1239,'anass');
insert into Reviewer(ReviewerID,Name) values(1240,'moad');
select * from Book;
select * from BookReview;
-- the whole code in this file is for this test; hhhh
--
--     -------------------------
--     |         |...|         | 
--     |         |...|         |   
--     |         |...|         |   inner join
--     |         |...|         |
--     |         |...|         |
--     |         |...|         |
--     -------------------------
--

select Title,Rating,Name
from Book inner join BookReview
on Book.ISBN=BookReview.ISBN
inner join Reviewer
on BookReview.ReviewerID=Reviewer.ReviewerID;
-- show all books that rated and not
--
--     -------------------------
--     |.........|...|         | 
--     |.........|...|         |   
--     |.........|...|         |   left join
--     |.........|...|         |
--     |.........|...|         |
--     |.........|...|         |
--     -------------------------
--
select Title,Rating
from Book left join BookReview
on Book.ISBN=BookReview.ISBN
left join Reviewer
on BookReview.ReviewerID=Reviewer.ReviewerID;

--
--     -------------------------
--     |         |...|.........| 
--     |         |...|.........|   
--     |         |...|.........|   right join
--     |         |...|.........|
--     |         |...|.........|
--     |         |...|.........|
--     -------------------------
--
select Title,Rating
from Book right join BookReview
on Book.ISBN=BookReview.ISBN
right join Reviewer
on BookReview.ReviewerID=Reviewer.ReviewerID;

--
--     -------------------------
--     |.........|...|.........| 
--     |.........|...|.........|   
--     |.........|...|.........|   full join
--     |.........|...|.........|
--     |.........|...|.........|
--     |.........|...|.........|
--     -------------------------
--
select PublisherID
from Book
union
select ReviewerID as PublisherID
from Reviewer
