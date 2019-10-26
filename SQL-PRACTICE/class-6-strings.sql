/* book store database working with strings */
CREATE TABLE books 
    (
        book_id INT NOT NULL AUTO_INCREMENT,
        title VARCHAR(100),
        author_fname VARCHAR(100),
        author_lname VARCHAR(100),
        released_year INT,
        stock_quantity INT,
        pages INT,
        PRIMARY KEY(book_id)
    );

INSERT INTO books (title, author_fname, author_lname, released_year, stock_quantity, pages)
VALUES
('The Namesake', 'Jhumpa', 'Lahiri', 2003, 32, 291),
('Norse Mythology', 'Neil', 'Gaiman',2016, 43, 304),
('American Gods', 'Neil', 'Gaiman', 2001, 12, 465),
('Interpreter of Maladies', 'Jhumpa', 'Lahiri', 1996, 97, 198),
('A Hologram for the King: A Novel', 'Dave', 'Eggers', 2012, 154, 352),
('The Circle', 'Dave', 'Eggers', 2013, 26, 504),
('The Amazing Adventures of Kavalier & Clay', 'Michael', 'Chabon', 2000, 68, 634),
('Just Kids', 'Patti', 'Smith', 2010, 55, 304),
('A Heartbreaking Work of Staggering Genius', 'Dave', 'Eggers', 2001, 104, 437),
('Coraline', 'Neil', 'Gaiman', 2003, 100, 208),
('What We Talk About When We Talk About Love: Stories', 'Raymond', 'Carver', 1981, 23, 176),
("Where I'm Calling From: Selected Stories", 'Raymond', 'Carver', 1989, 12, 526),
('White Noise', 'Don', 'DeLillo', 1985, 49, 320),
('Cannery Row', 'John', 'Steinbeck', 1945, 95, 181),
('Oblivion: Stories', 'David', 'Foster Wallace', 2004, 172, 329),
('Consider the Lobster', 'David', 'Foster Wallace', 2005, 92, 343);


SELECT database();

CREATE DATABASE book_shop;

use book_shop;

show tables;



DESC books;

SELECT * FROM books;


#concat
select 
	concat(author_fname,'  ',author_lname) as 'full name'
from books;

#concat with a word separator
select
	concat_ws('-',title, author_fname, author_lname)
from books;

# using substring
select 
	substring(title,1,10) as 'short title'
from books;

#using strings functions togheter 
select 
	concat(
    substring(title,1,10),'...'
    ) as 'short title'
    
from books;

# using replace to replace the e for 3 from the title of the first row
select 
	replace(title,'e', 3) as 'title replaced'
from books where book_id = 1;

#using reverse
select concat('juan',reverse('juan'));

# using char length

select 
	author_fname as 'first name', 
    char_length(author_fname) as 'fname length'
from books;

#using upper
select
	upper(title) as 'title'
from books;
