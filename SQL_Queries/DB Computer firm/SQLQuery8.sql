--Найдите производителей самых дешевых цветных принтеров. Вывести: maker, price
SELECT DISTINCT p.maker, pr.price
FROM Printer pr
join Product p 
ON pr.model = p.model
WHERE pr.price = (SELECT min(price) FROM printer WHERE color = 'y') AND color = 'y'