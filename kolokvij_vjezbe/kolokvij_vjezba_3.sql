# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\filip\Documents\jp26\kolokvij_vjezbe\kolokvij_vjezba_3.sql
drop database if exists kolokvij_vjezba_3;
create database kolokvij_vjezba_3;

use kolokvij_vjezba_3;

# 0. Kreirajte tablice i veze između tablica.

create table svekar(
	sifra int not null primary key auto_increment,
	novcica decimal(16,8) not null,
	suknja varchar(44) not null,
	bojakose varchar(36),
	prstena int,
	narukvica int not null,
	cura int not null
);

create table cura(
	sifra int not null primary key auto_increment,
	dukserica varchar(49),
	maraka decimal(13,7),
	drugiputa datetime,
	majica varchar(49),
	novcica decimal(15,8),
	ogrlica int not null
);

create table snasa (
	sifra int not null primary key auto_increment,
	introvertno bit,
	kuna decimal(15,6) not null,
	eura decimal(12,9) not null,
	treciputa datetime,
	ostavljena int not null
);

create table punica(
	sifra int not null primary key auto_increment,
	asocijalno bit,
	kratkamajica varchar(44),
	kuna decimal(13,8) not null,
	vesta varchar(32) not null,
	snasa int
);

create table ostavljena(
	sifra int not null primary key auto_increment,
	kuna decimal(17,5),
	lipa decimal(15,6),
	majica varchar(36),
	modelnaocala varchar(31) not null,
	prijatelj int
);

create table prijatelj(
	sifra int not null primary key auto_increment,
	kuna decimal(16,10),
	haljina varchar(37),
	lipa decimal(13,10),
	dukserica varchar(31),
	indiferentno bit not null
);

create table prijatelj_brat(
	sifra int not null primary key auto_increment,
	prijatelj int not null,
	brat int not null
);

create table brat(
	sifra int not null primary key auto_increment,
	jmbag char(11),
	ogrlica int not null,
	ekstroventno bit not null
);

alter table svekar add foreign key (cura) references cura(sifra);

alter table punica add foreign key (snasa) references snasa(sifra);

alter table snasa add foreign key (ostavljena) references ostavljena(sifra);

alter table ostavljena add foreign key (prijatelj) references prijatelj(sifra);

alter table prijatelj_brat add foreign key (prijatelj) references prijatelj(sifra);
alter table prijatelj_brat add foreign key (brat) references brat(sifra);

# 1. U tablice snasa,ostavljena i prijatelj_brat unesite po 3 retka.

select * from ostavljena;
insert into ostavljena (kuna,lipa,majica,modelnaocala,prijatelj) values
	(null,8,'majica1',1,null),
	(null,9,'majica2',2,null),
	(null,10,'majica3',3,null);

select * from snasa;
insert into snasa (introvertno,kuna,eura,treciputa,ostavljena) values
	(null,10,5,null,1),
	(null,20,10,null,2),
	(null,30,15,null,3);

select * from prijatelj;
insert into prijatelj (indiferentno) values
	(1),
	(0),
	(1);

select * from brat;
insert into brat (ogrlica,ekstroventno) values
	(1,1),
	(2,1),
	(3,1);

select * from prijatelj_brat;
insert into prijatelj_brat (prijatelj,brat) values
	(1,3),
	(2,2),
	(3,1);

# 2. U tablici svekar postavite svim zapisima kolonu suknja na vrijednost Osijek.
select * from svekar;
insert into cura (dukserica,maraka,drugiputa,majica,novcica,ogrlica) values
    (null,null,null,null,null,null),
    (null,null,null,null,null,null),
    (null,null,null,null,null,null);
insert into svekar (novcica,suknja,bojakose,prstena,narukvica,cura) values
    (1,'suknja1',null,null,5,1),
    (2,'suknja2',null,null,6,2),
    (3,'suknja3',null,null,7,3);
update svekar set suknja='Osijek';

# 3. U tablici punica obrišite sve zasapise čija
# je vrijednost kolone kratkamajica jednako AB.
insert into punica (asocijalno,kratkamajica,kuna,vesta,snasa) values
	(null,'BA',1,'vesta1',1),
    (null,'AB',2,'vesta2',2),
    (null,'BAAB',3,'vesta3',3);

delete from punica where kratkamajica ='AB';

# 4. Izlistajte majica iz tablice ostavljena uz uvjet 
# da vrijednost kolone lipa nije 9,10,20,30 ili 35.

select * from ostavljena;
select majica from ostavljena where lipa !=9 and lipa !=10 and lipa !=20 and lipa !=30 and lipa !=35;

# 5. Prikažite ekstroventno iz tablice brat, vesta iz tablice
# punica te kuna iz tablice snasa uz uvjet da su vrijednosti
# kolone lipa iz tablice ostavljena različito od 91 te da su vrijednosti kolone
# haljina iz tablice prijatelj sadrže niz znakova ba. Podatke posložite po
# kuna iz tablice snasa silazno.

select a.ekstroventno ,f.vesta ,e.kuna
from brat a
inner join prijatelj_brat b on b.brat =a.sifra 
inner join prijatelj c on c.sifra =b.prijatelj
inner join ostavljena d on d.prijatelj =c.sifra 
inner join snasa e on e.ostavljena =d.sifra 
inner join punica f on f.snasa =e.sifra 
where d.lipa != 91 and c.haljina like '%ba%'
order by e.kuna desc;

# 6. Prikažite kolone haljina i lipa iz tablice prijatelj 
# čiji se primarni ključ ne nalaze u tablici prijatelj_brat.

select a.haljina ,a.lipa 
from prijatelj a
left join prijatelj_brat b on b.prijatelj =a.sifra
where b.sifra is null;