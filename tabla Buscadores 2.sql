CREATE TABLE usuario2 (
	id int not null auto_increment,
    nombre varchar(50) not null,
    edad int not null,
    email varchar(100) not null,
    primary key (id)
);

INSERT INTO usuario2 (nombre, edad, email) values ("Fernando", 40, "fmcorba@gmail.com");
INSERT INTO usuario2 (nombre, edad, email) values ("Cintia", 39, "cintiadip_511@gmail.com");
INSERT INTO usuario2 (nombre, edad, email) values ("Lucas", 8, "lucascorbalandip@gmail.com");
INSERT INTO usuario2 (nombre, edad, email) values ("Leon", 2, "leoncorbalan@gmail.com");

select * from usuario2;
select * from usuario2 limit 1;
select * from usuario2 where edad > 15;
select * from usuario2 where edad <= 15;
select * from usuario2 where edad > 20 and email ="fmcorba@gmail.com";
select * from usuario2 where edad < 20 or  email = "cintiadip_511@gmail.com";
select * from usuario2 where email != "cintiadip_511@gmail.com"; -- mail diferentes al mencionado
select * from usuario2 where edad between 15 and 40; -- para buscar los usuario entre 15 y 40
select * from usuario2 where email like "%gmail%"; -- se busca elemento elemento mencionado donde se que este
select * from usuario2 where email like "gmail"; -- busca si algun elemento termusuarioina con la seleccion
select * from usuario2 order by edad asc; -- Muestra resultados de manera ascendente
select * from usuario2 order by edad desc; -- Muestra resultados de manera descendente

select max(edad) as mayor from usuario; -- busca solo la columna deseada en el maximo
select min(edad) as mayor from usuario; -- busca solo la columna deseada en el minimo

select id, nombre, edad from usuario; -- busca las columnas deseadas por orden de ID
select id, nombre as name from usuario; -- cambia nombre del titulo de la columna

select count (id), marca from product
