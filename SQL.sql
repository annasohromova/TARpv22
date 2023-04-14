SELECT * FROM table_name
------------------------
SELECT - выбрать
* - всё
FROM - из 
table_name - имя таблицы

CREATE TABLE table_name(column_name1 dataType, ...)
----------------------------------------------
CREATE - создать
TABLE - таблица
table_name - имя таблицы
column_name1 - название столбца
dataType - тип данных 

INSERT INTO table_name(column_name1, ...)
VALUES (column_value1, ...)
----------------------------------------
INSERT - вставить
INTO - в / куда
table_name - имя таблицы
colemn_name - название столбца
VALUES - значения
column_value - значение столбца

DROP TABLE table_name
---------------------
DROP - удалить
TABLE - таблица
table_name - имя таблицы

UPDATE table_name SET column_name1=column_value2
WHERE condition
------------------------------------------------
UPDATE - обновление
table_name - имя таблицы
SET - выставить
column_name - название столбца
column_values - значение столбца
WHERE - где
condition - условие

ALTER TABLE table_name1 ADD column_name1 dataType
-------------------------------------------------
ALTER - Изменить
TABLE - таблица
table_name - имя таблицы
ADD - добавить
column_name - название столбца
dataType - тип данных 

DELETE FROM table_name WHERE [condition]
----------------------------------------
DELETE - удалить
FROM - из
table_name - имя таблицы
WHERE - где
condition - условие
[condition] - column_name = value

