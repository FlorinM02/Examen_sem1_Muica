create table if not exists parc
(
	fid serial primary key,
	nume varchar(100) unique not null,
	suprafata decimal null
);

create table if not exists unitati_acvatice
(
	id serial primary key,
	nume varchar(50) unique not null,
	suprafata decimal null,
	fid_parc integer not null references parc(fid)
);

create table if not exists tip_ua
(
	id serial primary key,
	tip varchar(30) not null,
	suprafata decimal null,
	id_unitati_acvatice integer not null references unitati_acvatice(id)
);

create table if not exists cuib
(
	id serial primary key,
	id_unitati_acvatice integer not null references unitati_acvatice(id)
);

create table if not exists locuri_acces
(
	id serial primary key,
	id_unitati_acvatice integer not null references unitati_acvatice(id)
);

create table if not exists specie
(
	id serial primary key,
	nume varchar(30) not null,
	tip_specie varchar(20) not null,
	id_tip_ua integer not null references tip_ua(id)
);

create table if not exists tip_specie
(
	id serial primary key,
	tip varchar(30) not null,
	id_specie integer not null references specie(id)
);

create table if not exists crescatorii
(
	id serial primary key,
	suprafata decimal null,
	tip_productie varchar(20) not null,
	id_specie integer not null references specie(id)
);

create table if not exists date_crescatorii
(
	id serial primary key,
	nume varchar(50) not null,
	suprafata decimal null,
	id_crescatorii integer not null references crescatorii(id)
);

insert into parc (fid, nume, suprafata) values ('1', 'Parcul National Domogled Valea Cernei', '61200');
insert into unitati_acvatice (id, nume, suprafata, fid_parc) values ('1', 'Lacul Prisaca', '78', '1');
insert into unitati_acvatice (id, nume, suprafata, fid_parc) values ('2', 'Lacul Iovan', '290', '1');
insert into unitati_acvatice (id, nume, suprafata, fid_parc) values ('3', 'Raul Cerna Sector 1', '2', '1');
insert into unitati_acvatice (id, nume, suprafata, fid_parc) values ('4', 'Raul Cerna Sector 2', '3', '1');
insert into unitati_acvatice (id, nume, suprafata, fid_parc) values ('5', 'Raul Cerna Sector 3', '6', '1');
insert into unitati_acvatice (id, nume, suprafata, fid_parc) values ('6', 'Raul Cerna Sector 4', '2', '1');
insert into unitati_acvatice (id, nume, suprafata, fid_parc) values ('7', 'Raul Cerna Sector 5', '8', '1');
insert into unitati_acvatice (id, nume, suprafata, fid_parc) values ('8', 'Raul Cerna Sector 6', '5', '1');
insert into unitati_acvatice (id, nume, suprafata, fid_parc) values ('9', 'Raul Cerna Sector 7', '3', '1');
insert into unitati_acvatice (id, nume, suprafata, fid_parc) values ('10', 'Raul Cerna Sector 8', '7', '1');
insert into tip_ua (id,tip, id_unitati_acvatice) values ('1', 'Lac','1');
insert into tip_ua (id,tip, id_unitati_acvatice) values ('2', 'Lac','2');
insert into tip_ua (id,tip, id_unitati_acvatice) values ('3', 'Rau','3');
insert into tip_ua (id,tip, id_unitati_acvatice) values ('4', 'Rau','4');
insert into tip_ua (id,tip, id_unitati_acvatice) values ('5', 'Rau','5');
insert into tip_ua (id,tip, id_unitati_acvatice) values ('6', 'Rau','6');
insert into tip_ua (id,tip, id_unitati_acvatice) values ('7', 'Rau','7');
insert into tip_ua (id,tip, id_unitati_acvatice) values ('8', 'Rau','8');
insert into tip_ua (id,tip, id_unitati_acvatice) values ('9', 'Rau','9');
insert into tip_ua (id,tip, id_unitati_acvatice) values ('10', 'Rau','10');
insert into cuib (id, id_unitati_acvatice) values ('1','1');
insert into cuib (id, id_unitati_acvatice) values ('2','2');
insert into cuib (id, id_unitati_acvatice) values ('3','3');
insert into cuib (id, id_unitati_acvatice) values ('4','4');
insert into cuib (id, id_unitati_acvatice) values ('5','5');
insert into cuib (id, id_unitati_acvatice) values ('6','6');
insert into cuib (id, id_unitati_acvatice) values ('7','7');
insert into cuib (id, id_unitati_acvatice) values ('8','8');
insert into cuib (id, id_unitati_acvatice) values ('9','9');
insert into cuib (id, id_unitati_acvatice) values ('10','10');
insert into locuri_acces (id,id_unitati_acvatice ) values ('1','1');
insert into locuri_acces (id,id_unitati_acvatice ) values ('2','2');
insert into locuri_acces (id,id_unitati_acvatice ) values ('3','3');
insert into locuri_acces (id,id_unitati_acvatice ) values ('4','4');
insert into locuri_acces (id,id_unitati_acvatice ) values ('5','5');
insert into locuri_acces (id,id_unitati_acvatice ) values ('6','6');
insert into locuri_acces (id,id_unitati_acvatice ) values ('7','7');
insert into locuri_acces (id,id_unitati_acvatice ) values ('8','8');
insert into locuri_acces (id,id_unitati_acvatice ) values ('9','9');
insert into locuri_acces (id,id_unitati_acvatice ) values ('10','10');
insert into specie (id, nume, tip_specie, id_tip_ua) values ('1', 'pastrav', 'rapitor', '3');
insert into specie (id, nume, tip_specie, id_tip_ua) values ('2', 'clean', 'rapitor', '3');
insert into specie (id, nume, tip_specie, id_tip_ua) values ('3', 'lipan', 'rapitor', '3');
insert into specie (id, nume, tip_specie, id_tip_ua) values ('4', 'lostrita', 'rapitor', '7');
insert into specie (id, nume, tip_specie, id_tip_ua) values ('5', 'salau', 'rapitor', '1');
insert into specie (id, nume, tip_specie, id_tip_ua) values ('6', 'salau', 'rapitor', '2');
insert into specie (id, nume, tip_specie, id_tip_ua) values ('7', 'crap', 'omnivor', '1');
insert into specie (id, nume, tip_specie, id_tip_ua) values ('8', 'crap', 'omnivor', '2');
insert into specie (id, nume, tip_specie, id_tip_ua) values ('9', 'caras', 'omnivor', '1');
insert into specie (id, nume, tip_specie, id_tip_ua) values ('10', 'caras', 'omnivor', '2');
insert into tip_specie(id, tip, id_specie) values ('1', 'rapitor', '1');
insert into tip_specie(id, tip, id_specie) values ('2', 'rapitor', '2');
insert into tip_specie(id, tip, id_specie) values ('3', 'rapitor', '3');
insert into tip_specie(id, tip, id_specie) values ('4', 'rapitor', '4');
insert into tip_specie(id, tip, id_specie) values ('5', 'rapitor', '5');
insert into tip_specie(id, tip, id_specie) values ('6', 'rapitor', '6');
insert into tip_specie(id, tip, id_specie) values ('7', 'rapitor', '7');
insert into tip_specie(id, tip, id_specie) values ('8', 'rapitor', '8');
insert into tip_specie(id, tip, id_specie) values ('9', 'rapitor', '9');
insert into tip_specie(id, tip, id_specie) values ('10', 'rapitor', '10');
insert into crescatorii (id, suprafata, tip_productie, id_specie) values ('1', '20', 'sezoniera', '1');
insert into crescatorii (id, suprafata, tip_productie, id_specie) values ('2', '3', 'sezoniera', '1');
insert into crescatorii (id, suprafata, tip_productie, id_specie) values ('3', '5', 'sezoniera', '4');
insert into crescatorii (id, suprafata, tip_productie, id_specie) values ('4', '10', 'sezoniera', '4');
insert into crescatorii (id, suprafata, tip_productie, id_specie) values ('5', '20', 'sezoniera', '3');
insert into crescatorii (id, suprafata, tip_productie, id_specie) values ('6', '5', 'constanta', '7');
insert into crescatorii (id, suprafata, tip_productie, id_specie) values ('7', '12', 'constanta', '7');
insert into crescatorii (id, suprafata, tip_productie, id_specie) values ('8', '25', 'constanta', '9');
insert into crescatorii (id, suprafata, tip_productie, id_specie) values ('9', '25', 'constanta', '9');
insert into crescatorii (id, suprafata, tip_productie, id_specie) values ('10', '10', 'constanta', '9');

select * from unitati_acvatice;
update unitati_acvatice set nume = 'Lacul Prisacaa' where id=1;
update unitati_acvatice set nume = 'Lacul lu Iovanu' where id=2;
update unitati_acvatice set nume = 'Raul Cerna Sector 1a' where id=3;
update unitati_acvatice set nume = 'Raul Cerna Sector 2a' where id=4;
update unitati_acvatice set nume = 'Raul Cerna Sector 3a' where id=5;
update unitati_acvatice set nume = 'Raul Cerna Sector 4a' where id=6;
update unitati_acvatice set nume = 'Raul Cerna Sector 5a' where id=7;
update unitati_acvatice set nume = 'Raul Cerna Sector 6a' where id=8;
update unitati_acvatice set nume = 'Raul Cerna Sector 7a' where id=9;
update unitati_acvatice set nume = 'Raul Cerna Sector 8a' where id=10;
select * from tip_ua;
update tip_ua set suprafata = '20' where id = 1;
update tip_ua set suprafata = '290' where id = 2;
update tip_ua set suprafata = '2' where id = 3;
update tip_ua set suprafata = '5' where id = 1;
update tip_ua set suprafata = '15' where id = 1;
update tip_ua set suprafata = '3' where id = 1;
update tip_ua set suprafata = '7' where id = 1;
update tip_ua set suprafata = '10' where id = 1;
update tip_ua set suprafata = '8' where id = 1;
update tip_ua set suprafata = '11' where id = 1;
select * from specie;
update specie set nume = 'pastraav' where id=1;
update specie set nume = 'cleean' where id=2;
update specie set nume = 'lipaan' where id=3;
update specie set nume = 'loostrita' where id=4;
update specie set nume = 'salau' where id=5;
update specie set tip_specie = 'omnivor' where id = 7;
update specie set tip_specie = 'omnivor' where id = 8;
update specie set tip_specie = 'omnivor' where id = 9;
update specie set tip_specie = 'omnivor' where id = 10;
select * from crescatorii;
update crescatorii set tip_productie = 'constanta' where tip_productie = 'sezoniera';
update crescatorii set tip_productie = 'sezoniera' where tip_productie = 'constanta';
update crescatorii set tip_productie = 'constanta' where id= 1;
update crescatorii set tip_productie = 'constanta' where id= 2;
update crescatorii set tip_productie = 'constanta' where id= 3;
update crescatorii set tip_productie = 'constanta' where id= 4;
update crescatorii set tip_productie = 'constanta' where id= 5;
select * from unitati_acvatice;
select * from unitati_acvatice where not (suprafata between 1 and 10 or suprafata> 11) and (nume like '%Lacul Prisacaa%');
select * from unitati_acvatice where (suprafata between 1 and 10 or suprafata> 11) and not (nume like '%Lacul Prisacaa%');
select count (*) as nr_sectoare from unitati_acvatice;
select * from specie;
select count (*) as tipuri_pesti from specie;
select sum (suprafata) as suprafata_totala from unitati_acvatice;
select min(suprafata) from crescatorii;
select max(suprafata) from crescatorii;
select avg(suprafata) from crescatorii;
select * from tip_ua;

select * from tip_ua where tip in (select tip from tip_ua where tip like 'R%');
select * from tip_ua where tip in (select tip from tip_ua where tip like '%ac');
select * from tip_ua where suprafata>10;

SELECT * FROM unitati_acvatice 
WHERE fid_parc IN (SELECT fid FROM parc WHERE suprafata > 50000);

SELECT * FROM specie 
WHERE id_tip_ua IN (SELECT id FROM tip_ua WHERE tip = 'Lac');

SELECT * FROM crescatorii 
WHERE suprafata > (SELECT AVG(suprafata) FROM crescatorii);

SELECT COUNT(*) AS total_unitati FROM unitati_acvatice;

SELECT SUM(suprafata) AS total_surface FROM unitati_acvatice;

SELECT COUNT(DISTINCT nume) AS distinct_species FROM specie;

SELECT MIN(suprafata) AS min_surface, MAX(suprafata) AS max_surface FROM crescatorii;

SELECT tip, AVG(suprafata) AS avg_surface FROM tip_ua GROUP BY tip;

SELECT * FROM unitati_acvatice 
WHERE fid_parc = 1 AND suprafata > 50;

SELECT * FROM specie 
WHERE nume LIKE '%pastr%';

SELECT * FROM crescatorii 
WHERE suprafata BETWEEN 5 AND 20;

SELECT * FROM specie 
WHERE tip_specie = 'omnivor' AND id_tip_ua IN (SELECT id FROM tip_ua WHERE tip = 'Lac');
SELECT * FROM unitati_acvatice 
WHERE suprafata > 10 AND suprafata < 100;
SELECT * FROM parc 
WHERE nume = 'Parcul National Domogled Valea Cernei' OR suprafata > 50000;
SELECT * FROM specie 
WHERE tip_specie = 'rapitor' OR id_tip_ua = 3;
SELECT * FROM unitati_acvatice 
WHERE nume LIKE '%Raul%';
SELECT * FROM specie 
WHERE nume LIKE 'C%';
SELECT * FROM parc 
WHERE nume LIKE '%Cernei';
SELECT * FROM unitati_acvatice 
WHERE suprafata BETWEEN 5 AND 50;
SELECT * FROM crescatorii 
WHERE suprafata BETWEEN 10 AND 30;
SELECT * FROM parc 
WHERE suprafata BETWEEN 10000 AND 100000;
SELECT COUNT(*) AS total_parcuri FROM parc;
SELECT SUM(suprafata) AS total_surface FROM parc;
SELECT AVG(suprafata) AS avg_surface FROM unitati_acvatice;
SELECT MIN(suprafata) AS smallest, MAX(suprafata) AS largest FROM unitati_acvatice;
SELECT id_specie, COUNT(*) AS nr_crescatorii FROM crescatorii GROUP BY id_specie;
SELECT id_unitati_acvatice, COUNT(*) AS total_nests FROM cuib GROUP BY id_unitati_acvatice;
SELECT id_unitati_acvatice, COUNT(*) AS total_access_points FROM locuri_acces GROUP BY id_unitati_acvatice;
SELECT tip_productie, AVG(suprafata) AS avg_surface FROM crescatorii GROUP BY tip_productie;


