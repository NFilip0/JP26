# 5. Muzej
# U muzeju postoji više izložbi. 
# Jedna izložba ima više djela. 
# Svaki kustos je zadužen za jednu izložbu. 
# Svaka izložba ima jednog sponzora.

# C:\xampp\mysql\bin\mysql -uroot < C:\Users\filip\Documents\jp26\Zadaca\muzej.sql

drop database if exists muzej;
create database muzej;


use muzej;

create table izlozba(
    sifra int not null primary key auto_increment,
    broj_djela int,
    kustos int not null,
    sponzor int not null
);

create table djelo(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null,
    cijena decimal(18,2),
    datum_izrade datetime,
    autor int not null,
    izlozba int not null
);

create table autor(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null
);

create table kustos(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    oib char(11)
);

create table sponzor(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null,
    brojugovora varchar(50)
);

alter table izlozba add foreign key (kustos) references kustos(sifra);
alter table izlozba add foreign key (sponzor) references sponzor(sifra);

alter table djelo add foreign key (autor) references autor(sifra);
alter table djelo add foreign key (izlozba) references izlozba(sifra);