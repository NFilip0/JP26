# hash je komentar
# sljedecu liniju bez pocetnog hash znaka izvesti u cmd
# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\filip\Documents\jp26\Primjeri\edunovajp26.sql

drop database if exists edunovajp26;
create database edunovajp26;

use edunovajp26;

create table smjer(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null,
    trajanje int null, # null je zadana vrijednost,kada ne pise podrazumijeva se
    cijena decimal(18,2) not null,
    upisnina decimal(18,2) not null,
    certificiran boolean
);

create table grupa(
    sifra int not null primary key auto_increment,
    naziv varchar(20) not null,
    smjer int not null,
    datumpocetka datetime,
    maksimalnopolaznika int,
    predavac int
);

create table osoba(
    sifra int not null primary key auto_increment,
    ime varchar(50),
    prezime varchar(50),
    oib char(11),
    email varchar(100)
);

create table predavac(
    sifra int not null primary key auto_increment,
    osoba int not null,
    iban varchar(50)
);

create table polaznik(
    sifra int not null primary key auto_increment,
    osoba int not null,
    brojugovora varchar(20)
);

create table clan(
    sifra int not null primary key auto_increment,
    grupa int not null,
    polaznik int not null
);

#definiranje vanjskih ključeva
alter table grupa add foreign key (smjer) references smjer(sifra);
alter table grupa add foreign key (predavac) references predavac(sifra);

alter table clan add foreign key (grupa) references grupa(sifra);
alter table clan add foreign key (polaznik) references polaznik(sifra);

alter table polaznik add foreign key (osoba) references osoba(sifra);

alter table predavac add foreign key (osoba) references osoba(sifra);

# unos podataka
# loš način
# 1 - vrijednost dobivenog primarnog ključa
insert into smjer values
(null,'Java programiranje',130,
5999.99,500,true);

# bolji način 
# 2 
insert into smjer (upisnina,naziv,trajanje,
certificiran,cijena)
values
(500,'PHP programiranje',130,false,6000);

# primjer dobre prakse
# 3
insert into smjer (sifra,naziv,trajanje,cijena,upisnina,certificiran)
values (null,'Računovodstvo',100,3000,500,null);

# 1
insert into grupa 
(sifra,naziv,smjer,datumpocetka,
maksimalnopolaznika,predavac)
values
(null,'JP26',1,'2022-04-27',20,null);

# 2
insert into grupa 
(sifra,naziv,smjer,datumpocetka,
maksimalnopolaznika,predavac)
values
(null,'PP25',2,'2022-04-27',20,null);

# 1
insert into osoba (sifra,ime,prezime,oib,email)
values (null,'Tomislav','Jakopec',
null,'tjakopec@gmail.com');


# 2 unijeti osobu Shaquille O'Neal
insert into osoba (sifra,ime,prezime,oib,email)
values (null,'Shaquille','O''Neal',
null,'shaki@gmail.com');

# mogućnosti 'O\'Neal', "O'Neal"

# 3 - 14
insert into osoba (sifra,prezime,ime,oib,email) values
(null,'Županić','Marko',null,'marko.zupanic8@gmail.com'),
(null,'Borić','Alen',null,'boricalen@live.com'),
(null,'Ramač','Dino',null,'dinoramac@gmail.com'),
(null,'Fratrić','Ivana',null,'ivana.fratric1@gmail.com'),
(null,'Prgić','Mihael',null,'mihaelp243@gmail.com'),
(null,'Skorup','Marko',null,'mskorup@gmail.com'),
(null,'Nađ','Filip',null,'filip.nad100@gmail.com'),
(null,'Kasapović','Vedran',null,'vedran.kasapovic@gmail.com'),
(null,'Stanić','Ivan',null,'stambaivan@yahoo.com'),
(null,'Ivan','Olujić',null,'ivan.olujic.os@gmail.com'),
(null,'Vukašin','Vaščanin',null,'vukasinvascanin0@gmail.com'),
(null,'Zdelar','Mihael',null,'mzdelar741@gmail.com');

# 1,2
insert into predavac (sifra,osoba,iban)
values (null,1,null),(null,2,null);

# 1-12
insert into polaznik (sifra,osoba,brojugovora) values
(null,3,null),(null,4,null),(null,5,null),
(null,6,null),(null,7,null),(null,8,null),
(null,9,null),(null,10,null),(null,11,null),
(null,12,null),(null,13,null),(null,14,null);

insert into clan(grupa,polaznik) values
(1,1),(1,2),(1,3),(1,4),
(1,5),(1,6),(1,7),(1,8),
(1,9),(1,10),(1,11),(1,12);

select * from smjer where sifra=1;

update smjer set upisnina=600 where sifra=1;

update smjer set
cijena=5000,
trajanje=100
where sifra=2;
 
update grupa set predavac=1 where sifra=1;

delete from smjer where sifra=3;

# unesite sebe kao predavača
 select * from osoba;

select * from predavac;

insert into predavac (sifra,osoba,iban)
values (null,9,null);

select * from smjer;
insert into smjer (sifra,naziv,trajanje,cijena,upisnina,certificiran)
values (null,'Tehničar za mrežu',50,1500,300,null);

# sebi kao predavaču promjeniti iban

update predavac set iban='HR312312412412414' where sifra=3;

# unijeti svoju užu rodbinu za polaznike

insert into osoba (sifra,prezime,ime,oib,email) values
(null,'Nađ','Dario',null,'dario.nadj@gmail.com'),
(null,'Nađ','Mirjana',null,'mirjana.nadj@gmail.com'),
(null,'Anić','Sanja',null,'sanja.anić@gmail.com'),
(null,'Anić','Dunja',null,'dunja.anić@gmail.com'),
(null,'Nađ','Luka',null,'nađ.luka@gmail.com'),
(null,'Nađ','Antonela',null,'nađ.antonela@gmail.com');

select * from osoba;

insert into polaznik (sifra,osoba,brojugovora) values
(null,15,null),(null,16,null),
(null,17,null),(null,18,null),
(null,19,null),(null,20,null);

select * from polaznik;

insert into clan(grupa,polaznik) values
(1,13),(1,14),(1,15),
(2,16),(2,17),(2,18);

select * from clan;

update smjer set cijena=cijena*1.10;

select * from smjer;