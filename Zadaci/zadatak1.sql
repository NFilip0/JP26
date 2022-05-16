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

select * from zupan;
insert into zupan(ime, prezime)
values ('Stevo','Stević'),
('Pero','Perić'),
('Robert','Bašulj');

select * from zupanija;
insert into zupanija (naziv, zupan)
values (' Osječko-baranjska',1),
('Brodsko-posavska',2),
('Vukovarsko-srijemska',3);


select * from opcina;
insert into opcina (naziv,zupanija)
values ('Bilje',1),
('Bukovlje',2),
('Borovo',3),
('Čepin',2),
('Garčin',2),
('Cerna',2);

select * from mjesto;
insert into mjesto(naziv,opcina)
values ('mjesto1',1),
('mjesto2',2),
('mjesto3',3),
('mjesto4',4),
('mjesto5',5),
('mjesto2',6),
('mjesto3',1),
('mjesto4',2),
('mjesto5',3),
('mjesto6',4),
('mjesto2',5),
('mjesto1',6);
