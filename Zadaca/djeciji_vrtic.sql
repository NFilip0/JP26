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
    sifra varchar(50),
    naziv varchar(50),
    broj_djece varchar(50),
    odgajateljica varchar(50)
);

create table dijete(
    sifra varchar(50),
    ime varchar(50),
    prezime varchar(50),
    skupina varchar(50)
);

create table odgajateljica(
    sifra varchar(50),
    ime varchar(50),
    prezime varchar(50),
    iban varchar(50),
    strucna_sprema varchar(50)
);

create table strucna_sprema(
    sifra varchar(50),
    naziv varchar(50)
);