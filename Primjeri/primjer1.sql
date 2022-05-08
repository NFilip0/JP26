# hash je komentar
# sljedecu liniju bez pocetnog hash znaka izvesti u cmd
# C:\xampp\mysql\bin\mysql -uroot < C:\Users\filip\Documents\jp26\Primjeri\edunovajp26

drop database if exists edunovajp26;
create database edunovajp26;

use edunovajp26;

create table smjer(
    naziv        varchar(50),
    trajanje     varchar(50),
    cijena       varchar(50),
    certificiran varchar(50)
);

create table grupa(
    naziv varchar(50),
    smjer varchar(50),
    datumpocetka varchar(50),
    maksimalnopolaznika varchar(50),
    predavac varchar(50)
);

create table osoba(
    ime varchar(50),
    prezime varchar(50),
    oib varchar(50),
    email varchar(50)
);

create table predavac(
    osoba varchar(50),
    iban varchar(50)
);

create table polaznik(
    osoba varchar(50),
    brojugovora varchar(50)
);

create table clan(
    grupa varchar(50),
    polaznik varchar(50)
);