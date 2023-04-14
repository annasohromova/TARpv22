SELECT * FROM table_name
------------------------
Select - выбрать 
* - все
from - из/откуда
table_name - название/имя таблицы

CREATE TABLE table_name(column_name1 datatype, ...)
-------------------------------------------------------
CREATE - создать
TABLE - таблицу
table_name - название/имя таблицы
( - начало содержания о таблице
column_name1 - столбец с именем 
datatype - тип данных
) - конец содержания о таблице

INSERT INTO table_name(column_name1, ...)
VALUES ()
-------------------------------------------------------
INSERT - вставить
INTO - в 
table_name - название/имя таблицы
( - начало содеражния о таблице
column_name1 - столбец с именем
) - конец содержания о таблице

VALUES - значения
( - начало содержания добавления значении
... - определение значении
) - конец содержания добавления значении

DROP TABLE table_name
---------------------------------------------------------
DROP - удалить
TABLE - таблицу
table_name - название/имя таблицы

UPDATE table_name SET column_name1=column_value1
WHERE condition
---------------------------------------------------------
UPDATE - обновить
table_name - название/имя таблицы
SET - выставить
column_name1 - название/имя столбца
= - равным/присвоение значении
column_value1 - название/имя столбца

WHERE - где
condition - условие

ALTER TABLE table_name ADD column_name datatype
---------------------------------------------------------
ALTER - изменить
TABLE - таблицу
table_name - название/имя таблицы
ADD - добавить
column_name - название/имя столбец
datatype - тип данных

---------------------------------------------------------
DELETE FROM talbe_name WHERE [condition]- удалить
[condition] - column_name=value

USE ...
---------------------------------------------------------
USE - использовать
... - что-то

ALTER TABLE table_name ADD FOREIGN KEY (column_name)
References table_name2(column_name2)
---------------------------------------------------------
ALTER - изменить
TABLE - таблицу
table_name - название/имя таблицы
ADD - добавить
FOREIGN - вторичный
KEY - ключ
(
column_name
)
References
table_name2
(
column_name2
)


