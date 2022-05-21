# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\filip\Documents\jp26\ZavrsniRad\kino.sql
drop database if exists kino;
create database kino;

use kino;

create table prodavac(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    iban varchar(50)
);

create table kupac(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null
);

create table dvorana(
    sifra int not null primary key auto_increment,
    naziv varchar(20) not null
);

create table film(
    sifra int not null primary key auto_increment,
    naziv varchar(20) not null,
    zanr varchar(20) not null,
    glumci varchar(50) not null
);

create table karta(
    sifra int not null primary key auto_increment,
    dvorana int not null,
    datumpocetka datetime not null,
    datumzavrsetka datetime,
    cijena decimal(16,8) not null,
    film int not null,
    kupac int not null,
    prodavac int not null
);

alter table karta add foreign key (prodavac) references prodavac(sifra);

alter table karta add foreign key (dvorana) references dvorana(sifra);
alter table karta add foreign key (film) references film(sifra);
alter table karta add foreign key (kupac) references kupac(sifra);

select * from prodavac;
insert into prodavac(ime, prezime)
values ('Stevo','Stević'),
('Pero','Perić'),
('Robert','Pavlović'),
('Mirjana','Božić'),
('Stjepan','Lovrić');

select * from dvorana;
insert into dvorana (naziv)
values ('Dvorana 1'),
('Dvorana 2'),
('Dvorana 3'),
('Dvorana 4'),
('Dvorana 5');