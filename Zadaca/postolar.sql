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
    sifra varchar(50),
    ime varchar(50),
    prezime varchar(50),
    broj_mobitela varchar(50)
);
create table postolar(
    sifra varchar(50),
    korisnik varchar(50),
    segrt varchar(50),
    iban varchar(50)
);

create table segrt(
    sifra varchar(50),
    korisnik varchar(50),
    iban varchar(50)
);

create table obuca(
    sifra varchar(50),
    naziv varchar(50),
    boja varchar(50),
    vlasnik varchar(50)
);

create table popravak(
    sifra varchar(50),
    postolar varchar(50),
    segrt varchar(50),
    trajanje varchar(50), 
    cijena varchar(50)
);

create table popravak_obuca(
    sifra varchar(50),
    popravak varchar(50),
    obuca varchar(50)
);