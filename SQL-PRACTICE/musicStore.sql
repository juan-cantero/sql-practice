create table musicStore (id integer primary key not null auto_increment,
 composer text, cd text, quantity integer, price integer);
 insert into musicStore values (null,"bach","string quartets",
10,100);

insert into musicStore values (2,"mozart","operas",
10,90);

insert into musicStore values (3,"dream theater","pull me",
22,99);

insert into musicStore values (4,"john mayer","horny",
24, 88);

insert into musicStore values (5,"norah jones","like home",
44,99);

insert into musicStore values (6, "chopin","serenate",
55,98);

insert into musicStore values (7, "steve vai",
"for the love of god",88,78);

insert into musicStore values (8, "maria carey","love",
22,22);

insert into musicStore values (9, "babasonicos", "el loco",
22,23);

insert into musicStore values (10, "la bersuit", "de la cabeza",9,88);

insert into musicStore values (11, "satriani", "blue sky",
22,92);

insert into musicStore values (12, "nujabes","samurai",
33,99);

insert into musicStore values (13, "salinas", "dulce",
44,55);

insert into musicStore  values (14, "bb king", "blues", 
44, 97);

insert into musicStore values(15, "jimy hendrix","voodo",
33,999);


select * from musicStore order by price;
select sum(quantity)as total_de_cds from musicStore;