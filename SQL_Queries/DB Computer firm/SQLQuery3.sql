--������� �������������, ������������ ��, �� �� ��-��������.
SELECT maker 
FROM Product
WHERE type = 'PC'

INTERSECT

(SELECT maker
FROM Product

EXCEPT 

SELECT maker 
FROM Product
WHERE type = 'Laptop')