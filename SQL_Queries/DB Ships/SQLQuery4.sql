/*
Найдите корабли, сохранившиеся для будущих сражений, 
т.е. выведенные из строя в одной битве (damaged), 
они участвовали в другой, произошедшей позже.
*/
SELECT DISTINCT s.shi
FROM(
	SELECT o.ship shi, b.date dat
	FROM OUTCOMES o
	LEFT JOIN battles b 
	ON b.name = o.battle
	WHERE o.result = 'damaged'
	)s
WHERE EXISTS(
	SELECT b1.date 
	FROM OUTCOMES s1
	LEFT JOIN battles b1 
	ON b1.name = s1.battle 
	WHERE b1.date > s.dat AND s.shi = s1.ship)
