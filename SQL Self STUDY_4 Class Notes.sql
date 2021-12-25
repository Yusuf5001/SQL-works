/* Find the genre of each track*/
SELECT tracks.name,  genres.Name
FROM tracks
               INNER JOIN genres
                                         ON tracks.GenreId = genres.GenreId;

SELECT t.name 
				, g.Name
FROM tracks t
               INNER JOIN genres g
                                         ON t.GenreId = g.GenreId;									 

/* Write a query to return the departments of female employees. Show just first name, last name, salary and department of the employees. */
SELECT I.InvoiceId
				, C.FirstName
				, C.LastName
FROM invoices I
              INNER JOIN customers  C
                                         ON I.CustomerId = C.CustomerId;

/* Find the artists' album info*/
 SELECT artists.ArtistId
					, artists.Name
					, albums.AlbumId
					, albums.Title
  FROM artists
				LEFT JOIN albums
										on albums.ArtistId = artists.ArtistId;

/* Retrieve track id, track name, album id info of the album title 'Faceless' .(use:Subquery)*/
SELECT TrackId
				, name
				, AlbumId
FROM tracks
WHERE AlbumId = (SELECT AlbumId
											FROM albums
												WHERE Title = 'Faceless');


/* Retrieve track id, track name, album id info of the album title 'Faceless' .(use:Join)*/
SELECT tracks.TrackId
				, tracks.Name
				, albums.AlbumId
FROM tracks
JOIN albums
			on albums.AlbumId = tracks.AlbumId
WHERE albums.Title = 'Faceless';

/* Retrieve track id, track name, album id info of the album title 'Faceless' and 'Let There Be Rock' .*/
SELECT TrackId , name , AlbumId
FROM tracks
WHERE AlbumId in (SELECT AlbumId
												FROM albums
												WHERE Title  in ('Faceless' , 'Let There Be Rock'));

/* Please add a table to your existing sql_course database: The table name will be vacation_plan of the employees for this  summer.
COLUMN names:
-place_id
-Country
-hotel_name
-employee_id
-vacation_length
-budget
*/
CREATE TABLE vacation_plan
									(place_id INT
									, Country varchar (20)
									, hotel_name varchar (30)
									, employee_id INT
									, vacation_length INT
									, budget REAL
									);
/* */
CREATE TABLE students
	(Student_id INT PRIMARY KEY,
	FirstName TEXT,
	LastName TEXT,
	Grade INT);
	
INSERT INTO students (Student_id, FirstName, LastName, Grade)
VALUES (1, 'julia', 'Saelens', 99),
				(2, 'Hanan', 'Qattan', 89),
				(3, 'Anu', 'Rowe', 87),
				(4, 'Nicholas', 'Perros', 94),
				(5, 'Alexandra', 'Barraclough', 90),
				(6, 'Luis', 'Vasquez', 96);