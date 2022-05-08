# 7. Taksi Sluzba
# Taksi tvrtka ima više vozila. 
# Jedno vozilo vozi jedan vozač. 
# U jednoj vožnji vozač može prevesti više putnika. 
# Jedan putnik se naravno može tijekom vremena imati više vožnji.

# C:\xampp\mysql\bin\mysql -uroot < C:\Users\filip\Documents\jp26\Zadaca\taksi_sluzba.sql

drop database if exists taksi_sluzba;
create database taksi_sluzba;

use taksi_sluzba;

create table vozilo(
    broj_vozila varchar(50),
	reg_tablica varchar(50),
   	vrsta varchar(50), 
	vozac varchar(50)
);

create table vozac(
	sifra varchar(50),
	ime varchar(50),
	prezime varchar(50),
    iban varchar(50),
	vozacka varchar(50)
);

create table voznja(
	sifra varchar(50),
   	trajanje varchar(50),
	polaziste varchar(50),
	odrediste varchar(50),
    cijena varchar(50),
	vozilo varchar(50)
);

create table putnik(
	sifra varchar(50),
	ime varchar(50),
	broj_telefona varchar(50)
);

create table voznja_putnik(
	sifra varchar(50),
	putnik varchar(50),
	voznja varchar(50)
);