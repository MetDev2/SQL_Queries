/*
Найдите среднюю цену ПК и ПК-блокнотов, выпущенных производителем A 
(латинская буква). Вывести: одна общая средняя цена.
*/
SELECT AVG(pric)
FROM(
	SELECT c.price pric
	FROM Product p
	JOIN PC c 
	ON p.model = c.model
	WHERE maker = 'A'

	UNION ALL

	SELECT l.price pric
	FROM Product p
	JOIN Laptop l ON p.model = l.model
	WHERE maker = 'A'
	) s