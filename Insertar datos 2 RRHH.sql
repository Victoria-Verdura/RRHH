use rrhh;
insert into establecimiento(nm_establecimiento, cd_cuit, nr_telefono, ds_direccion, cd_postal, ds_ciudad, ds_provincia, ds_email)
values ('Sanatorio GO'	,	1112	,	15669871	,	'Galindo 2415'	,	2134	,	'Funes'	,	'Santa Fe'	,	'sanatorio@gmail.com'	),
('Clinica GO'	,	17432789	,			15889762	,	'Cordoba 15'	,	2000	,	'Rosario'	,	'Santa Fe'	,	'clinica@gmail.com'	),
('Clinica DMO' 	,	15986432	,			15678543	,	'Moreno 308'	,	2000	,	'Rosario'	,	'Santa Fe'	,	'dmo@gmail.com'	),	
('Urgencias CER' 	,	18765324	,			15876543	,	'Zeballos 2354'	,	2000	,	'Rosario'	,	'Santa Fe'	,	'cer@gmail.com'	),
('Hospital Maternidad' 	,	12131489	,			15772132	,	'Ovideos Lagos 2890'	,	2000	,	'Rosario'	,	'Santa Fe'	,	'maternidad@gmail.com'	)	;
commit;

use rrhh;
insert into persona(nr_dni, nm_nombre, nm_seg_nombre, nm_apellido, dt_nacimiento, ds_sexo	, nr_telefono, ds_direccion , cd_postal, ds_ciudad, ds_provincia, ds_email)
values (41735948,  'Victoria', 'Belen', 'Verdura', '1999-10-02',  'Femenino', 13145353, 'Galindo 2415',  2134, 'Funes', 'Santa Fe',  'verduravictoria@gmail.com'),
(39091447,  'Rocio', 'Celeste', 'Magallanes', '1995-07-25',  'Femenino', 164569813, 'Ovidio 426',  2000, 'Rosario', 'Santa Fe',  'magallanesrocio@gmail.com'),
(14434811,  'Graciela', 'Rita', 'Grosso', '1962-11-27',  'Femenino', 15123555, 'Catamarca 1818',  2134, 'Funes', 'Santa Fe',  'grossograciela@gmail.com'),
(40987123,  'Valentina', 'Valeria', 'De Pascual', '1999-01-01',  'Femenino', 12523333, 'Independencia 22',  2132, 'Roldan', 'Santa Fe',  'valeriadepascual@gmail.com'),
(35555876,  'Gloria', null , 'Gomez', '1990-12-31',  'Femenino', 12889977, 'Cordoba 1245',  2134, 'Funes', 'Santa Fe',  'gloriagomez@gmail.com'),
(14287090,  'Marcelo', 'Andres', 'Rodriguez', '1960-09-09',  'Masculino', 1675843, 'Elorza 124',  2134, 'Funes', 'Santa Fe',  'marcelorodriguez@gmail.com'),
(27336664, 'Florencia', 'Maria', 'Bourre', '1995-07-27',  'Femenino', 1677654, 'Moreno 789',  2000, 'Rosario', 'Santa Fe', 'florenciabourre@gmail.com'),
(27886543,  'Nicolas', null , 'Perez', '1997-06-21',  'Masculino', 16897321, 'Oroño 2354',  2000, 'Rosario', 'Santa Fe',  'nicolasperez@gmail.com'),
(38453234,  'Lara', null, 'Flemati', '1994-03-02',  'Femenino', 15543214, 'Pedro Rios 2715',  2134, 'Funes', 'Santa Fe',  'flematilara@gmail.com'),
(39998765, 'Daiana', 'Maria', 'Guemes', '1995-05-01', 'Femenino', 15867776, 'Candelaria 335', 2134, 'Funes', 'Santa Fe',  'guemesdaiana@gmail.com'),
(40675677, 'Lucas', null, 'Nunez', '1996-04-06', 'Masculino', 16443335, 'General Paz 87', 2000, 'Rosario', 'Santa Fe',  'nunezlucas@gmail.com'),
(43335521, 'Delfina', null, 'Natto', '1999-09-12', 'Femenino', 14354532, 'Suipacha 345', 2134, 'Funes', 'Santa Fe',  'nattodelfina@gmail.com'),
(45342112, 'Candela', null, 'Cassi', '2001-01-05', 'Femenino', 16476432, 'Jose Hernandez 367', 2134, 'Funes', 'Santa Fe', 'cassicandela@gmail.com'),
(44899787, 'Gerardo', 'Juan', 'Viale', '2000-09-20', 'Masculino', 17990087, 'Monteagudo 6785', 2000, 'Rosario', 'Santa Fe', 'vialegerardo@gmail.com'),
(42290987, 'Matias', null, 'Amsler', '1998-10-17', 'Masculino', 19001456, 'Casilda 332', 2134, 'Rosario', 'Santa Fe', 'amslermatias@gmail.com');
commit;

use rrhh;
insert into puesto(nm_puesto ,cd_establecimiento,nr_piso)
values ( 'Admisión', 1, 0),
( 'Facturación', 1, 2),
( 'Encargado del sector', 1, 0),
( 'Recursos Humanos', 1, 3),
( 'Contaduria', 1, 3);
commit;

use rrhh;
insert into empleados (cd_cod_persona , nr_sec_puesto , dt_inicio , dt_fin)
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

use rrhh;
insert into horarios (nr_sec_puesto, hr_inicio, hr_final)
values (1,'08:00:00','16:00:00'),
(2,'07:00:00','15:00:00'),
(3,'08:00:00','16:00:00'),
(4,'09:00:00','17:00:00'),
(5,'10:00:00','18:00:00');
commit;

use rrhh;
insert into vacaciones (nr_sec_puesto, qt_dias, cd_mes ,ds_mes)
values (1, 7, 2, 'Febrero'),
(2, 10, 3, 'Marzo'),
(3, 14, 1, 'Enero'),
(4, 16, 1, 'Enero'),
(5, 7, 4, 'Abril');
commit;

use rrhh;
insert into especialidad (cd_esp, ds_esp)
values (5, 'Clinica medica'),
(10, 'Dermatologia'),
(15, 'Traumatologia'),
(20, 'Oftalmologia'),
(25, 'Odontologia'),
(30, 'Pediatria'),
(35, 'Ginecologia'),
(40, 'Nefrologia'),
(45, 'Cardiologia'),
(50, 'Fonoaudiologia'),
(55, 'Nutricionista');
commit;

use rrhh;
insert into medicos (cd_cod_persona, nr_mat, nr_mat_esp,cd_esp)
values (9, 2345, 234500, 3),
(10, 5665, 566500, 9),
(11, 4532, 453200, 7),
(12, 8873, 887300, 10),
(13, 8873, 887300, 3),
(14, 454, 45400, 11),
(15, 2356, 235600, 8);
commit;
