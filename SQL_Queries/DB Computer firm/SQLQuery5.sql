--Найдите размеры жестких дисков, совпадающих у двух и более PC. Вывести: HD
SELECT hd
FROM(
	SELECT hd, COUNT(model) c
	FROM PC
	group by hd
	having count(model) >= 2
	) s
