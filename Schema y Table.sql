create schema RRHH;
use rrhh;
create table if not exists Establecimiento(
cd_establecimiento INT NOT NULL AUTO_INCREMENT ,
nm_establecimiento VARCHAR(50) NOT NULL,
cd_cuit INT NOT NULL ,
nr_telefono INT NOT NULL, 
ds_direccion VARCHAR (90) NOT NULL,
cd_postal INT NOT NULL,
ds_ciudad TEXT NOT NULL,
ds_provincia TEXT NOT NULL,
ds_email VARCHAR (90) NOT NULL,
primary key (cd_establecimiento)
);
use rrhh;
create table if not exists Persona (
nr_dni	INT NOT NULL,
cd_cod_persona	INT auto_increment,
nm_nombre TEXT NOT NULL,
nm_seg_nombre text,
nm_apellido text NOT NULL,
dt_nacimiento	DATE NOT NULL,
ds_sexo	TEXT,
nr_telefono	INT NOT NULL,
ds_direccion VARCHAR (90),
cd_postal	INT,
ds_ciudad	TEXT,
ds_provincia	TEXT,
ie_empleado	BOOLEAN,
ds_email	VARCHAR (90),
primary key (cd_cod_persona)
);
use rrhh;
create table if not exists Puesto(
nr_sec_puesto int not null auto_increment,
nm_puesto text NOT NULL,
cd_establecimiento	INT NOT NULL,
nr_piso	INT,
primary key (nr_sec_puesto),
foreign key (cd_establecimiento) references establecimiento (cd_establecimiento)
);
use rrhh;
create table if not exists Empleados(
cd_cod_persona int not null,
nr_legajo int auto_increment,
cd_puesto int not null,
dt_inicio date NOT NULL,
dt_fin date ,
primary key  (nr_legajo),
foreign key(cd_puesto) references Puesto (nr_sec_puesto),
foreign key(cd_cod_persona) references persona (cd_cod_persona)
);

use rrhh;
create table if not exists Salario (
cd_puesto	INT,
nr_sec_salario INT auto_increment,
vl_sueldo	DECIMAL not null ,
vl_presentismo	DECIMAL not null,
vl_adicional	DECIMAL,
vl_horas_extras	DECIMAL,
vl_jubilacion	DECIMAL,
vl_obra_social	DECIMAL,
primary key (nr_sec_salario),
foreign key (cd_puesto) references Puesto (nr_sec_puesto)
);

use rrhh;
create table if not exists Horarios ( 
nr_sec_hor INT  NOT NULL auto_increment,
nr_sec_puesto int not null,
hr_inicio time not null,
hr_final time,
primary key (nr_sec_hor),
foreign key (nr_sec_puesto) references puesto(nr_sec_puesto)
);
use rrhh;
create table if not exists Vacaciones (
nr_secuencia int not null auto_increment,
nr_sec_puesto int not null,
qt_dias int,
cd_mes int,
ds_mes varchar (90),
primary key (nr_secuencia),
foreign key (nr_sec_puesto) references puesto (nr_sec_puesto)
);
use rrhh;
create table if not exists Especialidad (
nr_sec_esp int not null auto_increment,
cd_esp int not null,
ds_esp varchar (100),
primary key (nr_sec_esp)
);
use rrhh;
create table if not exists Medicos (
nr_sec_med int not null auto_increment,
cd_cod_persona int not null,
nr_mat int not null,
nr_mat_esp int,
cd_esp int not null,
primary key (nr_sec_med),
foreign key (cd_cod_persona) references persona (cd_cod_persona),
foreign key (cd_esp) references Especialidad (nr_sec_esp)
);
