create database veterinaria
use veterinaria

create table Dueño_mascota(
Numero_de_identidad int primary key,
nombre varchar(30),
apellidos varchar(30),
direccion varchar (50),
departamento varchar (20),
municipio varchar (20),
codigo_postal varchar(15),
)

create table contacto(
Numero_de_identidad int foreign key(Numero_de_identidad)references Dueño_mascota (Numero_de_identidad),
Numero_de_telefono int,
)

create table mascota(
id_mascota int primary key,
nombre varchar (30),
peso varchar (10),
observaciones varchar (max),
)

create table tipo(
id_mascota int foreign key (id_mascota) references mascota (id_mascota),
raza varchar (20),
tipo_de_mascota varchar (30),
)

create table ingreso(
id_ingreso int primary key,
motivo varchar (50),
fecha_de_ingreso date,
observaciones varchar (max),
)

create table veterinario(
codigo_de_identificacion_del_veterinario int primary key,
nombre varchar (30),
apellido varchar (30),
)

create table tipo_veterinario(
codigo_de_identificacion_del_veterinario int foreign key (codigo_de_identificacion_del_veterinario) references veterinario (codigo_de_identificacion_del_veterinario),
cargo varchar (30),
)

alter table ingreso 
add id_mascota int
alter table ingreso add constraint Fk_id_mascota foreign key (id_mascota) references mascota(id_mascota)

alter table ingreso
add Numero_de_identidad int
alter table ingreso add constraint Fk_Numero_de_identidad foreign key (Numero_de_identidad) references Dueño_mascota(Numero_de_identidad)

alter table ingreso
add codigo_de_identificacion_del_veterinario int
alter table ingreso add constraint Fk_codigo_de_identificacion_del_veterinario foreign key (codigo_de_identificacion_del_veterinario) references veterinario (codigo_de_identificacion_del_veterinario)

insert into Dueño_mascota(Numero_de_identidad,nombre,apellidos,direccion,departamento,municipio,codigo_postal)
values (001, 'pancrasio','caseres','lomas de san fransisco','san salvador','san salvador','1012'),
(002, 'pablo','caveza','colonia rubio','san salvador','antiguo cuscatlan','1012')

insert into contacto(Numero_de_identidad,Numero_de_telefono)
values (001,76538433),
(002, 78943434)

insert into mascota (id_mascota, nombre, peso, observaciones)
values (0011, 'daya' ,'50 kg','presenta bomito'),
(0012, 'luna' ,'80 kg','presenta heridas en sus patas'),
(0013, 'nala' ,'45 kg','presenta una quebradura en la pata derecha'),
(0014, 'doggy' ,'80 kg','presenta irritacion en todo el cuerpo'),
(0015, 'don gato' ,'5 kg','presenta rasgaduras en siertas areas de su cuerpo'),
(0016, 'nekko' ,'4 kg','presenta problemas estomacales'),
(0017, 'griss' ,'180 kg','presenta heridas en sus brasos'),
(0018, 'verde' ,'4 kg','presenta falta de apetito'),
(0019, 'fido' ,'40 kg','presenta bomito'),
(0020, 'firulais' ,'50 kg','presenta bomito')
insert into tipo(id_mascota,raza,tipo_de_mascota)
values (0011,'sagueso','perro'),
(0012,'gran danes','perro'),
(0013,'rottweiler','perro'),
(0014,'san bernando','perro'),
(0015,'persa','gato'),
(0016,'siames','gato'),
(0017,'oso gris','oso'),
(0018,'verde','iguana'),
(0019,'borzoi','perro'),
(0020,'sagueso','perro')

insert into ingreso(id_ingreso,motivo,fecha_de_ingreso,observaciones)
values(00111, 'consulta','2021-11-1','presenta bomito'),
(00112, 'consulta','2021-12-1','presenta quemaduras'),
(00113, 'consulta','2021-09-1','presenta laserasiones'),
(00114, 'consulta','2021-04-1','presenta fracturas'),
(00115, 'consulta','2021-02-1','presenta falta de apetito'),
(00116, 'consulta','2021-11-19','presenta malestar estomacal'),
(00117, 'consulta','2021-12-30','presenta sintomas de parto'),
(00118, 'consulta','2021-11-20','presenta bomito'),
(00119, 'consulta','2021-11-11','presenta lesiones en los brazos'),
(00120, 'consulta','2021-11-12','presenta quemadura en un lado de la cara'),
(00121, 'consulta','2021-11-14','presenta una quebradura en la pata derecha'),
(00122, 'consulta','2021-11-16','presenta bomito'),
(00123, 'consulta','2021-11-17','presenta heridas'),
(00124, 'consulta','2021-11-18','presenta golpes y heridas en diferentes partes de su cuerpo')

insert into veterinario(codigo_de_identificacion_del_veterinario, nombre, apellido)
values (01,'carlos','lopez'),
(02,'marcos', 'bonilla'),
(03,'maria','hernandez'),
(04,'alexander','martinez')

insert into tipo_veterinario(codigo_de_identificacion_del_veterinario,cargo)
values(01,'doctor'),
(02,'enfermero'),
(01,'estilista de perros'),
(01,'doctor')
