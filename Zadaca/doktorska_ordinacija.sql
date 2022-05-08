# 10. Doktorska ordinacija 
# Doktor liječi pacijente. 
# Jednog pacijenta može liječiti više puta.
# U liječenju pacijenta doktoru pomažu medicinske sestre.

# C:\xampp\mysql\bin\mysql -uroot < C:\Users\filip\Documents\jp26\Zadaca\doktorska_ordinacija.sql

drop database if exists doktorska_ordinacija;
create database doktorska_ordinacija;

use doktorska_ordinacija;

create table osoba(
    sifra varchar(50),
    ime varchar(50),
    prezime varchar(50),
    oib varchar(50)
);

create table doktor(
    sifra varchar(50),
    osoba varchar(50),
    iban varchar(50)
);

create table medicinska_sestra(
    sifra varchar(50),
    osoba varchar(50),
    iban varchar(50)
);

create table pacijent(
    sifra varchar(50),
    osoba varchar(50)
);

create table lijecenje(
    sifra varchar(50),
    doktor varchar(50),
    trajanje varchar(50)
);

create table lijecenje_sestra(
    sifra varchar(50),
    lijecenje varchar(50),
    medicinska_sestra varchar(50)
);

create table lijecenje_pacijent(
    sifra varchar(50),
    lijecenje varchar(50),
    pacijent varchar(50)
);