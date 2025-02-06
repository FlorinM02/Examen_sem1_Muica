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
