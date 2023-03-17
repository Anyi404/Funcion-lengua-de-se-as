/*
La función que se va a crearse sera para obtener la dirección
*/
create database Direccion_usuarios;
use Direccion_usuarios;

create table direcciones(
    id int not null,
    Nombre varchar(20),
    Apellido varchar(20),
    Ciudad varchar(100),
    Direccion varchar(100),
    primary key(id)
);
insert into direcciones(id,Nombre,Apellido,Ciudad,Direccion)
 values(5502,'Natalia','Rico','Bogota','ccccccccc'),(5503,'Carlos','Lopez','Bogota','bbbbbbbb'),(5504,'Camilo','Isaza','Bogota','dddddddd'),(5505,'Helena','Ramirez','Bogota','eeeeeeeeee'),(5506,'Santiago','Hernandez','Bogota','fffffffffff'),(5507,'Paola','Rivera','Bogota','gggggggggggg'),(5508,'Samantha','Martinez','Bogota','hhhhhhhhhhh'),(5509,'Nicolas','Herrera','Bogota','iiiiiiiiii'),(55010,'Tania','Sanchez','Bogota','jjjjjjjjjjjj');

DELIMITER $$
CREATE FUNCTION obtener_direccion(calle VARCHAR(100), ciudad VARCHAR(100), codigo_postal VARCHAR(10))
RETURNS VARCHAR(250)
DETERMINISTIC
BEGIN
    DECLARE direccion VARCHAR(250);
    SET direccion = CONCAT(calle, ', ', ciudad, ', ', codigo_postal);
    RETURN direccion;
END$$
DELIMITER ;

SELECT obtener_direccion('Av. cali','Bogotá' ,'2131');

