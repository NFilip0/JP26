# 1. Frizerski salon
# U frizerskom salonu radi više djelatnica. 
# Jedna djelatnica radi s više korisnika. 
# Korisnik tijekom jednog posjeta koristi jednu uslugu.

# C:\xampp\mysql\bin\mysql -uroot < C:\Users\filip\Documents\jp26\Zadaca\frizerski_salon.sql

drop database if exists frizerski_salon;
create database frizerski_salon;
use frizerski_salon;

create table djelatnica(
    sifra int not null primary key auto_increment,
    osoba int not null,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    iban varchar(50)
);

create table osoba(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    oib char(11)
);

create table usluga(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null,
    cijena decimal(18,2)
);

create table posjeta(
    sifra int not null primary key auto_increment,
    korisnik int not null,
    djelatnica int not null,
    usluga int not null
);