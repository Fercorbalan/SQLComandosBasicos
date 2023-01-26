CREATE TABLE usuario (
	id int not null auto_increment,
    nombre varchar(50) not null,
    edad int not null,
    email varchar(100) not null,
    primary key (id)
);

INSERT INTO usuario (nombre, edad, email) values ("Fernando", 40, "fmcorba@gmail.com");
INSERT INTO usuario (nombre, edad, email) values ("Cintia", 39, "cintiadip_511@gmail.com");
INSERT INTO usuario (nombre, edad, email) values ("Lucas", 8, "lucascorbalandip@gmail.com");
INSERT INTO usuario (nombre, edad, email) values ("Leon", 2, "leoncorbalan@gmail.com");

select * from usuario;
select * from usuario limit 1; -- muestra el primer registro
select * from usuario limit 2; -- muestra hasta el 2do registro
select * from usuario where edad > 15;
select * from usuario where edad <= 15;
select * from usuario where edad > 20 and email ="fmcorba@gmail.com";
select * from usuario where edad < 20 or  email = "cintiadip_511@gmail.com";
select * from usuario where email != "cintiadip_511@gmail.com"; -- mail diferentes al mencionado
select * from usuario where edad between 15 and 40; -- para buscar los usuario entre 15 y 40
select * from usuario where email like "%gmail%"; -- se busca elemento mencionado donde sea que este
select * from usuario where email like "%gmail"; -- busca si algun elemento termina con la seleccion
select * from usuario order by edad asc; -- Muestra resultados de manera ascendente
select * from usuario order  by edad desc;-- Muestra resultados de manera descendente

select max(edad) as mayor from usuario; -- busca solo la columna deseada en el maximo
select min(edad) as mayor from usuario; -- busca solo la columna deseada en el minimo

select id, nombre, edad from usuario; -- busca las columnas deseadas por orden de ID
select id, nombre as name from usuario; -- cambia nombre del titulo de la columna

select count (id), marca from product
