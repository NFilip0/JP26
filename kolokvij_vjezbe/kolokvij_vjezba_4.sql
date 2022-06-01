# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\filip\Documents\jp26\kolokvij_vjezbe\kolokvij_vjezba_4.sql
drop database if exists kolokvij_vjezba_4;
create database kolokvij_vjezba_4;

use kolokvij_vjezba_4;

# 0. Kreirajte tablice i veze između tablica.

create table punac(
	sifra int not null primary key auto_increment,
	treciputa datetime,
	majica varchar(46),
	jmbag char(11) not null,
	novcica decimal(18,7) not null,
	maraka decimal(12,6) not null,
	ostavljen int not null
);

create table ostavljen(
	sifra int not null primary key auto_increment,
	modelnaocala varchar(43),
	introvertno bit,
	kuna decimal(14,10)
);

create table prijatelj(
	sifra int not null primary key auto_increment,
	eura decimal(16,9),
	prstena int not null,
	gustoca decimal(16,5),
	jmbag char(11) not null,
	suknja varchar(47) not null,
	becar int not null
);

create table becar(
	sifra int not null primary key auto_increment,
	novcica decimal(14,8),
	kratkamajica varchar(48) not null,
	bojaociju varchar(36) not null,
	snasa int not null
);

create table snasa(
	sifra int not null primary key auto_increment,
	introvertno bit,
	treciputa datetime,
	haljina varchar(44) not null,
	zena int not null
);

create table zena (
	sifra int not null primary key auto_increment,
	suknja varchar(39) not null,
	lipa decimal(18,7),
	prstena int not null
);

create table zena_mladic(
	sifra int not null primary key auto_increment,
	zena int not null,
	mladic int not null
);

create table mladic(
	sifra int not null primary key auto_increment,
	kuna decimal(15,9),
	lipa decimal(18,5),
	nausnica int,
	stilfrizura varchar(49),
	vesta varchar(34) not null
);

alter table punac add foreign key (ostavljen) references ostavljen(sifra);

alter table prijatelj add foreign key (becar) references becar(sifra);

alter table becar add foreign key (snasa) references snasa(sifra);

alter table snasa add foreign key (zena) references zena(sifra);
alter table zena_mladic add foreign key (mladic) references mladic(sifra);
alter table zena_mladic add foreign key (zena) references zena(sifra);

# 1. U tablice becar, snasa i zena_mladic unesite po 3 retka.

select * from zena;
insert into zena (suknja,lipa,prstena) values
	('suknja1',10,1),
	('suknja2',20,2),
	('suknja3',30,3);

select * from mladic;
insert into mladic (kuna,lipa,nausnica,stilfrizura,vesta) values
	(null,null,null,null,'vesta1'),
	(null,null,null,null,'vesta2'),
	(null,null,null,null,'vesta3');

select * from zena_mladic;
insert into zena_mladic (zena,mladic) values
	(1,1),
	(2,2),
	(3,3);

select * from snasa;
insert into snasa (introvertno,treciputa,haljina,zena) values
	(null,null,'haljina1',1),
	(null,null,'haljina2',2),
	(null,null,'haljina3',3);
	
select * from becar;
insert into becar (novcica,kratkamajica,bojaociju ,snasa ) values
	(null,'kratkamajica1','bojaociju1',1),
	(null,'kratkamajica2','bojaociju2',2),
	(null,'kratkamajica3','bojaociju3',3);

# 2. U tablici punac postavite svim zapisima kolonu majica na vrijednost Osijek.

update punac set majica = 'Osijek';

# 3. U tablici prijatelj obrišite sve zapise čija je vrijednost kolone prstena veće od 17.

delete from prijatelj where prstena > 17;

# 4. Izlistajte haljina iz tablice snasa uz uvjet da vrijednost kolone treciputa nepoznate.

select haljina from snasa where treciputa = null;

# 5. Prikažite naušnica iz tablice mladic, jmbag iz tablice prijatelj te kratkamajica 
# iz tablice becar uz uvjet da su vrijednosti kolone treciputa iz tablice snasa 
# poznate te da su vrijednosti kolone lipa iz tablice zena različite od 29. 
# Podatke posložite po kratkamajica iz tablice becar silazno.

select a.nausnica ,f.jmbag ,e.kratkamajica 
from mladic a
inner join zena_mladic b on b.mladic =a.sifra 
inner join zena c on c.sifra = b.zena 
inner join snasa d on d.zena =c.sifra 
inner join becar e on e.snasa =d.sifra 
inner join prijatelj f on f.becar =e.sifra 
where d.treciputa is not null and c.lipa!=29
order by e.kratkamajica desc;

# 6. Prikažite kolone lipa i prstena iz tablice zena čiji
# se primarni ključ ne nalaze u tablici zena_mladic.
select a.lipa ,a.prstena 
from zena a
left join zena_mladic b on b.zena =a.sifra
where b.sifra is null;