/*
Для каждого производителя, выпускающего ПК-блокноты c объёмом жесткого 
диска не менее 10 Гбайт, найти скорости таких ПК-блокнотов. 
Вывод: производитель, скорость.
*/
SELECT DISTINCT p.maker, l.speed 
FROM product p, laptop l 
WHERE p.model = l.model and l.hd >= 10 and p.type='laptop'