#Refining our queries

show databases;
use book_shop;
select database();

INSERT INTO books
    (title, author_fname, author_lname, released_year, stock_quantity, pages)
    VALUES ('10% Happier', 'Dan', 'Harris', 2014, 29, 256), 
           ('fake_book', 'Freida', 'Harris', 2001, 287, 428),
           ('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367);


SELECT title FROM books;

#avoid duplicate results with disctinct
select distinct author_lname from books;

#--------order by----------

select title from books 
	order by released_year;
    
select author_fname, author_lname from books
	order by 2,1; #2 references author_lname

# select the five newest realeased books
select title as 'The newest five released' 
from books order by released_year desc limit 5;    

#select all the titles that start with the
select title from books
	where title like 'the%';
    
#using escape character
select title from books
	where title like '%\%%';
    
#select books with a stock of 4 digit
select title, stock_quantity from books
	where stock_quantity like '____';
    

#select books that have the word stories on their title
select title from books
	where title like '%stories';

#select the longest books
select title, pages from books
	order by pages desc limit 1;
    
# Print a summary containing the title and year, for the 3 most recent books
select concat(title,' - ', released_year) as 'summary' 
	from books order by released_year desc limit 3;
    
#Find all books with an author_lname that contains a space(" ")
select title, author_lname from books
where author_lname like '% %';