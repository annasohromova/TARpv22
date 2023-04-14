Oleksandr Bohatyrov
SELECT * FROM table_name
----------------
SELECT - Выбрать
* - Всё
FROM - Из
table_name - Название таблицы

CREATE TABLE (column_name1 datatype, ...)
-----------------
CREATE TABLE - Создать таблицу
table_name - Название таблицы
(column_name1 datatype, ...) - Столбцы

INSERT INTO table_name(column_name1, ...)
VALUES (column_value1, ...)
-----------------
INSERT INTO - Вставить в (столбцы)
table_name - Название таблицы
(column_name1 datatype, ...) - В какие столбцы
VALUES (column_value1, ...) - Какие данные

DROP TABLE table_name
-----------------
DROP TABLE - Удалить таблицу
table_name - Название таблицы

UPDATE table_name SET column_name1=column_value1
WHERE confition
-----------------
UPDATE - Обновить
table_name - Название таблицы
SET - Изменить
column_name1=column_value1 - Какие данные на какие заменить
WHERE - Где
condition - какой то параметр такой

ALTER TABLE table_name ADD column_name datatype
-----------------

ALTER TABLE - Новый столбец
table_name - Нахвание таблицы
ADD - добавить
column_name2 datatype - Название столбца и его тип данных

DELETE FROM table_name WHERE [condition]
[condition] - column_name=value

USE FROM databasename;

ALTER TABLE table_name ADD FOREIGN KEY (column_name)
References table_name2(column_name2)
-----------------
ALTER TABLE - Новый столбец
table_name - Название таблицы
ADD - Добавить
FOREIGN KEY - Вторичный ключ
(column_name) - название столбца
References - Связать с
table_name2 - Название второй таблицы
(column_name2) - Название второго столбца
