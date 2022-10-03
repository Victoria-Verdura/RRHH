use base_rrhh;
set @@autocommit = 0;
start transaction;
delete from empleados where nr_legajo = 5;
rollback;
#commit 
set @@autocommit = 0;
start transaction;
delete from empleados where nr_legajo = 4;
rollback;
#commit

use base_rrhh;
set @@autocommit = 0;
start transaction;
insert into persona (nr_dni,  nm_nombre, nm_seg_nombre, nm_apellido, dt_nacimiento	, ds_sexo	, nr_telefono, ds_direccion ,  cd_postal, ds_ciudad, ds_provincia,  ds_email)
values (14777897,  'Camila', 'Lucia', 'Gonzales', '1998-10-02', 'Femenino', 13156778, 'Ruta 9 325',  2134, 'Funes', 'Santa Fe', 'gonzalescamila@gmail.com'),
 (43123456,  'Luciano', null , 'Herrera', '1997-10-03', 'Masculino', 13435768, 'Candelaria 413',  2134, 'Funes', 'Santa Fe', 'herreraluciano@gmail.com'),
 (45323898, 'Juan', 'Nicolas', 'Segovia', '1995-10-02', 'Masculino', 13154654, 'Independencia 14',  2132, 'Roldan', 'Santa Fe', 'segovianicolas@gmail.com'),
 (44367389, 'Carolina', null , 'Petrelli', '1998-10-10', 'Femenino', 13115689,'Montevideo 345', 2134, 'Funes', 'Santa Fe', 'petrellicarolina@gmail.com');
savepoint punto_1;
insert into persona (nr_dni, nm_nombre, nm_seg_nombre, nm_apellido, dt_nacimiento	, ds_sexo	, nr_telefono, ds_direccion ,  cd_postal, ds_ciudad, ds_provincia,  ds_email)
values (48354765,  'Camilo', null , 'Morel', '1998-09-02', 'Masculino', 13345123, 'Suipacha 2567',  2134, 'Funes', 'Santa Fe', 'morelcamilo@gmail.com'),
 (47897654,  'Maria', 'Lucia', 'Cochet', '1995-08-05', 'Femenino', 13199654, 'Aconcagua 55',  2134, 'Funes', 'Santa Fe', 'cochetmaria@gmail.com'),
 (45887232,  'Julieta', null , 'Terai', '1996-01-12', 'Femenino', 13897634, 'San Jose 7654',  2134, 'Funes', 'Santa Fe', 'teraijulieta@gmail.com'),
 (43657765,  'Adrian', 'Andres', 'Petit', '1991-10-02', 'Masculino', 13175889, 'Elorza 2298',  2134, 'Funes', 'Santa Fe', 'petitadrian@gmail.com');
savepoint punto_2;
