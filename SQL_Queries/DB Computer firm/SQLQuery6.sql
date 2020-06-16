/*
Найдите пары моделей PC, имеющих одинаковые скорость и RAM. 
В результате каждая пара указывается только один раз, т.е. (i,j), но не (j,i), 
Порядок вывода: модель с большим номером, модель с меньшим номером, скорость и RAM.
*/
SELECT DISTINCT p1.model, s.model, s.speed, s.ram
FROM PC p1
JOIN(
	SELECT p2.model, p2.speed, p2.ram 
	FROM PC p2
	) s 
ON s.speed = p1.speed AND s.ram = p1.ram
WHERE p1.model > s.model