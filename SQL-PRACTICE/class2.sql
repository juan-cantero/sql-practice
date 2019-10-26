show databases;
create database Animals;
use Animals;

create table cats (name varchar(50), age int);## always use plurals to create a database for convention 
desc cats; ## shows the columns from the table cat
show columns from cats;

select database();## to know wich database i'm using

insert into cats(name, age)# insert data into cats columns name and age
values ('joel', 2);

insert into cats(name, age)
values ('garfiel', 4);

/*Multiple insertion*/
insert into cats (name, age)
values ('gordito', 2),
		('pedrito', 4),
        ('jorel', 8);
        

select * from cats;

show warnings;#shows the warnings

create table cats2 (name varchar(50) not null, age int not null);# we use not null as a constraint.

