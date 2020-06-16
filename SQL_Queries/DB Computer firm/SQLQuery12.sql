/*
Перечислите номера моделей любых типов, имеющих самую высокую 
цену по всей имеющейся в базе данных продукции.
*/
WITH Model_ryad AS(
	SELECT p.model modeli, c.price pricec
	FROM Product p
	JOIN PC c 
	ON p.model = c.model
	
	union

	select p.model modeli, l.price pricec
	from Product p
	JOIN Laptop l 
	ON p.model = l.model

	union

	select p.model modeli, pr.price pricec
	from Product p
	JOIN Printer pr 
	ON p.model = pr.model)

SELECT top 1 with ties modeli
FROM Model_ryad
ORDER BY pricec DESC