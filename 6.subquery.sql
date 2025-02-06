select * from unitati_acvatice;
select * from unitati_acvatice where not (suprafata between 1 and 10 or suprafata> 11) and (nume like '%Lacul Prisacaa%');
select * from unitati_acvatice where (suprafata between 1 and 10 or suprafata> 11) and not (nume like '%Lacul Prisacaa%');
