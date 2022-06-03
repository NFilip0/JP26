# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\filip\Documents\jp26\kolokvij_vjezbe\kolokvij_vjezba_5.sql
drop database if exists kolokvij_vjezba_5;
create database kolokvij_vjezba_5;

use kolokvij_vjezba_5;

# 0. Kreirajte tablice i veze između tablica.

create table mladic(
	sifra int not null primary key auto_increment,
	kratkamajica varchar(48) not null,
	haljina varchar(30) not null,
	asocijalno bit,
	zarucnik int
);

create table zarucnik(
	sifra int not null primary key auto_increment,
	jmbag char(11),
	lipa decimal(12,8),
	indiferentno bit not null
);

create table punac(
	sifra int not null primary key auto_increment,
	dukserica varchar(33),
	prviputa datetime not null,
	majica varchar(36),
	svekar int not null
);

create table ostavljena (
	sifra int not null primary key auto_increment,
	majica varchar(33),
	ogrlica int not null,
	carape varchar(44),
	stilfrizura varchar(42),
	punica int not null
);

create table punica(
	sifra int not null primary key auto_increment,
	hlace varchar(43) not null,
	nausnica int not null,
	ogrlica int,
	vesta varchar(49) not null,
	modelnaocala varchar(31) not null,
	treciputa datetime not null,
	punac int not null
);

create table svekar(
	sifra int not null primary key auto_increment,
	bojakose varchar(33),
	majica varchar(31),
	carape varchar(31) not null,
	haljina varchar(43),
	narukvica int,
	eura decimal(14,5) not null
);

create table svekar_cura(
	sifra int not null primary key auto_increment,
	svekar int not null,
	cura int not null
);

create table cura(
	sifra int not null primary key auto_increment,
	carape varchar(41) not null,
	maraka decimal(17,10) not null,
	asocijalno bit,
	vesta varchar(47) not null
);

alter table mladic add foreign key (zarucnik) references zarucnik(sifra);

alter table ostavljena add foreign key (punica) references punica(sifra);

alter table punica add foreign key (punac) references punac(sifra);

alter table punac add foreign key (svekar) references svekar(sifra);

alter table svekar_cura add foreign key (svekar) references svekar(sifra);
alter table svekar_cura add foreign key (cura) references cura(sifra);

# 1. U tablice punica,punac i svekar_cura unesite po 3 retka.

reate table punica(
	sifra int not null primary key auto_increment,
	hlace varchar(43) not null,
    nausnica int not null,
    ogrlica int,
    vesta varchar(31) not null,
    modelnaocala varchar(31) not null,
    treciputa datetime not null,
    punac int not null
);

create table punac(
	sifra int not null primary key auto_increment,
	dukserica varchar(33),
	prviputa datime not null,
    majica varchar(36),
    svekar int not null
);

create table svekar_cura(
	sifra int not null primary key auto_increment,
    svekar int not null,
    cura int not null
);

# 2. U tablici mladic postavite svim zapisima kolonu haljina na vrijednost Osijek.

update mladic set haljina = 'Osijek';
