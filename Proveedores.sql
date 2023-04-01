Drop database if exists Proveedores;
create database Proveedores;
use Proveedores;

create table Clientes (
id_cliente int auto_increment PRIMARY key,
nombre varchar(25) not null,
apellido1 varchar(25) not null,
apellido2 varchar(25), 
tlf varchar(9) not null UNIQUE,
CONSTRAINT id_FK FOREIGN KEY (id_cliente) REFERENCES Clientes on DELETE set NULL ON UPDATE CASCADE);

create table vendedores (
id_vendedor int auto_increment primary key,
nombre varchar(25) not null,
apellido1 varchar(25) not null,
apellido2 varchar(25),
tlf varchar(9) not null UNIQUE,
REFERENCES vendedores(id_vendedor) on DELETE set NULL UPDATE CASCADE);

create table Productos (
id_producto int auto_increment primary KEY,
nombre_producto varchar(50) not null,
fabricante varchar(30) not null, 
tlf_servicio int(9) not null,
email_servicio VARCHAR(50),
web varchar(50));

create table ventas(
id_venta int auto_increment primary key,
id_producto int(3),
id_cliente int(3),
id_vendedor int(3),
constraint  p_FK FOREIGN KEY (id_producto),
constraint  c_FK FOREIGN KEY (id_cliente),
constraint  v_FK FOREIGN KEY (id_vendedor),
REFERENCES productos (id_producto) on delete CASCADE on update CASCADE,
REFERENCES clientes (id_cliente) on delete CASCADE on update CASCADE,
REFERENCES vendedores (id_vendedor) on delete CASCADE on update CASCADE);

create table pedidos (
id_pedido int auto_increment primary key,
id_producto int(3),
id_cliente int(3),
id_vendedor int(3),
cantidad int(2) not null,
precio float(5,2) not null,
fecha datetime not NULL, 
constraint  p_FK FOREIGN KEY (id_producto),
constraint  c_FK FOREIGN KEY (id_cliente),
REFERENCES productos (id_producto) on delete CASCADE on update CASCADE,
REFERENCES clientes (id_cliente) on delete CASCADE on update CASCADE);



