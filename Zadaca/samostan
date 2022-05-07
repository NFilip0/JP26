# 6. Samostan
# U samostanu se nalaze svećenici. 
# Svaki svećenik je zadužen za više poslova. 
# Jedan posao u isto vrijeme može obavljati više svećenika. 
# Svaki svećenik ima samo jednog nadređenog svećenika.

# C:\xampp\mysql\bin\mysql -uroot < C:\Users\filip\Documents\jp26\Zadaca\samostan


drop database if exists samostan;
create database samostan;

use samostan;

create table svecenik(
    sifra varchar(50),
    ime varchar(50),
    prezime varchar(50),
    nadredeni_svecenik varchar(50)
);

create table posao(
    sifra varchar(50),
    naziv varchar(50),
    trajanje varchar(50)
);

create table svecenik_posao(
    svecenik varchar(50),
    posao varchar(50)
);