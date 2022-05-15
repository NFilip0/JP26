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
values ('Stevo','Stević');
insert into zupan(ime, prezime)
values ('Pero','Perić');
insert into zupan(ime, prezime)
values ('Robert','Bašulj');

select * from zupanija;
insert into zupanija (naziv, zupan)
values (' Osječko-baranjska',1);
insert into zupanija (naziv, zupan)
values ('Brodsko-posavska',2);
insert into zupanija (naziv, zupan)
values ('Vukovarsko-srijemska',3);

select * from opcina;
insert into opcina (naziv,zupanija)
values ('Bilje',1);
insert into opcina (naziv,zupanija)
values ('Bukovlje',2);
insert into opcina (naziv,zupanija)
values ('Borovo',3);
insert into opcina (naziv,zupanija)
values ('Čepin',1);
insert into opcina (naziv,zupanija)
values ('Garčin',2);
insert into opcina (naziv,zupanija)
values ('Cerna',3);

select * from mjesto;
insert into mjesto(naziv,opcina)
values ('mjesto1',1);
insert into mjesto(naziv,opcina)
values ('mjesto2',2);
insert into mjesto(naziv,opcina)
values ('mjesto3',3);
insert into mjesto(naziv,opcina)
values ('mjesto4',4);
insert into mjesto(naziv,opcina)
values ('mjesto5',5);
insert into mjesto(naziv,opcina)
values ('mjesto2',6);
insert into mjesto(naziv,opcina)
values ('mjesto3',1);
insert into mjesto(naziv,opcina)
values ('mjesto4',2);
insert into mjesto(naziv,opcina)
values ('mjesto5',3);
insert into mjesto(naziv,opcina)
values ('mjesto6',4);
insert into mjesto(naziv,opcina)
values ('mjesto2',5);
insert into mjesto(naziv,opcina)
values ('mjesto1',6);