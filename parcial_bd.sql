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