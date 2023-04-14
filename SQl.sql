SELECT * FROM TABLE_NAME
------------------------
SELECT - ВЫБРАТЬ 
* - все
FROM - ИЗ
TABLE_NAME - ИМЯ_ТАБЛИЦЫ

CREATE TABLE table_name(column1 dataTYPE,...)
------------------------
CREATE-СОЗДАТЬ 
TABLE-ТАБЛИЦУ
table_name - имя таблицы
(column1 dataTYPE,...)-имя столбца и тип данных столбца

INSERT INTO TABLE table_name(colmune_name1,....)
VALUES(colmune_name1,....)
--------------------------
INSERT - вставка
INTO - в
TABLE - ТАБЛИЦУ
table_name - имя таблицы
(colmune_name1,....)-имя столбца
VALUES - ЗНАЧЕНИЯ
(colmune_name1,....)-имя столбца

UPDATE table_name SET column_name1=column_value1
WHERE condition
--------------------------
UPDATE-Обновить
table_name  - имя таблицы
SET - Установить
column_name1=column_value1-имя столбца=значение столбца
WHERE -где
condition - условие(CustomerID = 1)

ALTER TABLE table_name ADD column_name datatype
--------------------------
ALTER - изменять
TABLE - ТАБЛИЦУ
table_name - имя таблицы
ADD - ДОБАВИТЬ
column_name - имя столбца
datatype - тип данных

DELETE FROM table_name WHERE [condition]
[condition] - column_name=value
ALTER TABLE table_name ADD column_name datatype
--------------------------

