SELECT name, composer FROM tracks;
SELECT * FROM albums;
SELECT DISTINCT composer FROM tracks;
SELECT DISTINCT albumID, MediaTypeId FROM tracks;
SELECT name, Composer FROM tracks WHERE Composer = 'Jimi Hendrix';
SELECT * FROM invoices 
WHERE total > 10 
ORDER BY total DESC;
SELECT * FROM invoices 
WHERE NOT BillingCountry = 'USA' 
ORDER BY total;

SELECT * FROM invoices 
WHERE BillingCountry <> 'USA' 
ORDER BY total;

SELECT * FROM invoices
WHERE InvoiceDate BETWEEN '2009-01-01' AND '2011-12-31'
ORDER BY InvoiceDate DESC 
LIMIT 1;

SELECT FirstName, LastName, Country
FROM Customers
WHERE Country IN ('Belgium', 'Norway', 'Canada', 'USA'); 

--AŞAĞIDAKİ GİBİ OR'LARLA KULLANIM DA AYNI ŞEYİ İFADE EDİYOR
SELECT FirstName, LastName, Country
FROM Customers
WHERE Country = 'Belgium' OR Country = 'Norway' OR Country = 'Canada' OR Country = 'USA';
