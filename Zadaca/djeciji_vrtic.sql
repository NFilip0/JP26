# 4. Djecji Vrtic
# U dječjem vrtiću postoji više odgojnih skupina. 
# Svaka odgojna skupina ima više djece
# i vodi ih jedna odgajateljica. 
# Odgajateljica ima jednu stručnu spremu.

# C:\xampp\mysql\bin\mysql -uroot < C:\Users\filip\Documents\jp26\Zadaca\djeciji_vrtic.sql

drop database if exists djeciji_vrtic;
create database djeciji_vrtic;

use djeciji_vrtic;

create table skupina(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null,
    broj_djece int,
    odgajateljica int not null
);

create table dijete(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50)not null,
    skupina int not null
);

create table odgajateljica(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    iban varchar(50),
    strucna_sprema int not null
);

create table strucna_sprema(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null
);