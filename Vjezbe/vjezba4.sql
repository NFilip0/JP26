select naziv,smjer,predavac from grupa;

select a.naziv as grupa, b.naziv as smjer, d.ime, d.prezime
from grupa a inner join smjer b
on a.smjer=b.sifra
left join predavac c
on a.predavac=c.sifra
left join osoba d
on c.osoba=d.sifra;

# izlistajte sva imena i prezimena
# polaznika na grupi jp26

select d.ime,d.prezime
from grupa a inner join clan b
on a.sifra=b.grupa
inner join polaznik c
on b.polaznik=c.sifra
inner join osoba d 
on c.osoba=d.sifra
where a.naziv='JP26';

# sebe upisite u grupu pp25
select * from grupa;
select * from polaznik;
select * from osoba;
select * from clan;
insert into clan(grupa,polaznik)
values (2,7);

select d.ime,d.prezime
from grupa a inner join clan b
on a.sifra=b.grupa
inner join polaznik c
on b.polaznik=c.sifra
inner join osoba d 
on c.osoba=d.sifra
where a.naziv='PP25';

# obrišite sebe iz grupe pp25
delete from clan where sifra=13;

# postavite sebi broj ugovora 12/2022
update polaznik set brojugovora='12/2022' where sifra=7;