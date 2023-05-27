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

