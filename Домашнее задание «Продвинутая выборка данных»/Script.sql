create table if not exists Artists (
id_artist serial primary key,
artist_name VARCHAR(60)
);

create table if not exists Albums (
id_album serial primary key,
album_name VARCHAR(60),
album_release_year date
);

create table if not exists Tracks (
id_track serial primary key,
id_album integer references Albums(id_album),
track_name VARCHAR(60),
track_duration time,
track_release_year date
);

create table if not exists Collections (
id_collection serial primary key,
collection_title VARCHAR(60),
collection_date date
);

create table if not exists Genres (
id_genre serial primary key,
--ID_исполнителя integer references исполнитель(id),
genre_name VARCHAR(60)
);

create table if not exists Artists_Genres (
id_genre integer references Genres(id_genre),
id_artist integer references Artists(id_artist)
);

create table if not exists Artists_Album (
id_album integer references Albums(id_album),
id_artist integer references Artists(id_artist)
);

create table if not exists Tracks_Collections (
id_track integer references Tracks(id_track),
id_collection integer references Collections(id_collection)
);

insert into Artists (artist_name)
values
('Madonna'),
('Michael Jackson'),
('Freddie Mercury'),
('Frank Sinatra'),
('Elvis Presley'),
('Stevie Wonder'),
('Phil Collinsт'),
('John Lennon'),
('Sting'),
('Lady Gaga'),
('Adele'),
('Nelly Furtado'),
('Whitney Houston'),
('Celine Dion'),
('Bruno Mars');

insert into Genres (genre_name)
values
('pop music'),
('hip-hop'),
('soul'),
('rock'),
('jazz');

insert into Albums (album_name, album_release_year)
values
('Album №1','20200102'),
('Album №2','20200102'),
('Album №3','20190102'),
('Album №4','20190102'),
('Album №5','20190102'),
('Album №6','20180102'),
('Album №7','20180102'),
('Album №8','20170102'),
('Album №9','20200102'),
('Album №10','20200102'),
('Album №11','20190102'),
('Album №12','20190102'),
('Album №13','20190102'),
('Album №14','20180102'),
('Album №15','20180102'),
('Album №16','20170102'),
('Album №17','20200102'),
('Album №18','20200102'),
('Album №19','20190102'),
('Album №20','20190102'),
('Album №21','20190102'),
('Album №22','20180102'),
('Album №23','20180102'),
('Album №24','20170102'),
('Album №25','20200102'),
('Album №26','20200102'),
('Album №27','20190102'),
('Album №28','20190102'),
('Album №29','20190102'),
('Album №30','20180102');


insert into Tracks (id_album, track_name, track_duration, track_release_year)
values
('1','song 2','00:03:40','20170102'),
('2','song 3','00:06:00','20180102'),
('3','song 4','00:03:40','20170102'),
('4','song my my my','00:04:10','20180102'),
('5','song 5','00:03:40','20170102'),
('6','song 6','00:06:00','20180102'),
('7','song 7','00:05:27','20170102'),
('8','song 8','00:03:25','20180102'),
('9','song 9','00:03:40','20190102'),
('10','song 10','00:04:10','20190102'),
('11','song 11','00:06:00','20190102'),
('12','song 12','00:04:10','20190102'),
('13','song 13','00:03:40','20200102'),
('14','song 14','00:03:25','20200102'),
('15','song 15','00:04:10','20170102'),
('16','song 16','00:06:00','20180102'),
('17','song 17','00:03:25','20170102'),
('18','song my my','00:05:27','20180102'),
('19','song 18','00:03:40','20170102'),
('20','song 19','00:04:10','20180102'),
('21','song 20','00:06:00','20170102'),
('22','song 21','00:05:27','20180102'),
('23','song 22','00:03:25','20190102'),
('24','song 23','00:03:40','20190102'),
('25','song 24','00:05:27','20190102'),
('26','song 25','00:04:10','20190102'),
('27','song 26','00:06:00','20200102'),
('28','song 27','00:03:40','20200102'),
('29','song 28','00:05:27','20200102'),
('30','song 29','00:06:00','20200102'),
('2','song 30','00:03:40','20170102'),
('2','song 31','00:06:00','20180102'),
('3','song 32','00:03:40','20170102'),
('4','song my','00:04:10','20180102'),
('4','song 33','00:03:40','20170102'),
('6','song 34','00:06:00','20180102'),
('7','song 35','00:05:27','20170102'),
('8','song 36','00:03:25','20180102'),
('9','song 37','00:03:40','20190102'),
('9','song 38','00:04:10','20190102'),
('11','song 39','00:06:00','20190102'),
('12','song 40','00:04:10','20190102'),
('13','song 41','00:03:40','20200102'),
('14','song 42','00:03:25','20200102'),
('15','song 43','00:04:10','20170102'),
('16','song 44','00:06:00','20180102'),
('17','song 45','00:03:25','20170102'),
('18','song my! my!','00:05:27','20180102'),
('19','song 46','00:03:40','20170102'),
('20','song 47','00:04:10','20180102'),
('21','song 48','00:06:00','20170102'),
('22','song 49','00:05:27','20180102'),
('23','song 50','00:03:25','20190102'),
('24','song 51','00:03:40','20190102'),
('25','song 52','00:05:27','20190102'),
('26','song 53','00:04:10','20190102'),
('27','song 54','00:06:00','20200102'),
('28','song 55','00:03:40','20200102'),
('29','song 56','00:05:27','20200102'),
('30','song 57','00:06:00','20200102');

insert into Collections (collection_date, collection_title)
values
('20180102','Collections №1'),
('20180102','Collections №2'),
('20180102','Collections №3'),
('20190102','Collections №4'),
('20190102','Collections №5'),
('20200102','Collections №6'),
('20200102','Collections №7'),
('20170102','Collections №8'),
('20200102','Collections №9'),
('20170102','Collections №10');

insert into  Artists_Genres (id_genre, id_artist)
values
(2,1),
(1,2),
(1,3),
(2,4),
(2,5),
(2,6),
(5,7),
(3,8),
(3,9),
(3,10),
(3,11),
(4,12),
(5,13),
(5,14),
(5,15);

insert into Artists_Album(id_album,id_artist)
values
(1,1),
(1,2),
(2,3),
(2,4),
(3,5),
(3,6),
(4,7),
(4,8),
(5,9),
(5,10),
(6,11),
(6,12),
(7,13),
(7,14),
(8,15),
(8,1),
(9,15),
(9,2),
(10,3),
(10,4),
(11,14),
(11,5),
(12,6),
(12,7),
(13,8),
(13,9),
(14,10),
(14,11),
(15,12),
(15,13);

insert into Tracks_Collections (id_collection,id_track)
values
(1,2),
(1,2),
(1,2),
(2,4),
(1,5),
(1,6),
(2,7),
(2,8),
(2,9),
(2,10),
(2,11),
(2,12),
(3,13),
(3,14),
(3,15),
(3,16),
(3,17),
(3,18),
(4,19),
(4,20),
(4,21),
(4,22),
(4,23),
(4,24),
(5,25),
(5,26),
(5,27),
(5,28),
(5,29),
(5,30),
(6,31),
(6,32),
(6,33),
(6,34),
(6,35),
(6,36),
(7,37),
(7,38),
(7,39),
(7,40),
(7,41),
(7,42),
(8,43),
(8,44),
(8,45),
(8,46),
(8,47),
(8,48),
(9,49),
(9,50),
(9,51),
(9,52),
(9,53),
(9,54),
(10,55),
(10,56),
(10,57),
(10,58),
(10,59),
(10,60);

select genre_name, count(id_artist) from genres g
join artists_genres ag on g.id_genre = ag.id_genre
group by genre_name

select count(album_name) from tracks t 
join albums a on a.id_album = t.id_album 
where album_release_year >= '20190101' and album_release_year <= '20201231'

select album_name, avg(track_duration) from tracks t 
join albums a on t.id_album = a.id_album
group by album_name 

select artist_name from artists a 
join artists_album aa  on a.id_artist = aa.id_artis 
join albums a2 on a2.id_album = aa.id_artis
where album_release_year not between '20200101' and '20201231'
group by artist_name

select collection_title from collections c 
join tracks_collections tc on c.id_collection = tc.id_collection 
join tracks t on tc.id_track = t.id_track 
join albums a on t.id_album = a.id_album 
join artists_album aa on a.id_album = aa.id_album 
join artists a2 on aa.id_artis = a2.id_artist 
where artist_name = 'Frank Sinatra'
group by collection_title

select album_name, count(genre_name) from Albums a
join artists_album ab on a.id_album = ab.id_album
join artists ar on ab.id_artist = ar.id_artist
join artists_genres ag on ar.id_artist = ag.id_artist
join genres g on ag.id_genre = g.id_genre
group by album_name
having count(genre_name) > 1

select track_name from tracks t
left join tracks_collections tc on t.id_track = tc.id_track
where tc.id_collection is null 

select artist_name, track_duration from Artists a
join artists_album aa on a.id_artist = aa.id_artist
join albums al on aa.id_album = al.id_album
join tracks tr on tr.id_album = al.id_album
where track_duration = (select min(track_duration) from tracks)

select album_name, count(track_name) from albums al
join tracks tr on al.id_album = tr.id_album
group by album_name
order by count(track_name)
limit 3

