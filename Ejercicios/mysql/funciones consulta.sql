use holamundo;
create table Users (
id int auto_increment,
nombre varchar(255),
edad int,
email varchar(255),
primary key(id)
);

insert into Users (nombre, edad, email) values ('oscar', 25, 'oscar@gmail.com');
insert into Users (nombre, edad, email) values ('layla', 16, 'layla@gmail.com');
insert into Users (nombre, edad, email) values ('nicolas',36, 'nico@gmail.com');
insert into Users (nombre, edad, email) values ('chanchito', 7, 'oscar@gmail.com');

select * from Users;

select * from Users limit 1;
select * from Users where edad > 15;
select * from Users where edad >= 15;
select * from Users where edad > 15 and email= 'oscar@gmail.com';
select * from Users where edad > 20 or email= 'layla@gmail.com';
select * from Users where email != 'layla@gmail.com';
select * from Users where edad between 15 and 30;
select * from Users where email like '%gmail%';
select * from Users where email like '%gmail';

select * from Users order by edad asc;
select * from Users order by edad desc;

select max(edad) as mayor from Users; -- despues de as sigue como nombrar al resultado de tu busqeda
select min(edad) as menor from Users;

select id, nombre from Users;
select id, nombre as Name from Users;



