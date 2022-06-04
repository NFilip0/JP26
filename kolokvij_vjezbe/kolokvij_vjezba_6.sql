# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\filip\Documents\jp26\kolokvij_vjezbe\kolokvij_vjezba_6.sql

drop database if exists kolokvij_vjezba_6;
create database kolokvij_vjezba_6;

use kolokvij_vjezba_6;

# 0. Kreirajte tablice i veze između tablica.

create table decko(
	sifra int not null primary key auto_increment,
	prvipta datetime,
	modelnaocala varchar(41),
	nausnica int,
	zena int not null
);

create table zena(
	sifra int not null primary key auto_increment,
	novcica decimal(14,8) not null,
	narukvica int not null,
	dukserica varchar(40) not null,
	haljina varchar(30),
	hlace varchar(32),
	brat int not null
);

create table brat(
	sifra int not null primary key auto_increment,
	nausnica int not null,
	treciputa datetime not null,
	narukvica int not null,
	hlace varchar(31),
	prijatelj int
);

create table prijatelj(
	sifra int not null primary key auto_increment,
	haljina varchar(35),
	prstena int not null,
	introvertno bit,
	stilfrizura varchar(36) not null
);

create table prijatelj_ostavljena(
	sifra int not null primary key auto_increment,
	prijatelj int not null,
	ostavljena int not null
);

create table ostavljena(
	sifra int not null primary key auto_increment,
	prviputa datetime not null,
	kratkamajica varchar(39) not null,
	drugiputa datetime,
	maraka decimal(14,10)
);

create table svekrva(
	sifra int not null primary key auto_increment,
	hlace varchar(48) not null,
	suknja varchar(42) not null,
	ogrlica int not null,
	treciputa datetime not null,
	dukserica varchar(32) not null,
	narukvica int not null,
	punac int
);

create table punac(
	sifra int not null primary key auto_increment,
	ekstroventno bit not null,
	suknja varchar(30) not null,
	majica varchar(44) not null,
	prviputa datetime not null
);


alter table svekrva add foreign key (punac) references punac(sifra);

alter table decko add foreign key (zena) references zena(sifra);

alter table zena add foreign key (brat) references brat(sifra);

alter table brat add foreign key (prijatelj) references prijatelj(sifra);

alter table prijatelj_ostavljena add foreign key (prijatelj) references prijatelj(sifra);
alter table prijatelj_ostavljena add foreign key (ostavljena) references ostavljena(sifra);

1. U tablice zena,brat i prijatelj_ostavljena unesite po 3 retka.

select * from brat;
insert into brat (nausnica,treciputa,narukvica,hlace,prijatelj) values
	(1,'2022-06-02',1,null,null),
	(2,'2022-06-04',2,null,null),
	(3,'2022-06-03',3,null,null);

select * from zena ;
insert into zena (novcica,narukvica,dukserica,haljina,hlace,brat) values
	(100,1,'dukserica1',1,null,null,null),
	(200,2,'dukserica2',2,null,null,null),
	(300,3,'dukserica3',3,null,null,null);

insert into prijatelj (haljina,prstena,introvertno,stilfrizura) values
	(null,1,1,'stilfrizura1'),
	(null,2,0,'stilfrizura2'),
	(null,3,1,'stilfrizura3');

insert into ostavljena (prviputa,kratkamajica,drugiputa,maraka) values 
	('2022-06-02','kratkamajica1','2022-07-02'),
	('2022-06-04','kratkamajica2','2022-07-04'),
	('2022-06-03','kratkamajica3','2022-07-03');
insert into prijatelj_ostavljena (prijatelj,ostavljena) values
	(1,1),
	(2,2),
	(3,3);

# 2. U tablici svekrva postavite svim zapisima kolonu suknja na vrijednost Osijek.

update svekrva set suknja = 'Osijek';

# 3. U tablici decko obrišite sve zapise čija je vrijednost kolone modelnaocala manje od AB.

delete from decko where modelnaocala < 'AB';
