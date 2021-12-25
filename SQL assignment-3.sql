Write a query to find the maximum duration among the tracks. Your query should include TrackId, Name, Milliseconds.

SELECT TrackId, name, Milliseconds FROM tracks ORDER by Milliseconds DESC LIMIT 1

SELECT TrackId, name, Milliseconds FROM tracks ORDER by Milliseconds LIMIT 1

/*Write a query to find the tracks whose bytes are higher than the average of the bytes of all tracks. 
Your query should include TrackId, Name, Bytes, general average and should be ordered by Bytes from highest to 
lowest. General average is the average of all tracks. General average should repeat in every row. 
(Hint: You need to use two subqueries)*/

/*SELECT TrackId, name, Bytes from tracks 
WHERE Bytes > (SELECT avg(Bytes) FROM tracks)

SELECT avg(Bytes) FROM tracks*/

/*Write a query that returns the customers whose sales representatives are Jane Peacock and Margaret Park. 
Your query should include CustomerID, First Name and Last Name of the customers.

SELECT CustomerId, FirstName, LastName from customers where CustomerId in 
(SELECT FirstName FROM employees WHERE FirstName="Jane")*/

CREATE TABLE courses(
CourseId PRIMARY KEY,
CourseName NOT NULL,
EmployeeId INT,
FOREIGN KEY (EmployeeId)REFERENCES employees(EmployeeId),
CoursePrice INT
)


("SupportRepId") REFERENCES "employees"("EmployeeId") 


/*Find the total duration of each album. Your solution should include 
album id, album title and its total duration sorted from highest to lowest.*/

SELECT al.AlbumId, al.Title, tr.Milliseconds 
FROM albums al
LEFT JOIN tracks tr
on al.AlbumId=tr.AlbumId
WHERE Milliseconds <(SELECT sum(Milliseconds) FROM tracks)


SELECT AlbumId,Name, sum(Milliseconds)
FROM tracks
WHERE AlbumId=(SELECT al.AlbumId, al.Title, tr.Milliseconds 
FROM albums al
LEFT JOIN tracks tr
on al.AlbumId=tr.AlbumId);


