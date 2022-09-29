use rrhh;
insert into establecimiento(nm_establecimiento, cd_cuit, nr_telefono, ds_direccion, cd_postal, ds_ciudad, ds_provincia, ds_email)
values ('Sanatorio GO'	,	1112	,	15669871	,	'Galindo 2415'	,	2134	,	'Funes'	,	'Santa Fe'	,	'sanatorio@gmail.com'	),
('Clinica GO'	,	17432789	,			15889762	,	'Cordoba 15'	,	2000	,	'Rosario'	,	'Santa Fe'	,	'clinica@gmail.com'	),
('Clinica DMO' 	,	15986432	,			15678543	,	'Moreno 308'	,	2000	,	'Rosario'	,	'Santa Fe'	,	'dmo@gmail.com'	),	
('Urgencias CER' 	,	18765324	,			15876543	,	'Zeballos 2354'	,	2000	,	'Rosario'	,	'Santa Fe'	,	'cer@gmail.com'	),
('Hospital Maternidad' 	,	12131489	,			15772132	,	'Ovideos Lagos 2890'	,	2000	,	'Rosario'	,	'Santa Fe'	,	'maternidad@gmail.com'	)	;
commit;
use rrhh;
insert into persona(nr_dni, nm_nombre, nm_seg_nombre, nm_apellido, dt_nacimiento, ds_sexo	, nr_telefono, ds_direccion , cd_postal, ds_ciudad, ds_provincia, ie_empleado	, ds_email)
values (41735948,  'Victoria', 'Belen', 'Verdura', '1999-10-02',  'Femenino', 13145353, 'Galindo 2415',  2134, 'Funes', 'Santa Fe',  1, 'verduravictoria@gmail.com'),
(39091447,  'Rocio', 'Celeste', 'Magallanes', '1995-07-25',  'Femenino', 164569813, 'Ovidio 426',  2000, 'Rosario', 'Santa Fe',  1, 'magallanesrocio@gmail.com'),
(14434811,  'Graciela', 'Rita', 'Grosso', '1962-11-27',  'Femenino', 15123555, 'Catamarca 1818',  2134, 'Funes', 'Santa Fe',  1, 'grossograciela@gmail.com'),
(40987123,  'Valentina', 'Valeria', 'De Pascual', '1999-01-01',  'Femenino', 12523333, 'Independencia 22',  2132, 'Roldan', 'Santa Fe',  1, 'valeriadepascual@gmail.com'),
(35555876,  'Gloria', null , 'Gomez', '1990-12-31',  'Femenino', 12889977, 'Cordoba 1245',  2134, 'Funes', 'Santa Fe',  1, 'gloriagomez@gmail.com'),
(14287090,  'Marcelo', 'Andres', 'Rodriguez', '1960-09-09',  'Masculino', 1675843, 'Elorza 124',  2134, 'Funes', 'Santa Fe',  1, 'marcelorodriguez@gmail.com'),
(27336664, 'Florencia', 'Maria', 'Bourre', '1995-07-27',  'Femenino', 1677654, 'Moreno 789',  2000, 'Rosario', 'Santa Fe', 1, 'florenciabourre@gmail.com'),
(27886543,  'Nicolas', null , 'Perez', '1997-06-21',  'Nicolas', 16897321, 'Oroño 2354',  2000, 'Rosario', 'Santa Fe',  1, 'nicolasperez@gmail.com');
commit;
use rrhh;
insert into puesto(nm_puesto ,cd_establecimiento	,nr_piso)
values ( 'Admisión', 6, 0),
( 'Facturación', 6, 2),
( 'Encargado del sector', 6, 0),
( 'Recursos Humanos', 6 , 3),
( 'Contaduria', 6, 3);
commit;
use rrhh;
insert into empleados (cd_cod_persona , cd_puesto , dt_inicio , dt_fin)
values (1, 2, '2021-12-01', null),
(2, 3, '2021-09-01', null),
(3, 1, '2019-01-05', null),
(4, 1, '2022-08-01', null),
(5,  2, '2021-12-01', null),
(6, 4, '2021-12-01', null),
(7,  3, '2021-12-01', null),
(8, 4, '2021-12-01', null);
commit;
use rrhh;
insert into salario( cd_puesto	,  vl_sueldo	, vl_presentismo	, vl_adicional	, vl_horas_extras	, vl_jubilacion	, vl_obra_social)
values ( 1,90000, 10000,12000, 800, '-1000', '-3000'),
(2,100000, 10000, 12000, 900, '-1100', '-4000'),
(3,150000, 11000, null, 1600, '-1500', '-8000'),
(4,150000, 11000, null, 1600, '-1500', '-8000'),
(5,110000, 10000, null, 1000, '-1000', '-3000');
commit;