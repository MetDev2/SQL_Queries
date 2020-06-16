/*
В предположении, что приход и расход денег на каждом пункте приема 
фиксируется произвольное число раз (первичным ключом в таблицах является столбец code), 
требуется получить таблицу, в которой каждому пункту за каждую дату 
выполнения операций будет соответствовать одна строка.
Вывод: point, date, суммарный расход пункта за день (out), 
суммарный приход пункта за день (inc). Отсутствующие значения считать неопределенными (NULL).
*/
WITH mass AS(
	SELECT point, date, 0 outcode, code inccode
	FROM Income

	UNION ALL

	SELECT point, date, code outcode, 0 inccode
	FROM outcome)

SELECT m.point, m.date, sum(o.out), sum(i.inc)
FROM mass m
FULL JOIN income i 
ON m.date = i.date AND m.point = i.point AND i.code = m.inccode
FULL JOIN outcome o 
ON m.date = o.date AND m.point = o.point AND o.code = m.outcode
GROUP BY m.date, m.point