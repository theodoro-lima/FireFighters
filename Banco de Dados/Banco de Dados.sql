create database fireFighter;

use fireFighter;

create table Cliente (
	idCliente int primary key,
	nome varchar (100),
    CNPJ char (14),
    telefone char(11),
    email varchar(40),
    senha varchar(20)
);


create table Sensor (
	idSensor int primary key,
    latitude varchar(10),
    longitude varchar(10)
);

create table Dados (
	idDados int primary key,
    Temperatura varchar (5),
    umidade varchar (5),
    fkSensor int -- será uma chave estrangeira
);

insert into Cliente values
( 1, 'Bombeiros SP', 12345678901234,11976496628,'bombeirossp@gmail.com','SP123'),
( 2, 'Bombeiros RJ', 12383759369435,21976496628,'bombeirosrj@gmail.com','RJ123'),
( 3, 'Bombeiros SC', 19283648591827,48936755379,'bombeirossc@gmail.com','SC123'),
( 4, 'Bombeiros AM', 78945612304567,92971309292,'bombeirosam@gmail.com','AM123'),
( 5, 'Bombeiros GO', 9283748596948,62923948582,'bombeirosgo@gmail.com','GO123');

insert into Dados values
( 1, 28,54,1),
( 2, 34,67,1),
( 3, 18,28,3),
( 4, 38,75,4),
( 5, 38,55,4);

insert into Sensor values
(1, 202039,94857),
(2, 764582,38741),
(3, 948574,19883),
(4, 738495,94857);

select * from dados;

select * from sensor;



select * from Dados;
select Temperatura from Dados where codCli=77;
select codCli from dados where Temperatura>25;
select nomeCli from Cliente where codCli=200;
select codCli from dados order by Temperatura desc;
select nomeCli from Cliente where codCli=70;