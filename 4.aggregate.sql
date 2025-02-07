SELECT COUNT(*) AS total_parcuri FROM parc;
SELECT SUM(suprafata) AS total_surface FROM parc;
SELECT AVG(suprafata) AS avg_surface FROM unitati_acvatice;
SELECT MIN(suprafata) AS smallest, MAX(suprafata) AS largest FROM unitati_acvatice;
SELECT id_specie, COUNT(*) AS nr_crescatorii FROM crescatorii GROUP BY id_specie;
SELECT id_unitati_acvatice, COUNT(*) AS total_nests FROM cuib GROUP BY id_unitati_acvatice;
SELECT id_unitati_acvatice, COUNT(*) AS total_access_points FROM locuri_acces GROUP BY id_unitati_acvatice;
SELECT tip_productie, AVG(suprafata) AS avg_surface FROM crescatorii GROUP BY tip_productie;

