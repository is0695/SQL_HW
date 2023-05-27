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

