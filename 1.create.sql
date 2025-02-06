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