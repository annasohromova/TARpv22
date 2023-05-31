Selgita, mis on RIGHT JOIN , left join,tee näite
2.Liisa 3.tabel kursus(kursusId,kursuseNimetus,tootajaId,kestvus)
3.koosta SELECT lause 3. tabeli põhjal

right join- это операция в языке SQL, которая объединяет строки из двух таблиц на основе условия соответствия и 
возвращает все строки из правой таблицы и только те строки из левой таблицы, которые удовлетворяют условию соединения.

left join-  это операция в языке SQL, которая объединяет строки из двух таблиц на основе условия соответствия и 
возвращает все строки из левой таблицы и только те строки из правой таблицы, которые удовлетворяют условию соединения. 

2. CREATE TABLE kursus(
kursusId int primary key identity(1,1),
kursuseNimetus varchar(30),
tootajaId int,
kestvus int)

ALTER TABLE kursus
ADD foreign key (tootajaId)
references tootaja(tootajaId)

3.SELECT t.eesnimi, t.perenimi, a.ametNimetus, k.kursuseNimetus, k.kestvus
FROM tootaja AS t
INNER JOIN amet AS a ON t.ametId = a.ametId
INNER JOIN kursus AS k ON t.tootajaId = k.tootajaId;

RIGHT JOIN

SELECT t.eesnimi, t.perenimi, a.ametNimetus, k.kursuseNimetus, k.kestvus
FROM tootaja AS t
RIGHT JOIN amet AS a ON t.ametId = a.ametId
RIGHT JOIN kursus AS k ON t.tootajaId = k.tootajaId;

LEFT JOIN

SELECT TOP 3 t.eesnimi, t.perenimi, a.ametNimetus, k.kursuseNimetus, k.kestvus
FROM tootaja AS t
LEFT JOIN amet AS a ON t.ametId = a.ametId
LEFT JOIN kursus AS k ON t.tootajaId = k.tootajaId;

