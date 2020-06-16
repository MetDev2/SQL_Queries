/*
Найти производителей, которые выпускают более одной модели, 
при этом все выпускаемые производителем модели являются продуктами одного типа.
Вывести: maker, type
*/
SELECT DISTINCT p1.maker, p.type
FROM Product p
RIGHT JOIN(
	SELECT maker
	FROM Product
	GROUP BY maker
	HAVING COUNT(model) > 1 AND COUNT(distinct type) = 1
	) p1 
ON p.maker = p1.maker
