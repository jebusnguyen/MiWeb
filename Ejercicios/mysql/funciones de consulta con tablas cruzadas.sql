create table products(
	id int auto_increment,
    name varchar(50),
    marca varchar(50),
    created_by int,
    primary key (id),
    foreign key (created_by) references Users (id)
    );
    
insert into producto (name, created_by, marca)
values
		('ipad', 1, 'apple'),
        ('iphone', 1, 'apple'),
        ('watch', 2, 'apple'),
        ('makbook', 1 , 'apple'),
        ('imac', 3, 'apple'),
        ('ipad mini', 2, 'apple');

select * from producto;
select u.id , u.email from Users u; -- Users u le asigne un alias tempral u a la tabla Users 

select u.id , u.email, p.name from Users u left join producto p on u.id= p.created_by;
-- selecciona las columnas id, email (de la tabla U) y la colimna name (de la tabla p) y realiza una
-- union de conjuntos entre la dos tablas mostrando los datos de la primera tabla prioritariamente
-- mostrando los datos de la columna created_by (de la tabla p) como datos de la columna id (de la tabla u)
-- por que son iguales
  
select u.id , u.email, p.name from Users u right join producto p on u.id= p.created_by;
-- En esta ocasion en la union de conjuntos entre las dos tablas se le dara prioridad y orden a los datos
-- de la segunda tabla

select u.id , u.email, p.name from Users u inner join producto p on u.id= p.created_by;
-- En esta ocasion se pide una interseccion de conjuntos(recordando que una interseccion excluye los elementos
-- que no se encuentran en ambos conjuntos)de las tablas y ordena los datos dependiendo de la columna usada
-- como llave foranea

select u.id , u.email, p.name, p.id from Users u cross join producto p; 
-- Pide el producto cartesiano de las tablas como si fueran vectores o matrices (2x2)

select count(id), marca from producto group by marca;
-- muestra la cantidad de elementos de la columna id que se encuentran agrupados en la columna marca y
-- taambien muestra los datos de la columna marca

select count(p.id), u.nombre, u.id from producto p left join Users u on u.id= p.created_by group by p.created_by; 
-- muestra la cantidad de elementos de la columna id ( de la tabla producto) que se encuentran agrupados 
-- en la columna created_by y muestra los datos de las columnas nombres y ids (de la tabla Users)
-- asì sabemos cuantos productos crearon cada usuario con su id 

select count(p.id), u.nombre, u.id from producto p left join Users u on u.id= p.created_by
group by p.created_by having count(p.id)>=2; 
-- lo mismo de arriba pero solo muestra los datos que minimo tengan 2 enumeraciones agrupadas en Created_by

drop table user; -- elimine una tabla llamada user (tenia errores y fue mejor crear la tabla Users desde 0)