select * from katalog;
select * from autor;
select * from izdavac;
select * from mjesto;

# izlistajte sve knjige s ljubavnom tematikom
select * from katalog where naslov like '%ljub%';

# na postojeće rezultate dovucite naziv mjesta umjesto šifre

select a.naslov, b.naziv
from katalog a inner join mjesto b 
on a.mjesto=b.sifra
where a.naslov like '%ljub%';

# izlistajte sve izdavače koji su
# društvo s ograničenom odgovornošću
select * from izdavac where naziv like '%d.o.o%';

# unesite sebe kao autora

insert into autor(sifra, ime, prezime, datumrodenja)
values (5,'Filip','Nađ', '2000-06-02');
select * from autor;

# objavite knjigu (vašu omiljenu), izdavač i mjesto po izboru
select * from katalog;
insert into katalog	(sifra, autor, naslov, izdavac, mjesto)	
values	(7, 5, 'HowToWriteInSQL', 4, 4);

# postavite sebi kao autoru datum rođenja na danas
select * from autor;

update autor set datumrodenja='2022-05-23' where sifra=5;

# tablici katalog dodajte kolonu cijena
select * from katalog;
alter table katalog add cijena int;
#(dodati da imaju izmedu 100 i 200)

#izvucite sve naziv knjiga koji su izdali
#ne aktivni izdavaci
select * from izdavac;
select * from izdavac where aktivan=0;

#izvucite sve autore koji nemaju
# definiran datum rođenja
select * from autor;
select * from autor where datumrodenja is null;

#izvucite sve autore
#koji nisu izdali niti jednu knjigu
select b.naslov,a.ime,a.prezime
from autor a left join katalog b
on b.autor=a.sifra
where b.naslov is null