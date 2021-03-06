# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\filip\Documents\jp26\kolokvij_vjezbe\kolokvij_vjezba_2.sql
drop database if exists kolokvij_vjezba_2;
create database kolokvij_vjezba_2;

use kolokvij_vjezba_2;

# 0. Kreirajte tablice i veze između tablica.

create table zarucnica(
	sifra int not null primary key auto_increment,
	narukvica int,
	bojakose varchar(37) not null,
	novcica decimal(15,9),
	lipa decimal(15,8) not null,
	indiferentno bit not null
);

create table decko_zarucnica (
	sifra int not null primary key auto_increment,
	decko int not null,
	zarucnica int not null
);

create table decko(
	sifra int not null primary key auto_increment,
	indiferentno bit,
	vesta varchar(34),
	asocijalno bit not null
);

create table cura(
	sifra int not null primary key auto_increment,
	haljina varchar(33) not null,
	drugiputa datetime not null,
	suknja varchar(38),
	narukvica int,
	introvertno bit,
	majica varchar(40) not null,
	decko int
);

create table neprijatelj(
	sifra int not null primary key auto_increment,
	majica varchar(32),
	haljina varchar(43) not null,
	lipa decimal(16,8),
	modelnaocala varchar(49) not null,
	kuna decimal(12,6) not null,
	jmbag char(11),
	cura int
);

create table brat(
	sifra int not null primary key auto_increment,
	suknja varchar(47),
	ogrlica int not null,
	asocijalno bit not null,
	neprijatelj int not null
);

create table prijatelj(
	sifra int not null primary key auto_increment,
	modelnaocala varchar(37),
	treciputa datetime not null,
	ekstroventno bit not null,
	prviputa datetime,
	svekar int not null
);

create table svekar(
	sifra int not null primary key auto_increment,
	stilfrizura varchar(48),
	ogrlica int not null,
	asocijalno bit not null
);


alter table brat add foreign key (neprijatelj) references neprijatelj(sifra);

alter table neprijatelj add foreign key (cura) references cura (sifra);

alter table cura add foreign key (decko) references decko (sifra);

alter table decko_zarucnica add foreign key (decko) references decko (sifra);
alter table decko_zarucnica add foreign key (zarucnica) references zarucnica (sifra);

alter table prijatelj add foreign key (svekar) references svekar (sifra);

# 1. U tablice neprijatelj,cura i decko_zarucnica unesite po 3 retka.

select * from neprijatelj;
insert into neprijatelj (majica,haljina,lipa,modelnaocala,kuna,jmbag,cura) values
	(null,'haljina1',null,'modelnaocala1',100,null,null),
	(null,'haljina2',null,'modelnaocala2',200,null,null),
	(null,'haljina3',null,'modelnaocala3',300,null,null);
	
select * from cura;
insert into cura (haljina,drugiputa,suknja,narukvica,introvertno,majica,decko) values
	('haljina1','2022-05-22',null,null,null,'majica1',null),
	('haljina2','2022-05-23',null,null,null,'majica2',null),
	('haljina3','2022-05-24',null,null,null,'majica3',null);

select * from decko;
insert into decko (indiferentno,vesta,asocijalno) values
	(null,null,1),
	(null,null,0),
	(null,null,1);

select * from zarucnica;
insert into zarucnica (narukvica,bojakose,novcica,lipa,indiferentno) values
	(null,'bojakose1',null,50,1),
	(null,'bojakose2',null,55,0),
	(null,'bojakose3',null,555,1);

select * from decko_zarucnica;
insert into decko_zarucnica (decko,zarucnica) values
	(1,1),
	(2,2),
	(3,3);

select * from svekar;
insert into svekar (stilfrizura,ogrlica,asocijalno) values
	(null,1,1),
    (null,2,0),
    (null,3,1);

# 2. U tablici prijatelj postavite svim zapisima kolonu
# treciputa na vrijednost 30.travnja 2020.
insert into prijatelj (modelnaocala,treciputa,ekstroventno,prviputa,svekar) values
	(null,'2022-05-24',1,null,1),
    (null,'2022-05-25',1,null,1),
    (null,'2022-05-24',1,null,1);
select * from prijatelj;
update prijatelj set treciputa = '2020-04-30';

# 3. U tablici brat obrišite sve zasapise čija
# je vrijednost kolone ogrilica različito od 14.
insert into brat (suknja,ogrlica,asocijalno,neprijatelj) values
	(null,14,1,1),
    (null,13,0,2),
    (null,15,1,3);

delete from brat where ogrlica != 14;

# 4. Izlistajte suknja iz tablice cura uz uvjet da vrijednost kolone drugiputa nepoznate.
select * from cura where drugiputa is null;

# 5. Prikažite novcica iz tablice zarucnica, neprijatelj iz tablice
# brat te haljina iz tablice neprijatelj uz uvjet da su vrijednosti
# kolone drugiputa iz tablice cura poznate te da su vrijednosti kolone
# vesta iz tablice decko sadrže niz znakova ba. Podatke posložite po
# haljina iz tablice neprijatelj silazno.

select a.novcica ,f.neprijatelj ,e.haljina 
from zarucnica a
inner join decko_zarucnica b on b.zarucnica =a.sifra 
inner join decko c on b.decko =a.sifra 
inner join cura d on d.decko =a.sifra 
inner join neprijatelj e on e.cura =d.sifra 
inner join brat f on f.neprijatelj =e.sifra 
where d.drugiputa is not null and c.vesta like '%ba%'
order by e.haljina desc;

# 6. Prikažite kolone vesta i asocijalno iz tablice decko
# čiji se primarni ključ ne nalaze u tablici decko_zarucnica.
select a.vesta, a.asocijalno
from decko a
left join decko_zarucnica b on b.decko=a.sifra
where b.sifra is null;