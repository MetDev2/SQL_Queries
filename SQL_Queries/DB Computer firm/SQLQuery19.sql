/*
Для каждого производителя, у которого присутствуют модели 
хотя бы в одной из таблиц PC, Laptop или Printer,
определить максимальную цену на его продукцию.
Вывод: имя производителя, если среди цен на продукцию данного 
производителя присутствует NULL, то выводить для этого производителя NULL,
иначе максимальную цену.
*/
WITH mass AS(
	SELECT model, price
	FROM PC

	UNION

	SELECT model, price
	FROM Laptop

	UNION

	SELECT model, price
	FROM Printer
	)

SELECT DISTINCT
	CASE WHEN c1.mak IS NULL THEN c2.mak ELSE c1.mak END naker,
	CASE WHEN c2.pri=0 THEN NULL ELSE c1.pri END pric
FROM(
	SELECT p.maker mak, MAX(s.price) pri
	FROM mass s
	LEFT JOIN Product p 
	ON s.model=p.model
	WHERE s.price IS NOT NULL
	GROUP BY p.maker
	) c1
FULL JOIN(
	SELECT p.maker mak, 0 pri
	FROM mass s
	LEFT JOIN Product p 
	ON s.model=p.model
	WHERE s.price IS NULL
	GROUP BY p.maker
	) c2 
ON c2.mak=c1.mak