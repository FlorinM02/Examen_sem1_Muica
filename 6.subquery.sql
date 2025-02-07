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
SELECT nume FROM parc 
WHERE fid IN (SELECT fid_parc FROM unitati_acvatice);
SELECT * FROM unitati_acvatice 
WHERE id IN (SELECT id_unitati_acvatice FROM cuib);
SELECT * FROM specie 
WHERE id_tip_ua IN (SELECT id FROM tip_ua WHERE id_unitati_acvatice IN 
    (SELECT id FROM unitati_acvatice WHERE suprafata > 50));
	SELECT * FROM crescatorii 
WHERE id_specie IN (SELECT id FROM specie WHERE id_tip_ua IN 
    (SELECT id FROM tip_ua WHERE tip = 'Rau'));
	SELECT id_unitati_acvatice, (SELECT COUNT(*) FROM specie WHERE id_tip_ua = tip_ua.id) 
    AS nr_specii FROM tip_ua;
SELECT * FROM unitati_acvatice u1
WHERE suprafata = (SELECT MAX(suprafata) FROM unitati_acvatice u2 WHERE u1.fid_parc = u2.fid_parc);