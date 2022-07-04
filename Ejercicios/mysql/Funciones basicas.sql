-- create database holamundo;
use holamundo;
-- create table Animales(
-- id int auto_increment, 
-- tipo varchar(255),
-- estado varchar(255),
-- primary key (id),
-- );

-- alter table Animales modify colum id int auto_increment;

insert into Animales (tipo, estado) values ('chanchito', 'feliz');
insert into Animales (tipo, estado) values ('dragon', 'feliz');
insert into Animales (tipo, estado) values ('felipe', 'triste');

select * from Animales;
select * from Animales where id=1;
select * from Animales where estado= 'feliz' and tipo= 'chanchito';

update Animales set estado= 'feliz' where id= 5;

select * from Animales where id=5;

delete from Animales where estado= 'feliz';
-- Error Code: 1175. You are using safe update mode and you tried to update a table without a WHERE that uses a KEY column.  To disable safe mode, toggle the option in Preferences -> SQL Editor and reconnect.


select * from Animales; 
delete from Animales where id=1;
select * from Animales; 
delete from Animales where id=2;
select * from Animales;

update Animales set id=1 where id=3;
select * from Animales;
update Animales set id=2 where id=4;
update Animales set id=3 where id=5;
select * from Animales;

delete from  Animales where id=3;
select* from Animales;

update Animales set estado='triste' where estado='feliz'; 
-- error 1175 update y delete por seguridad solo se pueden ejecutar con un where id










 