----SELECT DISTINCT Composer, AlbumId, MediaTypeId FROM tracks;



---SELECT * FROM artists WHERE name = 'Gilberto Gil';


---SELECT TrackId, name, Composer FROM tracks WHERE composer = 'Jimi Hendrix';


---SELECT * FROM invoices WHERE total>10 ORDER BY total DESC;

-----SELECT * FROM invoices WHERE NOT BillingCountry = 'USA' ORDER BY total DESC

SELECT * FROM invoices WHERE BillingCity = 'Berlin' ORDER BY total >2

SELECT * FROM invoices WHERE InvoiceDate >= '2009-01-01' AND InvoiceDate <= '2010-12-31' ORDER BY InvoiceDate;