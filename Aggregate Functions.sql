/*===================================================
	AGGREGATE FUNCTION COUNT,SUM,MIN,MAX, AVG)
====================================================*/
	
SELECT count(LastName)FROM employees;
SELECT count(*) FROM invoices;
SELECT count(BillingState) FROM invoices;
SELECT count (DISTINCT InvoiceDate)FROM invoices WHERE InvoiceDate like "2011-__-__";
SELECT name as Song_Name, min(Milliseconds)/1000.0 as Duration FROM tracks;
SELECT sum(total)as Total_Income FROM invoices;

	/* tracks tablosundaki şarkıların ortalama süresinden daha uzun olan 
	şarkıların adlarını listeleyiniz */
SELECT Name, Milliseconds FROM tracks WHERE Milliseconds>(SELECT avg(Milliseconds) FROM tracks);

SELECT Composer, COUNT(name) AS Song_Count
	FROM tracks
	WHERE Composer IS NOT NULL
	GROUP BY Composer;
	

/* customers tablosundaki müşterilerin sayılarını Ülkelerine (Country) göre gruplandırarak 
	ve müşteri sayısına göre AZALAN şekilde sıralayarak listeleyen sorguyu yazınız*/
SELECT country, count(FirstName)as no_of_costumers
FROM customers
GROUP by Country
ORDER by no_of_costumers DESC;

/* customers tablosundaki müşterilerin sayılarını Ülkelerine (Country) ve Şehirlerine (City) 
	göre gruplandırarak listeleyen sorguyu yazınız*/
SELECT City, Country, count(FirstName) no_of_customers
FROM customers
GROUP by City, Country;

SELECT BillingCountry, round(avg(total),2) as avg_bill
FROM invoices
GROUP by BillingCountry;


SELECT BillingCountry, round(avg(total),2) as avg_bill
FROM invoices
WHERE InvoiceDate BETWEEN '2009-01-01' and '2011-12-31 23:59:59'
GROUP by BillingCountry;


/*===================================================
        JOINS
====================================================*/
    
--     Join islemleri farkli tablolardan secilen sutunlar ile yeni bir tablo 
--     olusturmak icin kullanilabilir.
--     
--     JOIN islemleri Iliskisel Veritabanlari icin cok onemli bir ozelliktir. Çunku
--    	Foreign Key'ler ile iliskili olan tablolardan istenilen sutunlari cekmek 
--     icin JOIN islemleri kullanilabilir.

--     Standart SQL'de en çok kullanılan Join islemleri:
--   	1) FULL JOIN:  Tablodaki tum sonuclari gosterir
--     2) INNER JOIN:  Tablolardaki ortak olan sonuc kumesini gosterir
--     3) LEFT JOIN:  Ilk tabloda (Sol) olup digerinde olmayan sonuclari gosterir
--     4) RIGHT JOIN: Sadece Ikinci tabloda olan tum sonuclari gosterir.

--		NOT: SQLite Sadece INNER, LEFT VE CROSS JOIN İşlemlerini desteklemektedir.
 
 /*===================================================*/   

  /* araclar.db adındaki veritabanını kullanarak Markalar ve Siparisler tablolarındaki 
 marka_id'si ayni olan kayıtların marka_id, marka_adi, siparis_adedi ve siparis_tarihi   
 bilgilerini  listeleyen bir sorgu yaziniz.*/
 
	




