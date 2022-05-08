# 3. Udruga za zastitu zivotinja
# U udruzi radi više osoba. 
# Jedna osoba se brine za jednog ili više štićenika udruge.
# Štićenici udruge su životinje. 
# Svaki štićenik se nalazi u jednom prostoru.

# C:\xampp\mysql\bin\mysql -uroot < C:\Users\filip\Documents\jp26\Zadaca\udruga_za_zastitu_zivotinja.sql

drop database if exists udruga_za_zastitu_zivotinja;
create database udruga_za_zastitu_zivotinja;

use udruga_za_zastitu_zivotinja;

create table osoba(
    sifra varchar(50),
    ime varchar(50),
    prezime varchar(50),
    iban varchar(50),
    oib varchar(11)
);

create table prostor(
    sifra varchar(50),
    naziv varchar(50)
);

create table zivotinja(
    sifra varchar(50),
    ime varchar(50),
    vrsta varchar(50),
    prostor varchar(50),
    osoba varchar(50)
);