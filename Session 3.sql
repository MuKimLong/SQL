

---SQL Server Built-in Functions


--Date formats



CREATE TABLE t_date_time (
	A_time time,
	A_date date,
	A_smalldatetime smalldatetime,
	A_datetime datetime,
	A_datetime2 datetime2,
	A_datetimeoffset datetimeoffset
	)

select * from t_date_time


SELECT GETDATE() AS TIME


INSERT t_date_time 
VALUES (GETDATE(),GETDATE(),GETDATE(),GETDATE(),GETDATE(),GETDATE())


select * from t_date_time


INSERT t_date_time 
VALUES ('12:20:00', '2022-09-17','2022-09-17', '2022-09-17', '2022-09-17', '2022-09-17')


-------------////////////////


---

SELECT DATENAME (DW, GETDATE())

SELECT DATEPART (SECOND, GETDATE())

SELECT DATEPART (MONTH, GETDATE())

SELECT DAY (GETDATE())

SELECT MONTH (GETDATE())

SELECT YEAR (GETDATE())


---

SELECT DATEDIFF(SECOND, '2021-12-21', GETDATE())


--ORDER TABLOSUNDAKÝ ORDER DATE ÝLE SHIP DATE ARASINDAKÝ GÜN FARKINI BULUNUZ.


SELECT	*, DATEDIFF(DAY , order_date, shipped_date) shipped_day
FROM	sale.orders

---dateadd
--eomonth

SELECT DATEADD(DAY, 3 , '2022-09-17')

SELECT DATEADD(DAY, -3 , '2022-09-17')

SELECT DATEADD(YEAR, -3 , '2022-09-17')


SELECT EOMONTH('2023-02-10')



SELECT ISDATE('2022-09-17')

SELECT ISDATE('20220917')

SELECT ISDATE('17-09-2022')


---sipariþ tarihinden iki gün sonra kargolanan sipariþleri döndüren bir sorgu yazýn


SELECT *, DATEDIFF(DAY , order_date, shipped_date) AS day_diff
FROM		sale.orders


SELECT *, DATEDIFF(DAY , order_date, shipped_date) AS day_diff
FROM		sale.orders
WHERE		DATEDIFF(DAY , order_date, shipped_date) > 2


--LEN, CHARINDEX, PATINDEX

SELECT LEN('Clarusway')

SELECT LEN('Clarusway  ')

SELECT LEN('  Clarusway  ')


---

SELECT CHARINDEX('C', 'Clarusway')

SELECT CHARINDEX('a', 'Clarusway')

SELECT CHARINDEX('a', 'Clarusway', 4)


SELECT PATINDEX('sw', 'Clarusway')

SELECT PATINDEX('%sw%', 'Clarusway')

SELECT PATINDEX('%r_sw%', 'Clarusway')


SELECT PATINDEX('___r_sw%', 'Clarusway')


--------LEFT, RIGHT, SUBSTRING

SELECT LEFT('Clarusway',3)

SELECT RIGHT('Clarusway',3)


SELECT SUBSTRING ('Clarusway', 3,2)

SELECT SUBSTRING ('Clarusway', 0,2)

SELECT SUBSTRING ('Clarusway', -1,2)

SELECT SUBSTRING ('Clarusway', -1,3)












