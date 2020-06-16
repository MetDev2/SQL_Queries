/*
Найдите производителей, которые производили бы как ПК со скоростью 
не менее 750 МГц, так и ПК-блокноты со скоростью не менее 750 МГц.
Вывести: Maker
*/
SELECT DISTINCT p.maker
FROM Product p
LEFT JOIN  PC c 
ON p.model = c.model
where c.speed >= 750 and c.speed IS NOT NULL

intersect

select maker from Product p 
LEFT JOIN Laptop l 
ON p.model = l.model
where l.speed>= 750 AND l.speed IS NOT NULL