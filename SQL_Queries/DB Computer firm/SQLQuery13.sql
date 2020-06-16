/*
Найдите производителей принтеров, которые производят ПК с наименьшим 
объемом RAM и с самым быстрым процессором среди всех ПК, имеющих 
наименьший объем RAM. Вывести: Maker
*/
SELECT maker
FROM product
WHERE model IN (
	SELECT TOP 1 with ties model
	FROM pc
	ORDER BY ram, speed DESC
	)

INTERSECT

SELECT maker
FROM product
WHERE type = 'printer'