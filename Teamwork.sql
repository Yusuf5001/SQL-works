/*SELECT Name,Composer from tracks */
/*SELECT * from tracks*/
/*SELECT Composer FROM tracks */
/*SELECT AlbumId, MediaTypeId FROM tracks */
/*SELECT Name,TrackId FROM tracks WHERE Composer="Jorge Ben" */
/*SELECT * FROM invoices WHERE total>25 */
/*SELECT * FROM invoices WHERE total<15 LIMIT 5*/
/*SELECT * FROM invoices WHERE total>10 ORDER by total DESC LIMIT 2*/
/*SELECT * FROM invoices WHERE not BillingCountry="Canada" ORDER by total LIMIT 10*/
/*SELECT InvoiceId,CustomerId,Total FROM invoices ORDER by CustomerId ASC, Total DESC*/
/*SELECT * FROM tracks WHERE Name like "B%s"*/
/*SELECT * FROM invoices WHERE InvoiceDate BETWEEN "2008-01-01" and "2012-01-01" ORDER by InvoiceDate DESC LIMIT 1 */
SELECT FirstName, LastName FROM customers WHERE Country in ("Norway", "Belgium")
SELECT Name FROM tracks WHERE Composer like "%Zappa%"
SELECT * from tracks
SELECT * from invoices
SELECT DISTINCT Composer FROM tracks