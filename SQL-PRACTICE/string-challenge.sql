SHOW DATABASES;
USE book_shop;
SELECT DATABASE();

show tables;

select * from books;

select reverse("why my cat look at me");

select 
	replace(title,' ', '->') as 'replaced title'
from books;

select 
	author_fname as 'fordwars',
    reverse(author_fname) as 'backwards'
from books;

select 
	concat(upper(author_fname),' ',upper(author_lname)) as 'full name in caps'
from books;

select 
	concat(title, ' was realeased in ', released_year) as 'blurb'
from books;

select 
	title as 'title',
    char_length(title)
from books;

select 
	concat(substring(title,1,10),'...') as 'short title',
    concat(author_lname,' ', author_fname) as 'author name',
    concat(stock_quantity, ' in stock')
from books;
    
