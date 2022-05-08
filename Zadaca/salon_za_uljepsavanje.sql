# 2. Salon za uljepšavanje
# U salonu za uljepšavanje radi više djelatnica. 
# Jedna djelatnica na dan radi s više korisnika. 
# Korisnik tijekom jednog posjeta koristi jednu uslugu.

# C:\xampp\mysql\bin\mysql -uroot < C:\Users\filip\Documents\jp26\Zadaca\salon_za_uljepsavanje.sql

drop database if exists salon_za_uljepsavanje;
create database salon_za_uljepsavanje;

use salon_za_uljepsavanje;

create table djelatnica(
    sifra varchar(50),
    osoba varchar(50) ,
    ime varchar(50),
    prezime varchar(50),
    iban varchar(50)
);

create table osoba(
    sifra varchar(50),
    ime varchar(50),
    prezime varchar(50),
    oib varchar(11)
);

create table usluga(
    sifra varchar(50),
    naziv varchar(50),
    cijena varchar(50)
);

create table posjeta(
    sifra varchar(50),
    korisnik varchar(50),
    djelatnica varchar(50),
    usluga varchar(50)
);

