/*CRUD create read update delete.*/

show databases;
use Animals;
select database();

drop table cats;

create table cats
( cat_id int Not null auto_increment,
  name varchar(100),
  breed varchar(100),
  age int,
  primary key(cat_id)
  );
  
  desc cats;
  
  INSERT INTO cats(name, breed, age) 
VALUES ('Ringo', 'Tabby', 4),
       ('Cindy', 'Maine Coon', 10),
       ('Dumbledore', 'Maine Coon', 11),
       ('Egg', 'Persian', 4),
       ('Misty', 'Tabby', 13),
       ('George Michael', 'Ragdoll', 9),
       ('Jackson', 'Sphynx', 7);
 
 
 select * from cats; #* means all the columns
 
 select name from cats; # it just gives me the names
 
 select name, age from cats; # select columns name and age
 
 /* where*/
 
 select * from cats where age = 4; #select every column where the cats have 4 years
 
 select * from cats where name = 'Egg'; 
 
 select * from cats where breed = 'tabby';
 
 select cat_id, age from cats where cat_id = age;
 
 /* aliases*/
 
 select cat_id as id, name as cat_name from cats; # print the columns with the alias we want
 
 select name as 'cat name' from cats; # we need to use quotes for spaces
 
 /* update */
 
UPDATE cats SET breed='Shorthair' 
WHERE breed='Tabby';
 
 select * from cats;
 
update cats set age = 14
where name = 'misty';

select * from cats;

/*delete from a table, when we delete ids don't change */
delete from cats
where name = 'Egg';

delete from cats; #this command would delete everything in the table





 
 
 
 
       
       