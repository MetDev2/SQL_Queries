/*
Найдите производителей, выпускающих по меньшей мере три различных модели ПК. 
Вывести: Maker, число моделей ПК.
*/
SELECT distinct s.maker, count(s.model)
FROM(
	SELECT maker, model 
	FROM Product 
	WHERE type = 'PC'
	) s
GROUP BY s.maker
HAVING count(s.model) >= 3