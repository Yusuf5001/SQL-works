Write a query to find the maximum duration among the tracks. Your query should include TrackId, Name, Milliseconds.

SELECT TrackId, name, Milliseconds FROM tracks ORDER by Milliseconds DESC LIMIT 1

SELECT TrackId, name, Milliseconds FROM tracks ORDER by Milliseconds LIMIT 1

/*Write a query to find the tracks whose bytes are higher than the average of the bytes of all tracks. 
Your query should include TrackId, Name, Bytes, general average and should be ordered by Bytes from highest to 
lowest. General average is the average of all tracks. General average should repeat in every row. 
(Hint: You need to use two subqueries)

SELECT TrackId, name, Bytes from tracks 
WHERE Bytes >(SELECT * FROM tracks where )

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
