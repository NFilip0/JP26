 # C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\filip\Documents\jp26\Zadaci\zupanije.sql
drop database if exists ustrojstvo;
create database ustrojstvo;

use ustrojstvo;

create table zupanija(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null,
    zupan varchar(50)
);

create table opcina(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null,
    zupanija int not null
);

alter table opcina add foreign key (zupanija) references zupanija(sifra);

select * from zupanija;

insert into zupanija (naziv)
values (' Osječko-baranjska');
insert into zupanija (naziv)
values(' Varaždinska županija');
insert into zupanija (naziv)
values (' Grad Zagreb');

insert into opcina (naziv,zupanija)
values ('Peščenica',3);
insert into opcina (naziv,zupanija)
values ('Maksimir',3);
insert into opcina (naziv,zupanija)
values ('Osijek',1);
insert into opcina (naziv,zupanija)
values ('Beli Manastir',1);