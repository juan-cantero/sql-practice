
create table groceries (id integer primary key,name text, quantity integer);
insert into groceries values (1,"bananas",4);
insert into groceries values (2,"peanut butter",1);
insert into groceries values (3,"dark chocolate bars",2);
select * from groceries;
alter table groceries
add aisle integer;
update groceries
set aisle = 7
where id =1;