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
