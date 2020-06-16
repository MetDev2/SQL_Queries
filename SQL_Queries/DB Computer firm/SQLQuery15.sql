/*
Найдите средний размер диска ПК каждого из тех производителей, 
которые выпускают и принтеры. Вывести: maker, средний размер HD.
*/
WITH sef AS(
	SELECT DISTINCT p1.model modelc, p1.maker makert
	FROM Product p1
	JOIN Product p2 
	ON p1.maker = p2.maker
	WHERE p1.type = 'PC' AND p2.type = 'Printer'
	)
SELECT s.makert, AVG(c.hd)
FROM sef s
JOIN PC c 
ON c.model = s.modelc
GROUP BY s.makert
