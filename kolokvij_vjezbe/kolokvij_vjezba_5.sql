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

insert into svekar(bojakose,majica,carape,haljina,narukvica,eura)values
	(null,null,'carape1',null,null,10),
	(null,null,'carape2',null,null,15),
	(null,null,'carape3',null,null,20);

insert into cura(carape,maraka,asocijalno,vesta)values
	('carape1',5,null,'vesta1'),
	('carape2',10,null,'vesta2'),
	('carape3',15,null,'vesta3'),

insert into punac(dukserica,prviputa,majica,svekar)values
	(null,'prviputa1','majica1',1),
	(null,'prviputa2','majica2',2),
	(null,'prviputa3','majica3',3);

insert into punica(hlace,nausnica,ogrlica,vesta,modelnaocala,treciputa,punac)values
	('hlace1','nausnica1',null,'vesta1','modelnaocala1','treciputa1',1),
	('hlace2','nausnica2',null,'vesta2','modelnaocala2','treciputa2',2),
	('hlace3','nausnica3',null,'vesta3','modelnaocala3','treciputa3',3);

insert into svekar_cura(svekar,cura)values
	(1,1),
	(2,2),
	(3,3);

# 2. U tablici mladic postavite svim zapisima kolonu haljina na vrijednost Osijek.

update mladic set haljina = 'Osijek';

# 3. U tablici ostavljena obrišite sve zapise čija je vrijednost kolone ogrlica jednako 17.

delete from ostavljena where ogrlica = 17;

# 4. Izlistajte majica iz tablice punac uz uvjet da vrijednost kolone prviputa nepoznate.

select majica from punac where prviputa is null;

# 5. Prikažite asocijalno iz tablice cura, stilfrizura iz tablice ostavljena te nausnica iz tablice punica
# uz uvjet da su vrijednosti kolone prviputa iz tablice punac poznate te da su vrijednosti kolone majica 
# iz tablice svekar sadrže niz znakova ba. Podatke posložite po nausnica iz tablice punica silazno.

select 
from cura a 
inner join svekar_cura b on b.cura=a.sifra
inner join svekar c on b.svekar=c.sifra
inner join punac d on d.svekar=c.sifra
inner join punica e on e.punac=d.sifra
inner join ostavljena f on f.punica=e.sifra
where d.prviputa is null and c.majica like '%ba%'
order by e.nausnica desc;

# 6. Prikažite kolone majica i carape iz tablice svekar čiji se primarni ključ ne nalaze u tablici svekar_cura.
select a.majica ,a.carape 
from svekar a
left join svekar_cura b on b.svekar =a.sifra 
where b.sifra is null;