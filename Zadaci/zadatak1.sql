# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\filip\Documents\jp26\Zadaci\zadatak1.sql

drop database if exists zadatak1;
create database zadatak1;

use zadatak1;

create table zupanija(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null,
    zupan int not null
);

create table opcina(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null,
    zupanija int not null
);

create table mjesto(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null,
    opcina int not null
);

create table zupan(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null
);

alter table zupanija add foreign key (zupan) references zupan(sifra);

alter table opcina add foreign key (zupanija) references zupanija(sifra);

alter table mjesto add foreign key (opcina) references opcina(sifra);