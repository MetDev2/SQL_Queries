/*
По Вашингтонскому международному договору от начала 1922 г. 
запрещалось строить линейные корабли водоизмещением более 35 тыс.тонн. 
укажите корабли, нарушившие этот договор (учитывать только корабли c известным годом 
спуска на воду). Вывести названия кораблей.
*/
SELECT DISTINCT s.name
FROM ships s
LEFT JOIN classes c 
ON c.class = s.class
WHERE 
	c.displacement > 35000 AND 
	s.launched >= 1922 AND
	s.launched IS NOT NULL AND type ='bb'