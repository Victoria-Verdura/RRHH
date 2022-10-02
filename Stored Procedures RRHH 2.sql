USE `rrhh`;
DROP procedure IF EXISTS `ordenar_empleados`;

DELIMITER $$
USE `rrhh`$$
CREATE PROCEDURE `ordenar_empleados` (orden int, asc_desc varchar (50))
BEGIN
if orden = 1 and asc_desc = 'ASC' then 
	select * from empleados 
    order by dt_inicio ASC ;
elseif orden = 1 and asc_desc = 'DESC' then
	select * from empleados 
    order by dt_inicio DESC ;
elseif orden = 2 and asc_desc = 'ASC' then 
	select * from empleados 
    order by nr_legajo ASC;
elseif orden = 2 and asc_desc = 'DESC' then
	select * from empleados
    order by nr_legajo DESC;
elseif orden = 3 and asc_desc = 'ASC' then 
	select * from empleados
    order by cd_puesto ASC;
elseif orden = 3 and asc_desc = 'DESC' then  
	select * from empleados
    order by cd_puesto DESC;
else select * from empleados;
end if ;
END$$

DELIMITER ;


USE `rrhh`;
DROP procedure IF EXISTS `insertar_personas`;

DELIMITER $$
USE `rrhh`$$
CREATE PROCEDURE `insertar_personas`( nr_dni INT, dt_nacimiento date, nm_apellido text, nm_nombre text, nm_seg_nombre text, nr_telefono int)
BEGIN
insert into persona ( nr_dni, nm_nombre, nm_seg_nombre, nm_apellido, dt_nacimiento, ds_sexo, nr_telefono, ds_direccion, cd_postal, ds_ciudad,ds_provincia, ds_email)
values ( nr_dni, nm_nombre, nm_seg_nombre, nm_apellido, dt_nacimiento, null, nr_telefono, null, null, null, null,  null);
commit;
END$$

DELIMITER ;