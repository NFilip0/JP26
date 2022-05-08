# 5. Muzej
# U muzeju postoji više izložbi. 
# Jedna izložba ima više djela. 
# Svaki kustos je zadužen za jednu izložbu. 
# Svaka izložba ima jednog sponzora.

# C:\xampp\mysql\bin\mysql -uroot < C:\Users\filip\Documents\jp26\Zadaca\muzej

drop database if exists muzej;
create database muzej;


use muzej;

create table izlozba(
    sifra varchar(50),
    broj_djela varchar(50),
    kustos varchar(50),
    sponzor varchar(50)
);

create table djelo(
    sifra varchar(50),
    naziv varchar(50),
    cijena varchar(50),
    datum_izrade varchar(50),
    autor varchar(50),
    izlozba varchar(50)
);

create table autor(
    sifra varchar(50),
    ime varchar(50),
    prezime varchar(50)
);

create table kustos(
    sifra varchar(50),
    ime varchar(50),
    prezime varchar(50),
    oib varchar(50)
);

create table sponzor(
    sifra varchar(50),
    naziv varchar(50),
    brojugovora varchar(50)
);