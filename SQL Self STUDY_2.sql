SELECT count (Name) FROM artists;
SELECT count (Name) FROM media_types;
SELECT count (BillingCountry) FROM invoices;
SELECT count (InvoiceDate) FROM invoices;
SELECT count (*) FROM invoices;
SELECT count (name) as no_of_names from playlists;
SELECT count (DISTINCT Name) FROM artists;
SELECT count (DISTINCT BillingCountry) FROM invoices;
SELECT count (BillingCity) FROM invoices WHERE BillingCity="Oslo"
SELECT min(total) FROM invoices;
SELECT max(total) FROM invoices;
SELECT sum(total) from invoices;
SELECT avg(total) FROM invoices;
SELECT avg(Milliseconds) FROM tracks;
SELECT avg(total) FROM invoices WHERE BillingCountry="USA";
SELECT sum(total) FROM invoices WHERE BillingCountry="USA";
SELECT FirstName, LastName, City FROM customers WHERE LastName like'Sch%' or LastName like'Go%';
