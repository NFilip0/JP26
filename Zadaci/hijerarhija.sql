# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\filip\Documents\jp26\Zadaci\hijerarhija.sql

drop database if exists hijerarhija;
create database hijerarhija;

use hijerarhija;

create table zaposlenik(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    placa decimal(18,2) not null,
    nadredeni int not null
);

alter table zaposlenik add foreign key (nadredeni) references zaposlenik(sifra);