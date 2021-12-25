/*How many tracks does each album have? Your solution should include 
Album id and its number of tracks sorted from highest to lowest.*/
SELECT DISTINCT AlbumId, Title FROM albums

/* !!!Find the album title of the tracks. Your solution should include track name and its album title.
SELECT name, AlbumId FROM tracks */ 

/*Find the minimum duration of the track in each album. Your solution should include album id, album title and duration of the track sorted from highest to lowest.*/
SELECT DISTINCT AlbumId, name Milliseconds FROM tracks ORDER by Milliseconds DESC

Find the total duration of each album. Your solution should include album id, album title and its total duration sorted from highest to lowest.

Based on the previous question, find the albums whose total duration is higher than 70 minutes. Your solution should include album title and total duration.