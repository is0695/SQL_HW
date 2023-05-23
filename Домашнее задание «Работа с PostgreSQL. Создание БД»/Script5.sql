create table if not exists исполнитель (
id serial primary key,
исполнитель VARCHAR(60)
);

create table if not exists альбом (
id serial primary key,
название_альбома VARCHAR(60),
год_выпуска integer
);

create table if not exists трек (
id serial primary key,
ID_альбома integer references альбом(id),
название_трека VARCHAR(60),
длительность integer,
год_выпуска integer
);

create table if not exists сборник (
id serial primary key,
название_сборника VARCHAR(60),
год_выпуска integer
);

create table if not exists жанр(
id serial primary key,
--ID_исполнителя integer references исполнитель(id),
название_жанра VARCHAR(60)
);

create table if not exists int_table_1(
ID_жанра integer references жанр(id),
id_исполнителя integer references исполнитель(id)
);

create table if not exists int_table_2(
ID_альбома integer references альбом(id),
id_исполнителя integer references исполнитель(id)
);

create table if not exists int_table_3(
ID_трека integer references трек(id),
id_сборника integer references сборник(id)
);

insert into исполнитель (исполнитель)
values('исполнитель №1'),
('исполнитель №2'),
('исполнитель №3'),
('исполнитель №4'),
('исполнитель №5'),
('исполнитель №6'),
('исполнитель №7'),
('исполнитель №8');

--delete from исполнитель;

insert into жанр (название_жанра)
values('жанр 1'),
('жанр 2'),
('жанр 3'),
('жанр 4'),
('жанр 5');

insert into альбом (название_альбома, год_выпуска)
values('альбом №1','1987'),
('альбом №2','1987'),
('альбом №3','1987'),
('альбом №4','1987'),
('альбом №5','1987'),
('альбом №6','1987'),
('альбом №7','1987'),
('альбом №8','1987');

insert into трек (название_трека, длительность, год_выпуска)
values('трек1','8','1986'),
('трек2','8','1986'),
('трек3','8','1986'),
('трек4','8','1986'),
('трек5','8','1986'),
('трек6','8','1986'),
('трек7','8','1986'),
('трек8','8','1986'),
('трек9','8','1986'),
('трек10','8','1986'),
('трек11','8','1986'),
('трек12','8','1986'),
('трек13','8','1986'),
('трек14','8','1986'),
('трек15','8','1986');

insert into сборник (название_сборника)
values('сборник №1'),
('сборник №2'),
('сборник №3'),
('сборник №4'),
('сборник №5'),
('сборник №6'),
('сборник №7'),
('сборник №8');