# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\filip\Documents\jp26\kolokvij_vjezbe\kolokvij_vjezba_1.sql
drop database if exists kolokvij_vjezba_1;
create database kolokvij_vjezba_1;

use kolokvij_vjezba_1;

# 0. Kreirajte tablice i veze između tablica.

create table sestra( 
    sifra int not null primary key auto_increment,
    introvertno bit,
    haljina varchar(31) not null,
    maraka decimal(16,6),
    hlace varchar(46) not null,
    narukvica int not null
);

create table zena(
    sifra int not null primary key auto_increment,
    treciputa datetime,
    hlace varchar(46),
    kratkamajica varchar(31) not null,
    jmbag char(11) not null,
    bojaociju varchar(39) not null,
    haljina varchar(44),
    sestra int not null
);

create table muskarac(
    sifra int not null primary key auto_increment,
    bojaociju varchar(50) not null,
    hlace varchar(30),
    modelnaocala varchar(43),
    maraka decimal(14,5) not null,
    zena int not null
);

create table mladic( 
    sifra int not null primary key auto_increment,
    suknja varchar(50) not null,
    kuna decimal(16,8) not null,
    drugiputa datetime,
    asocijalno bit,
    ekstroventno bit not null,
    dukserica varchar(40) not null,
    muskarac int
);

create table sestra_svekar(
    sifra int not null primary key auto_increment,
    sestra int not null,
    svekar int not null
);

create table svekar(
    sifra int not null primary key auto_increment,
    bojaociju varchar(40) not null,
    prstena int,
    dukserica varchar(41),
    lipa decimal(13,8),
    eura decimal(12,7),
    majica varchar(35)
);

create table punac (
    sifra int not null primary key auto_increment,
    ogrlica int,
    gustoca decimal(14,9),
    hlace varchar(41) not null
);

create table cura (
    sifra int not null primary key auto_increment,
    novcica decimal(16,5) not null,
    gustoca decimal(18,6) not null,
    lipa decimal(13,10),
    ogrlica int not null,
    bojakose varchar(38),
    suknja varchar(36),
    punac int
);

alter table sestra_svekar add foreign key (svekar) references svekar(sifra);
alter table sestra_svekar add foreign key (sestra) references sestra(sifra);


alter table mladic add foreign key (muskarac) references muskarac(sifra);
alter table muskarac add foreign key (zena) references zena(sifra);
alter table zena add foreign key (sestra) references sestra(sifra);

alter table cura add foreign key (punac) references punac(sifra);

# 1. U tablice muskarac,zena i sestra_svekar unesite po 3 retka
insert into sestra (haljina,hlace,narukvica) values
('haljina1','hlace1',10),
('haljina2','hlace2',11),
('haljina3','hlace3',12);

insert into zena (kratkamajica,jmbag,bojaociju,sestra) values
('kratkamajica1','11111111111','bojaociju1',2),
('kratkamajica2','22222222222','bojaociju2',3),
('kratkamajica3','33333333333','bojaociju3',1);

insert into muskarac (bojaociju,maraka,zena) values
('bojaociju1',100,1),
('bojaociju2',200,3),
('bojaociju3',300,2);

insert into svekar (bojaociju) values
('bojaociju1'),
('bojaociju2'),
('bojaociju3');

insert into sestra_svekar (sestra,svekar) values
(1,3),
(2,1),
(3,2);

# 2. U tablici cura postavite svim zapisima kolonu gustoca na vrijednost 15,77.
select * from cura;
insert into cura (novcica,gustoca,ogrlica)
values (20,20,1),
(30,30,2),
(40,40,3);
update cura set gustoca=15.77;

# 3. U tablici mladic obrišite sve zapise čija je vrijednost kolone kuna veće od 15,78.
delete from mladic where kuna > 15.78;

# 4. Izlistajte kratkamajica iz tablice zena uz uvjet da vrijednost kolone hlace sadrže slova ana.
select kratkamajica from zena where hlace like '%ana%';

# 5. Prikažite dukserica iz tablice svekar, asocijalno iz tablice mladic 
# te hlace iz tablice muskarac uz uvjet da su vrijednosti 
# kolone hlace iz tablice zena počinju slovom "a" te da su 
# vrijednosti kolone haljina iz tablice sestra sadrže niz znakova ba.
# Podatke posložite po hlace iz tablice muskarac silazno.

select a.dukserica,f.asocijalno,e.hlace
from svekar a
inner join sestra_svekar b on b.svekar=a.sifra
inner join sestra c on c.sifra=b.sestra
inner join zena d on d.sestra=c.sifra
inner join muskarac e on e.zena=d.sifra
inner join mladic f on f.muskarac=e.sifra
where d.hlace like 'a%' and c.haljina like '%ba%';

# 6. Prikažite kolone haljina i maraka iz tablice sestra 
# čiji se primarni ključ ne nalaze u tablici sestra_svekar.
select a.haljina, a.maraka
from sestra a
left join sestra_svekar b on b.sestra=a.sifra
where b.sifra is null;