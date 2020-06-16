/*
В предположении, что приход и расход денег на каждом пункте 
приема фиксируется не чаще одного раза в день [т.е. первичный ключ (пункт, дата)], 
написать запрос с выходными данными (пункт, дата, приход, расход). 
Использовать таблицы Income_o и Outcome_o.
*/
WITH mass AS(
	SELECT point, date 
	FROM Income_o

	UNION 

	SELECT point, date
	FROM Outcome_o)
SELECT m.point, m.date, i.inc, o.out
FROM mass m
LEFT JOIN Income_o i 
ON m.point = i.point AND m.date = i.date
LEFT JOIN Outcome_o o 
ON m.point = o.point AND m.date = o.date