select * from products
order by productLine desc, productName ;

select * from products 
order by 3 desc, 2;

# agregirane funkcije
select sum(buyPrice),
min(buyPrice),
max(buyPrice),
avg(buyPrice),
count(buyPrice)
from products
where productLine = 'Vintage cars';

select productLine, sum(buyPrice),
min(buyPrice),
max(buyPrice),
avg(buyPrice),
count(buyPrice)
from products
where productLine like '%i%'
group by productLine
having avg(buyPrice)>47
order by 5 desc
limit 1;

# prikaz ukupnog broja redova 
select count(*) from orderdetails;

select * from orderdetails
limit 5,2;

select distinct orderNumber from orderdetails
limit 1,7;

# otvorite ured u Osijeku
select * from offices;
INSERT INTO classicmodels.offices
(officeCode, city, phone, addressLine1, addressLine2, state, country, postalCode, territory)
VALUES('8', 'Osijek', '0919301912', 'Retfala', NULL, NULL, 'Croatia', '31000', 'teritorij1');

#postavite cijenu na 10 svim proizvodima 
# koji u svom nazivu nemaju slovo i

select * from products;

update products 
set buyPrice = 10 
where productName 
not like '%i%';

# izvucite ukupan broj proizvoda koji imaju cijenu 10
select count(*) from products 
where buyPrice = 10;
# drugi nacin
select sum(1) from products
where buyPrice = 10;

# unesite sebe kao glavnog šefa
select * from employees
order by 1;
select * from offices;
INSERT INTO classicmodels.employees
(employeeNumber, lastName, firstName, extension, email, officeCode, reportsTo, jobTitle)
VALUES(1001, 'Nad', 'Filip', 'x5700', 'email1@gmail.com', '2', null, 'Glavni sef');
delete from employees where employeeNumber = 1001;

select * from employees;

# obrišite sve proizvode u kategoriji planes
delete from orderdetails where
productCode in (
select productCode from products where
productLine='planes'
);
delete from products where productLine ='planes';

# izlistajte sve jedinstvene nazive proizvoda i
# njihove cijene koje su kupili kupci iz Las Vegasa

select a.productName, a.buyPrice
from products a inner join orderdetails b 
on a.productCode =b.productCode
inner join orders c on  b.orderNumber = c.orderNumber
inner join customers d on c.customerNumber =d.customerNumber
set a.buyPrice =a.buyPrice * 1.1
where d.city = 'Las Vegas';

update  products a inner join orderdetails b 
on a.productCode =b.productCode
inner join orders c on  b.orderNumber = c.orderNumber
inner join customers d on c.customerNumber =d.customerNumber
set a.buyPrice =a.buyPrice * 1.1
where d.city = 'Las Vegas';

# obrisati sve proizvode koje su kupili
# kupci koji dolaze iz Las Vegasa
create table zaobrisati
select distinct a.productCode
from products a inner join orderdetails b 
on a.productCode =b.productCode
inner join orders c on  b.orderNumber = c.orderNumber
inner join customers d on c.customerNumber =d.customerNumber
where d.city = 'Las Vegas';

select * from zaobrisati;

delete from orderdetails
where productCode in (
select productCode from zaobrisati
);
delete from products
where productCode in (
select productCode from zaobrisati
);

drop table zaobrisati;

# izlistajte sve zaposlenike kojima je šefica Diane Murphy
select a.firstName,a.lastName
from employees a
inner join employees b on b.employeeNumber = a.reportsTo
where b.firstName = 'Diane' and b.lastName='Murphy';

# ispišite imena i prezimena djelatnika uread u Tokyo

select b.firstName, b.lastName
from offices a
inner join employees b on a.officeCode = b.officeCode 
where a.city = 'Tokyo';

# nacin bez kratica
select employees.firstName, employees.lastName
from offices
inner join employees on offices.officeCode = employees.officeCode 
where offices.city = 'Tokyo';

# valjana sintaksa ali lošija
select b.firstName, b.lastName
from offices a, employees b
where a.officeCode = b.officeCode and 
a.city='Tokyo';

# tablici products dodati kolonu
# aktivan logički tip podatka
select * from products;
alter table products add aktivan boolean;

select productname, null from products
union
select firstName, lastName from employees; 