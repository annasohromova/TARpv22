SELECT * FROM table_name
-------------------------
SELECT - vybrat
* - vse
FROM - iz
table_name - imya

CREATE TABLE table_name(column1 dataType, ...)
CREATE - sozdat
TABLE - tablicu
table_name - imya tablici
column1 - stolbec 1
dataType - tip dannyh

INSERT INTO table_name(column_name1, ...)
VALUES (column_value1, ...)
INSERT - vpisat
table_name - imya 
column_name1 - nazvanie stolbca
VALUES - znacheniya
column_value1 - znacheniye

DROP TABLE table_name
DROP - udalit 
TABLE - tablica
table_name - nazvaniye tablici

UPDATE table_name  SET column_name1=column_value1
WHERE condition
UPDATE - obnovit
table_name - nazvaniye tablici
SET - ustanovit, zadat'
column_name1=column_value1 - znacheniya

ALTER TABLE table_name ADD column_name datatype
ALTER - izmenit
TABLE - tablicu
table_name - nazvaniye tablici
ADD - dobavit
column_name  - nazvanie stolbca
datatype - tip dannyh

delete FROM table_name WHERE [condition]
[condition] - column name = value
use databasename;

ALTER TABLE table_name  ADD FOREIGN KEY (column-name)
References table_name2(column_name2)
ALTER - v
TABLE - tablicu
table_name - imya tablici
ADD - dobavit
FOREIGN KEY
column-name
References - recomendacii
table_name2 - imya tablici
column_name2 - imya stolbca
