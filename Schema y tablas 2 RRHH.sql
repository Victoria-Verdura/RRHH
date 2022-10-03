
create schema base_RRHH;
use base_rrhh;
create table if not exists Establecimiento(
cd_establecimiento INT primary key  AUTO_INCREMENT ,
nm_establecimiento VARCHAR(50) NOT NULL,
cd_cuit INT NOT NULL ,
nr_telefono INT NOT NULL, 
ds_direccion VARCHAR (90) NOT NULL,
cd_postal INT NOT NULL,
ds_ciudad TEXT NOT NULL,
ds_provincia TEXT NOT NULL,
ds_email VARCHAR (90) NOT NULL
) engine = innodb ;

create table if not exists Persona (
nr_dni	INT NOT NULL,
cd_cod_persona	INT primary key auto_increment,
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
ds_email	VARCHAR (90)
)engine = innodb ;

create table if not exists Puesto(
nr_sec_puesto int primary key auto_increment,
nm_puesto text NOT NULL,
cd_establecimiento	INT NOT NULL,
nr_piso	INT,
foreign key (cd_establecimiento) references establecimiento (cd_establecimiento)
) engine = innodb ;

create table if not exists Empleados(
cd_cod_persona int not null,
nr_legajo int primary key auto_increment,
nr_sec_puesto int not null,
dt_inicio date NOT NULL,
dt_fin date ,
foreign key(nr_sec_puesto) references Puesto (nr_sec_puesto),
foreign key(cd_cod_persona) references persona (cd_cod_persona)
)engine = innodb ;

create table if not exists Salario (
cd_puesto	INT,
nr_sec_salario INT primary key auto_increment,
vl_sueldo	DECIMAL not null ,
vl_presentismo	DECIMAL not null,
vl_adicional	DECIMAL,
vl_horas_extras	DECIMAL,
vl_jubilacion	DECIMAL,
vl_obra_social	DECIMAL,
foreign key (cd_puesto) references Puesto (nr_sec_puesto)
)engine = innodb ;

create table if not exists Horarios ( 
nr_sec_hor INT primary key auto_increment,
nr_sec_puesto int not null,
hr_inicio time not null,
hr_final time,
foreign key (nr_sec_puesto) references puesto(nr_sec_puesto)
)engine = innodb ;

create table if not exists Vacaciones (
nr_secuencia int primary key auto_increment,
nr_sec_puesto int not null,
qt_dias int,
cd_mes int,
ds_mes varchar (90),
foreign key (nr_sec_puesto) references puesto (nr_sec_puesto)
)engine = innodb ;

create table if not exists Especialidad (
nr_sec_esp int primary key auto_increment,
cd_esp int not null,
ds_esp varchar (100)
)engine = innodb ;

create table if not exists Medicos (
nr_sec_med int primary key auto_increment,
cd_cod_persona int not null,
nr_mat int not null,
nr_mat_esp int,
cd_esp int not null,
foreign key (cd_cod_persona) references persona (cd_cod_persona),
foreign key (cd_esp) references Especialidad (nr_sec_esp)
)engine = innodb ;
