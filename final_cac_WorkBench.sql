create database finalcac;

use finalcac;
create table empleados(
id_empleado int not null auto_increment,
nombre varchar (30),
apellido varchar(30),
dni int not null unique,
mail varchar (30),
id_area int not null,
fecha_alta date,
estado int null,
primary key (id_empleado)
)

create table areas(
id_area int not null auto_increment,
nombre varchar (30),
telefono int unique,
mail varchar (30),
fecha_alta date,
estado int null,
primary key (id_area)
)
INSERT INTO `areas`(`nombre`, `telefono`, `mail`, `fecha_alta`, `estado`) VALUES ('Limpieza','115434321','limpieza@codoacodo.com','2022/07/17','');
INSERT INTO `areas`(`nombre`, `telefono`, `mail`, `fecha_alta`, `estado`) VALUES ('Sistemas','1112344321','sistemas@codoacodo.com','2022/07/17','');
INSERT INTO `areas`(`nombre`, `telefono`, `mail`, `fecha_alta`, `estado`) VALUES ('Logística','1112348493','logistica@codoacodo.com','2022/07/17','');
INSERT INTO `areas`(`nombre`, `telefono`, `mail`, `fecha_alta`, `estado`) VALUES ('Recursos Humanos','1112376541','recursos@codoacodo.com','2022/07/17','');
INSERT INTO `areas`(`nombre`, `telefono`, `mail`, `fecha_alta`, `estado`) VALUES ('Coordianción','1112343321','coordinación@codoacodo.com','2022/07/17','')


ALTER TABLE empleados
add constraint empleados_areas
foreign key(id_area) references areas(id_area);



INSERT INTO `empleados`(`nombre`, `apellido`, `dni`, `mail`, `id_area`, `fecha_alta`, `estado`) VALUES ('Agustín','Damián','39754567','agustin@codoacodo','3','2022/07/17','1');
INSERT INTO `empleados`(`nombre`, `apellido`, `dni`, `mail`, `id_area`, `fecha_alta`, `estado`) VALUES ('Micaela','Ramirez','23434567','micaela@codoacodo','6','2022/07/17','1');
INSERT INTO `empleados`(`nombre`, `apellido`, `dni`, `mail`, `id_area`, `fecha_alta`, `estado`) VALUES ('Antonela','Alberti','9556567','antonela@codoacodo','5','2022/07/17','1');
INSERT INTO `empleados`(`nombre`, `apellido`, `dni`, `mail`, `id_area`, `fecha_alta`, `estado`) VALUES ('Daniel','Caceres','26890567','daniel@codoacodo','4','2022/07/17','1');
INSERT INTO `empleados`(`nombre`, `apellido`, `dni`, `mail`, `id_area`, `fecha_alta`, `estado`) VALUES ('Lucas','Di Fiore','31678567','lucas@codoacodo','3','2022/07/17','1')
