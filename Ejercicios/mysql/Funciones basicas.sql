-- create database holamundo;
use holamundo;
-- create table Animales(
-- id int auto_increment, el id siempre necesita la funcion autoincrement y siempre llevara un valor de numero entero
-- tipo varchar(255), 
-- estado varchar(255),
-- primary key (id), asi definimos la primar key de una lista
-- );

-- alter table Animales modify colum id int auto_increment;
-- aqui esta solicitando alterar la tabla modificando la columna id
-- y agregar la propiedad autoincrement (asumiendo que no la tiene claro)

insert into Animales (tipo, estado) values ('chanchito', 'feliz');
insert into Animales (tipo, estado) values ('dragon', 'feliz');
insert into Animales (tipo, estado) values ('felipe', 'triste');
-- esta es la forma de agregar datos a una tabla

select * from Animales;
select * from Animales where id=1;
select * from Animales where estado= 'feliz' and tipo= 'chanchito';

update Animales set estado= 'feliz' where id= 5;
-- esta funcion sirve para actualizar datos de una columna en este caso
-- modifica la propiedad feliz del elemento con id =5

select * from Animales where id=5;

delete from Animales where estado= 'feliz';
-- Error Code: 1175. You are using safe update mode and you tried to update a table without a WHERE that uses a KEY column.  To disable safe mode, toggle the option in Preferences -> SQL Editor and reconnect.
-- Este es un control de seguridad para no borrar accidentalmente datos 
-- se puede desconfigurar pero no es recomendable. consiste en oligar
-- al sistema a ejecutar delete o update exclusivamente si mencionas a la columna
-- id

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










 