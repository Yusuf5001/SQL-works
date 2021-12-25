SELECT * FROM markalar

SELECT * FROM siparisler

SELECT markalar.marka_id, markalar.marka_adi, siparisler.siparis_adedi, siparisler.siparis_tarihi 
from siparisler LEFT JOIN markalar
on markalar.marka_id = siparisler.marka_id

SELECT markalar.marka_id, markalar.marka_adi, siparisler.siparis_adedi, siparisler.siparis_tarihi 
from markalar LEFT JOIN siparisler
on markalar.marka_id = siparisler.marka_id

SELECT tracks.Name, genres.Name as Genres
FROM tracks 
JOIN genres
on tracks.GenreId=genres.GenreId

SELECT * FROM tracks
SELECT * FROM genres


SELECT tracks.Name, genres.Name as Genres
FROM genres 
JOIN tracks
on tracks.GenreId=genres.GenreId

SELECT customers.FirstName, customers.LastName, invoices.InvoiceDate, invoices.Total 
from customers 
LEFT JOIN invoices 
on customers.CustomerId=invoices.CustomerId

SELECT customers.FirstName, customers.LastName, invoices.InvoiceDate, invoices.Total 
from customers 
LEFT JOIN invoices 
on customers.CustomerId=invoices.CustomerId

SELECT artists.ArtistId, artists.Name, albums.Title, albums.AlbumId
FROM artists
LEFT JOIN albums
on artists.ArtistId=albums.ArtistId

SELECT TrackId, name, AlbumId
FROM tracks
WHERE AlbumId=(SELECT AlbumId
				FROM albums
				WHERE Title="Faceless");

				
SELECT t.TrackId, t.Name
FROM tracks t
JOIN albums a
on t.AlbumId=a.AlbumId
WHERE a.Title="Faceless"

SELECT tracks.TrackId, tracks.Name, tracks.AlbumId, albums.Title
FROM tracks
JOIN albums
on tracks.AlbumId=albums.AlbumId
WHERE Title in(SELECT Title
FROM albums
WHERE Title="Faceless" or "Let There Be Rock"
)


SELECT TrackId,name,AlbumId
FROM tracks
WHERE AlbumId in(SELECT AlbumId FROM albums
WHERE Title in ("Faceless", "Let There Be Rock")
)

CREATE TABLE personel (
	first_name VARCHAR(20),
	last_name TEXT,
	age INT ,
	hire_date date

);

CREATE TABLE if NOT EXISTS personel (
	first_name VARCHAR(20),
	last_name TEXT,
	age INT ,
	hire_date date

);

CREATE TABLE vacation_plan(
	place_id INT,
	country TEXT,
	hotel_name TEXT,
	employee_id,
	vacation_length INT,
	budget REAL
);

DROP TABLE personel

DROP TABLE if EXISTS personel

INSERT INTO vacation_plan VALUES (48, "TR", "Happy Hotel", 1, 8, 4000);

INSERT INTO vacation_plan VALUES (50, "TR", "Beach Hotel", 2, 7, 3000);

INSERT INTO vacation_plan VALUES (22, "NL", "Comfort Hotel", 3, 4, 2000);


INSERT INTO vacation_plan VALUES (NULL, "TR", "Beach Hotel", 4 ,7, 3000)


INSERT INTO vacation_plan (place_id , country, hotel_name, employee_id) VALUES (35, "UK", "London Hotel", 6); 


CREATE TABLE workers (
	id INT PRIMARY KEY,
	id_number VARCHAR(11) UNIQUE NOT NULL,
	name TEXT DEFAULT "NONAME",
	salary INT NOT NULL
);



