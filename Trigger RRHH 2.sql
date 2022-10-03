use base_rrhh;
create table if not exists log_persona
(id_log int auto_increment ,
nr_dni int ,
nm_nombre text,
nm_seg_nombre text,
nm_apellido text,
nombre_accion varchar (100),
nombre_tabla varchar (100),
usuario varchar (200),
fecha_mod date ,
primary key (id_log)
); 

delimiter //
create trigger trg_control_persona_eliminadas
before delete on persona 
for each row 
begin
insert into log_persona (nr_dni, nm_nombre, nm_seg_nombre, nm_apellido, nombre_accion, nombre_tabla, usuario, fecha_mod)
values ( old.nr_dni, old.nm_nombre, old.nm_seg_nombre, old.nm_apellido, 'delete', 'persona', current_user(), now());
end //
delimiter ;

delimiter //
create trigger trg_control_persona
after insert on persona 
for each row 
begin
insert into log_persona (nr_dni, nm_nombre, nm_seg_nombre, nm_apellido, nombre_accion, nombre_tabla, usuario, fecha_mod)
values (new.nr_dni, new.nm_nombre, new.nm_seg_nombre, new.nm_apellido, 'insert', 'persona', current_user(), now());
end //
delimiter ;

create table if not exists log_salario
(id_log int auto_increment,
cd_puesto int,
nr_sec_salario int, 
vl_sueldo decimal(10,0), 
camponuevo_campoanterior varchar (1000),
nombre_accion varchar (100),
nombre_tabla varchar (100),
usuario varchar (200),
fecha_mod date ,
primary key (id_log)
);

delimiter //
create trigger trg_control_salario_old
before update on salario
for each row 
begin
insert into log_salario ( cd_puesto, nr_sec_salario, vl_sueldo, nombre_accion, nombre_tabla, usuario, fecha_mod)
values ( old.cd_puesto, old.nr_sec_salario, old.vl_sueldo, 'update', 'salario', current_user() , now());
end //
delimiter ;

delimiter //
create trigger trg_control_salario_new
after insert on salario
for each row 
begin 
insert into log_salario ( cd_puesto, nr_sec_salario, vl_sueldo, nombre_accion, nombre_tabla, usuario, fecha_mod)
values (new.cd_puesto, new.nr_sec_salario, new.vl_sueldo, 'insert', 'salario', current_user() , now());
end //
delimiter ;

DELIMITER //
CREATE TRIGGER trg_aumento_salario
after update on salario
for each row 
begin
insert into log_salario (  cd_puesto, nr_sec_salario,  camponuevo_campoanterior,  nombre_accion, nombre_tabla, usuario,  fecha_mod)
values (new.cd_puesto, new.nr_sec_salario,  concat ('Valor anterior: ', old.vl_sueldo, 'Valor actual: ', new.vl_sueldo) , 'update', 'salario' ,  current_user(),  now());
 end //
delimiter ;
