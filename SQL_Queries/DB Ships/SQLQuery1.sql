/*
Найдите страны, имевшие когда-либо классы обычных боевых кораблей  ('bb')
и имевшие когда-либо классы крейсеров  ('bс').
*/
SELECT DISTINCT country
FROM classes
WHERE TYPE ='bb'

INTERSECT

SELECT DISTINCT country
FROM classes
WHERE TYPE ='bc'