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
insert into specie (id, nume, tip_specie, id_tip_ua) values ('7', 'crap', 'rapitor', '1');
insert into specie (id, nume, tip_specie, id_tip_ua) values ('8', 'crap', 'rapitor', '2');
insert into specie (id, nume, tip_specie, id_tip_ua) values ('9', 'caras', 'rapitor', '1');
insert into specie (id, nume, tip_specie, id_tip_ua) values ('10', 'caras', 'rapitor', '2');





