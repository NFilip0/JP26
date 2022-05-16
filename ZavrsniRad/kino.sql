# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\filip\Documents\jp26\ZavrsniRad\kino.sql
drop database if exists kino;
create database kino;

use kino;

create table prodavac(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    iban varchar(50),
    karta int not null
);

create table kupac(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    smjer int not null,
    datumpocetka datetime,
    brojpolaznika int not null
);

create table film(
    sifra int not null primary key auto_increment,
    naziv varchar(20) not null,
    zanr varchar(20) not null,
    glumci varchar(50) not null,
    kupac int not null
);

create table karta(
    sifra int not null primary key auto_increment,
    dvorana int not null,
    datumpocetka datetime not null,
    datumzavrsetka datetime,
    cijena decimal(16,8) not null,
    film int not null
);

alter table prodavac add foreign key  (karta) references karta(sifra);

alter table karta add foreign key (film) references film(sifra);

alter table film add foreign key (kupac) references kupac(sifra);