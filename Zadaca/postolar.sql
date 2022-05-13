# 8. Postolar
# Postolar popravlja obuću.
# Jedan korisnik može postolaru donijeti više komada obuće na popravak
# dok jedan komad obuće može biti više puta na popravku.
# Postolar ima šegrta koji sudjeluje u određenim popravcima obuće.

# C:\xampp\mysql\bin\mysql -uroot < C:\Users\filip\Documents\jp26\Zadaca\postolar.sql

drop database if exists postolar;
create database postolar;

use postolar;

create table korisnik(
    sifra int not null primary key auto_increment,
    ime varchar(50),
    prezime varchar(50),
    broj_mobitela int
);
create table postolar(
    sifra int not null primary key auto_increment,
    korisnik int not null,
    segrt int not null,
    iban varchar(50)
);

create table segrt(
    sifra int not null primary key auto_increment,
    korisnik int not null,
    iban varchar(50)
);

create table obuca(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null,
    boja varchar(50) not null,
    vlasnik int not null
);

create table popravak(
    sifra int not null primary key auto_increment,
    postolar int not null,
    segrt int,
    trajanje varchar(50) not null, 
    cijena decimal(18,2)
);

create table popravak_obuca(
    sifra int not null primary key auto_increment,
    popravak int not null,
    obuca int not null
);

alter table postolar add foreign key (korisnik) references korisnik(sifra);
alter table postolar add foreign key (segrt) references segrt(sifra);

alter table segrt add foreign key (korisnik) references korisnik(sifra);

alter table obuca add foreign key (vlasnik) references korisnik(sifra);

alter table popravak add foreign key (postolar) references postolar(sifra);
alter table popravak add foreign key (segrt) references segrt(sifra);

alter table popravak_obuca add foreign key (popravak) references popravak(sifra);
alter table popravak_obuca add foreign key (obuca) references obuca(sifra);