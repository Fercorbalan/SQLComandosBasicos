usuariocreate database HolaMundo;
show databases;
use HolaMundo;
CREATE TABLE animales(
	id int,
    tipo varchar(255),
    estado varchar(255),
    PRIMARY KEY (id)
    
    );
    
-- INSERT INTO animales (tipo, estado) VALUES("CHANCHITO", "FELIZ");
-- Esta linea no sera ejecutada

ALTER TABLE animales MODIFY COLUMN id int auto_increment;

SHOW CREATE TABLE animales;

CREATE TABLE `animales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO animales (tipo, estado) VALUES("dragon", "FELIZ");
INSERT INTO animales (tipo, estado) VALUES("perro", "Triste");
INSERT INTO animales (tipo, estado) VALUES("pato", "FELIZ");
INSERT INTO animales (tipo, estado) VALUES("Gato", "Triste");

SELECT * FROM animales;
SELECT * FROM animales WHERE id = 1;
SELECT * FROM animales WHERE estado = "feliz";

SELECT * FROM animales WHERE estado = "feliz" AND tipo = "dragon";

UPDATE animales SET estado = "feliz" where id =5;

DELETE FROM animales where estado = "feliz";
-- Error Code: 1175. You are using safe update mode and you tried 
-- to update a table without a WHERE that uses a KEY column.  
-- To disable safe mode, toggle the option in Preferences -> SQL Editor and reconnect.

DELETE FROM animales where id = 5;
SELECT * FROM animales;
UPDATE animales set estado = "FELIZ" where tipo = "Dragon";
-- Esto tambien arroja un error 1175