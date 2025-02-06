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
	fid_parc integer not null
);