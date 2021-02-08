use book;

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

select Title,sum(Rating) as rate
from Book
left join BookReview
on Book.ISBN=BookReview.ISBN
group by Title;

select Title,sum(Rating) as rate,
count(Rating) as counter
from Book
left join BookReview
on Book.ISBN=BookReview.ISBN
group by Title
