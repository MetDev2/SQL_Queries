/*
Перечислите названия головных кораблей, 
имеющихся в базе данных (учесть корабли в Outcomes).
*/
SELECT distinct c1.class
FROM(
	SELECT DISTINCT class 
	FROM classes

	INTERSECT

	((SELECT name class 
	FROM ships) 

	UNION

	(SELECT ship class FROM outcomes))
	) c1
WHERE c1.class IS NOT NULL
