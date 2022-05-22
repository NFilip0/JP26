# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\filip\Documents\jp26\ZavrsniRad\kino.sql
drop database if exists kino;
create database kino;

use kino;

create table prodavac(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    iban varchar(50) not null
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
    glumac int not null
);

create table glumac(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null
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

alter table film add foreign key (glumac) references glumac(sifra);

alter table karta add foreign key (prodavac) references prodavac(sifra);
alter table karta add foreign key (dvorana) references dvorana(sifra);
alter table karta add foreign key (film) references film(sifra);
alter table karta add foreign key (kupac) references kupac(sifra);

select * from prodavac;
insert into prodavac(ime, prezime, iban)
values ('Stevo','Stević','HR6025000098263725897'),
('Pero','Perić','HR6024020066558369253'),
('Robert','Pavlović','HR3724840086298759382'),
('Mirjana','Božić','HR3525000098634119877'),
('Stjepan','Lovrić','HR1123600003633654122');

select * from dvorana;
insert into dvorana (naziv)
values ('Dvorana 1'),
('Dvorana 2'),
('Dvorana 3'),
('Dvorana 4'),
('Dvorana 5');

select * from kupac;
insert into kupac (ime,prezime)
values ('Marija', 'Knežević'),
('Ivan', 'Horvat'),
('Ana', 'Babić'),
('Ivica', 'Marković'),
('Tomislav', 'Bošnjak');

select * from glumac;
insert into glumac (ime,prezime)
values ('Ward','Horton'),
('Bob','Odenkirk'),
('Ryan','Reynolds'),
('Emma','Pasarow'),
('Marco','D''Amore'),
('Maya','Sansa'),
('Belmont','Cameli'),
('Walker','Scobell'),
('Aleksey','Serebryakov'),
('Annabelle','Wallis');

select * from film;
insert into film(naziv,zanr,glumac)
values ('Annabelle','horror,triler',1),
('Nobody','akcija',2),
('The adam project','komedija,akcija',3),
('Along for the Ride','ljubavni,drama',4),
('Security','triler',5);

select * from karta;
insert into karta(dvorana,datumpocetka,datumzavrsetka,cijena,film,kupac,prodavac)
values (1,'2022-05-21 19:00',null,64.99,1,1,1),
(2,'2022-05-21 20:00',null,64.99,2,3,2),
(4,'2022-05-21 21:00',null,74.99,3,2,3),
(1,'2022-05-21 22:00',null,64.99,4,5,5),
(5,'2022-05-21 19:00',null,74.99,5,4,4);