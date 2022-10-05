create database hotell;

use hotell

create table Habitacion(
idHabitacion int not null primary key identity(1,1),
tipodehabitacion varchar(30),
preciodehabitacion float(4),
disponibilidad int
)

insert into Habitacion (tipodehabitacion, preciodehabitacion, disponibilidad) values ('Hyena, brown', 388, 1);
insert into Habitacion (tipodehabitacion, preciodehabitacion, disponibilidad) values ('Pallas''s fish eagle', 218, 1);
insert into Habitacion (tipodehabitacion, preciodehabitacion, disponibilidad) values ('Macaque, pig-tailed', 522, 1);
insert into Habitacion (tipodehabitacion, preciodehabitacion, disponibilidad) values ('Cape clawless otter', 257, 0);
insert into Habitacion (tipodehabitacion, preciodehabitacion, disponibilidad) values ('Capuchin, black-capped', 959, 0);
insert into Habitacion (tipodehabitacion, preciodehabitacion, disponibilidad) values ('Gila monster', 473, 0);
insert into Habitacion (tipodehabitacion, preciodehabitacion, disponibilidad) values ('Small-spotted genet', 316, 1);
insert into Habitacion (tipodehabitacion, preciodehabitacion, disponibilidad) values ('Wallaby, bennett''s', 309, 0);
insert into Habitacion (tipodehabitacion, preciodehabitacion, disponibilidad) values ('Monitor, white-throated', 786, 0);
insert into Habitacion (tipodehabitacion, preciodehabitacion, disponibilidad) values ('Galapagos dove', 843, 1);

create table reservas(
idReserva int not null primary key identity(1,1),
fechadeentrada varchar(30),
fechadesalida varchar(30),
idHabitacion int foreign key references Habitacion(idHabitacion)
)

insert into reservas (fechadeentrada, fechadesalida, idHabitacion) values ('1/13/2022', '1/6/2022', 1);
insert into reservas (fechadeentrada, fechadesalida, idHabitacion) values ('2/21/2022', '2/16/2022', 2);
insert into reservas (fechadeentrada, fechadesalida, idHabitacion) values ('10/23/2021', '11/5/2021', 3);
insert into reservas (fechadeentrada, fechadesalida, idHabitacion) values ('5/21/2022', '9/29/2022', 4);
insert into reservas (fechadeentrada, fechadesalida, idHabitacion) values ('3/9/2022', '6/9/2022', 5);
insert into reservas (fechadeentrada, fechadesalida, idHabitacion) values ('4/10/2022', '12/2/2021', 6);
insert into reservas (fechadeentrada, fechadesalida, idHabitacion) values ('7/21/2022', '4/6/2022', 7);
insert into reservas (fechadeentrada, fechadesalida, idHabitacion) values ('12/8/2021', '9/18/2022', 8);
insert into reservas (fechadeentrada, fechadesalida, idHabitacion) values ('8/12/2022', '8/20/2022', 9);
insert into reservas (fechadeentrada, fechadesalida, idHabitacion) values ('8/3/2022', '9/6/2022', 10);

create table facturacion(
idFacturacion int not null primary key identity(1,1),
total float(4),
detalles varchar(150),
comentarios varchar (120),
idReserva int foreign key references reservas(idReserva)
)
insert into facturacion (total, detalles, comentarios, idReserva) values (2341, 'Mephitis mephitis', '1E1HpvNSU3hkuoJ9Cp19w7i6WSp7ZwPXoc', 2);
insert into facturacion (total, detalles, comentarios, idReserva) values (3496, 'Delphinus delphis', '1EQ84DLq22tvXkkat8n6ftm2HySJR93W7L', 3);
insert into facturacion (total, detalles, comentarios, idReserva) values (5863, 'Bradypus tridactylus', '1BBpEiPWUUaQn9BMvAVPzr8R8Fc9Fv3V3j', 4);
insert into facturacion (total, detalles, comentarios, idReserva) values (6148, 'Amazona sp.', '1E1kwhLNopLatPEYUNyny86k2Dy7FRTddu', 5);
insert into facturacion (total, detalles, comentarios, idReserva) values (4037, 'Felis rufus', '1PFqPANQUsmLosfKjB76vaqaYnLseivBur', 6);
insert into facturacion (total, detalles, comentarios, idReserva) values (5438, 'Ovis dalli stonei', '14HUSdZkn75XvwGdk94W5mVsHj83Wo5gGe', 7);
insert into facturacion (total, detalles, comentarios, idReserva) values (7358, 'Morelia spilotes variegata', '1Lkhro6tPR7VNvBdNShhF8ocFCV9UCCwGm', 8);
insert into facturacion (total, detalles, comentarios, idReserva) values (2508, 'unavailable', '17cvrHMeHrga7k82LZs38Ps9hZjydCjMoT', 9);
insert into facturacion (total, detalles, comentarios, idReserva) values (6430, 'Phylurus milli', '1BNVT48NEh746LrQ7xWU3ehGAUbg4SS4CR', 10);

create table usuarios(
idUsuario int not null primary key identity(1,1),
nombre varchar(20),
apellido varchar(20),
dui varchar(9),
correo varchar(30),
edad int,
NumeroDeTelefono int,
numpersonas int,
presupuesto float(4),
idFacturacion int foreign key references facturacion(idFacturacion)
)
insert into usuarios (nombre, apellido, dui, correo, edad, NumeroDeTelefono, numpersonas, presupuesto, idFacturacion) values ('Betty', 'Kersaw', 290092249, 'bkersaw0@pen.io', 113, 87677818, 13, 9299, 2);
insert into usuarios (nombre, apellido, dui, correo, edad, NumeroDeTelefono, numpersonas, presupuesto, idFacturacion) values ('Carroll', 'Andrick', 785982150, 'candrick1@e-recht24.de', 22, 74840107, 5, 969, 3);
insert into usuarios (nombre, apellido, dui, correo, edad, NumeroDeTelefono, numpersonas, presupuesto, idFacturacion) values ('Lothario', 'Sedge', 439986074, 'lsedge2@phoca.cz', 96, 28187777, 10, 3266, 4);
insert into usuarios (nombre, apellido, dui, correo, edad, NumeroDeTelefono, numpersonas, presupuesto, idFacturacion) values ('Robyn', 'Puddephatt', 196097955, 'rpuddephatt3@sitemeter.com', 96, 62966322, 5, 6973, 5);
insert into usuarios (nombre, apellido, dui, correo, edad, NumeroDeTelefono, numpersonas, presupuesto, idFacturacion) values ('Cosetta', 'Ridulfo', 956980969, 'cridulfo4@liveinternet.ru', 62, 70521100, 8, 7670, 6);
insert into usuarios (nombre, apellido, dui, correo, edad, NumeroDeTelefono, numpersonas, presupuesto, idFacturacion) values ('Cherin', 'Dack', 228248386, 'cdack5@state.tx.us', 30, 21883333, 7, 6888, 7);
insert into usuarios (nombre, apellido, dui, correo, edad, NumeroDeTelefono, numpersonas, presupuesto, idFacturacion) values ('Ludvig', 'Tavernor', 861988270, 'ltavernor6@msu.edu', 104, 67111060, 9, 6081, 8);
insert into usuarios (nombre, apellido, dui, correo, edad, NumeroDeTelefono, numpersonas, presupuesto, idFacturacion) values ('Reg', 'Amphlett', 127475021, 'ramphlett7@clickbank.net', 93, 68227723, 15, 4419, 9);
insert into usuarios (nombre, apellido, dui, correo, edad, NumeroDeTelefono, numpersonas, presupuesto, idFacturacion) values ('Tiena', 'Birley', 295299525, 'tbirley8@pen.io', 76, 28151918, 11, 6511, 10);



