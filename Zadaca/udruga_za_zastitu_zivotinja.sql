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
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    iban varchar(50),
    oib char(11)
);

create table sticenik(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    zivotinja int not null,
    osoba int not null,
    prostor int not null
);

create table prostor(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null
);

create table zivotinja(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    vrsta varchar(50) not null,
    prostor int not null
);

alter table sticenik add foreign key (osoba) references osoba(sifra);
alter table sticenik add foreign key (prostor) references prostor(sifra);
alter table sticenik add foreign key (zivotinja) references zivotinja(sifra);

alter table zivotinja add foreign key (prostor) references prostor(sifra);