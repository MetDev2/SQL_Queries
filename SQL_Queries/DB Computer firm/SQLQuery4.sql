/*
Найдите модели принтеров, имеющих самую высокую цену. 
Вывести: model, price
*/
SELECT model, price
FROM Printer
WHERE Price = (SELECT MAX(Price) FROM Printer)