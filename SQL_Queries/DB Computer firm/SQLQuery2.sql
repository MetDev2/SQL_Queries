/*
Найдите номера моделей и цены всех имеющихся в продаже 
продуктов (любого типа) производителя B (латинская буква).
*/
SELECT p.model, c.price
FROM Product p
JOIN PC c 
ON p.model = c.model
WHERE p.maker = 'B'

UNION

SELECT p.model, l.price
FROM Product p
JOIN Laptop l 
ON p.model = l.model
WHERE p.maker = 'B'

UNION

SELECT p.model, pr.price
FROM Product p
JOIN Printer pr 
ON p.model = pr.model
WHERE p.maker = 'B'
