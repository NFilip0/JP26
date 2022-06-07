# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\filip\Documents\jp26\kolokvij_vjezbe\kolokvij_vjezba_7.sql

drop database if exists kolokvij_vjezba_7;
create database kolokvij_vjezba_7;

use kolokvij_vjezba_7;

# 0. Kreirajte tablice i veze između tablica.

create table mladic(
    sifra int not null primary key auto_increment,
    prstena int,
    lipa decimal(14,5) not null,
    narukvica int not null,
    drugiputa datetime not null
);

create table zarucnik_mladic(
    sifra int not null primary key auto_increment,
    zarucnik int not null,
    mladic int not null
);

create table zarucnik(
    sifra int not null primary key auto_increment,
    vesta varchar(34),
    asocijalno bit not null,
    modelnaocala varchar(43),
    narukvica int not null,
    novcica decimal(15,5) not null
);

create table ostavljen(
    sifra int not null primary key auto_increment,
    lipa decimal(14,6),
    introventno bit not null,
    kratkamajica varchar(38) not null,
    prstena int not null,
    zarucnik int 
); 

create table prijateljica(
    sifra int not null primary key auto_increment,
    haljina varchar(45),
    gustoca decimal(15,10) not null,
    ogrlica int,
    novcica decimal(12,5), 
    ostavljen int
);

create table sestra(
    sifra int not null primary key auto_increment,
    bojakose varchar(34) not null,
    hlace varchar(36) not null,
    lipa decimal(15,6),
    stilfrizura varchar(40) not null,
    maraka decimal(12,8) not null,
    prijateljica int
);

create table cura(
    sifra int not null primary key auto_increment,
    lipa decimal(12,9) not null,
    introventno bit,
    modelnaocala varchar(40),
    narukvica int,
    treciputa datetime,
    kuna decimal(14,9)
);

create table punica(
    sifra int not null primary key auto_increment,
    majica varchar(40),
    eura decimal(12,6) not null,
    prstena int,
    cura int not null
);

alter table zarucnik_mladic add foreign key (mladic) references mladic(sifra);
alter table zarucnik_mladic add foreign key (zarucnik) references zarucnik(sifra);

alter table ostavljen add foreign key (zarucnik) references zarucnik(sifra);

alter table prijateljica add foreign key (ostavljen) references ostavljen(sifra);

alter table sestra add foreign key (prijateljica) references prijateljica(sifra);

alter table punica add foreign key (cura) references cura(sifra);

# 1. U tablice prijateljica, ostavljen i zarucnik_mladic unesite po 3 retka.

insert into prijateljica(sifra,haljina,gustoca,ogrlica,novcica,ostavljen)
values(null,null,20.10,null,null,null),
      (null,null,21.20,null,null,null),
      (null,null,22.30,null,null,null);
      
insert into ostavljen(sifra,lipa,introventno,kratkamajica,prstena,zarucnik)
values(null,null,1,'kratkamajica1',2,null),
      (null,null,0,'kratkamajica2',3,null),
      (null,null,1,'kratkamajica3',4,null);

insert into zarucnik(sifra,vesta,asocijalno,modelnaocala,narukvica,novcica)
values(null,null,1,null,1,10.4),
      (null,null,0,null,2,10.5),
      (null,null,1,null,3,10.6);
      
insert into mladic(sifra,prstena,lipa,narukvica,drugiputa)
values(null,null,10.4,1,'2022-06-07'),
      (null,null,10.5,2,'2022-06-08'),
      (null,null,10.6,3,'2022-06-09');
      
insert into zarucnik_mladic(sifra,zarucnik,mladic)
values(null,2,2),
      (null,3,3),
      (null,1,1);

# 2. U tablici punica postavite svim zapisima kolonu eura na vrijednost 15,77.

insert into cura(sifra,lipa,introventno,modelnaocala,narukvica,treciputa,kuna)
values(null,30.20,null,null,null,null,null),
      (null,20.30,null,null,null,null,null),
      (null,10.15,null,null,null,null,null);

      insert into punica(sifra,majica,eura,prstena,cura)
values(null,null,15.25,null,1),
      (null,null,16.25,null,2),
      (null,null,17.25,null,3);

update punica set eura = 15.77;

# 3. U tablici sestra obrišite sve zapise čija je vrijednost kolone hlace manje od AB.

insert into sestra(sifra,bojakose,hlace,lipa,stilfrizura,maraka,prijateljica)
values(null,'bojakose1','ABB',null,'stilfrizura1',20.10,null),
      (null,'bojakose2','ABA',null,'stilfrizura2',21.15,null),
      (null,'bojakose3','AB',null,'stilfrizura3',22.20,null);
     
delete from sestra where hlace < 'AB';     

# 4. Izlistajte kratkamajica iz tablice ostavljen uz uvjet da vrijednost kolone introvertno nepoznate.

select kratkamajica from ostavljen where introventno is null;

# 5. Prikažite narukvica iz tablice mladic, stilfrizura iz tablice sestra te 
# gustoca iz tablice prijateljica uz uvjet da su vrijednosti kolone 
# introvertno iz tablice ostavljen poznate te da su vrijednosti kolone 
# asocijalno iz tablice zarucnik poznate. Podatke posložite po gustoca iz 
# tablice prijateljica silazno.

select a.narukvica ,f.stilfrizura ,e.gustoca 
from mladic a
inner join zarucnik_mladic b on b.mladic = a.sifra 
inner join zarucnik c on b.zarucnik = c.sifra 
inner join ostavljen d on d.zarucnik = c.sifra 
inner join prijateljica e on e.ostavljen = d.sifra 
inner join sestra f on f.prijateljica = e.sifra
where d.introventno is not null and c.asocijalno is not null 
order by e.gustoca desc ;