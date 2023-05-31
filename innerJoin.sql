--INNER JOIN
SELECT * FROM tootaja INNER JOIN amet
ON tootaja.ametId=amet.ametId;

--kasutame tabeli alias-nimed
SELECT t.eesnimi, t.perenimi, a.ametNimetus
FROM tootaja t
INNER JOIN amet a
ON t.ametId=a.ametId;
WHERE t.eesnimi LIKE 'L%';
--tingimuse lisamine

--1. Selgita mis on Right Join, Left Join , tee näited
/*LEFT OUTER JOIN Vasak välisühend - välisühend, 
kus kõik päringu SQL-lause klausli LEFT JOIN vasakpoolse tabeli (meie juhul Country) kirjed lisatakse päringu tulemile,
isegi kui parempoolse tabeli (City) ühendatud väljal ühtivad väärtused puuduvad.

SELECT C.Name AS Riik, Ci.CityName AS Pealinn
FROM Country AS C LEFT JOIN City AS Ci
ON C.Capital = Ci.ID; 

Parempoolsed välisühendid sisaldavad kõiki teisest (parempoolsest) tabelist (City),
pärinevaid kirjeid, isegi kui esimeses (vasakpoolses) tabelis (Country) ühtivad väärtused puuduvad. 

SELECT C.Name AS Riik, Ci.CityName AS Pealinn
FROM Country AS C RIGHT JOIN City AS Ci
ON C.Capital = Ci.ID; 
*/


--2. Lisa 3. tabel

Create table Kursus(
kursusId int PRIMARY KEY identity(1,1),
KursuseNimetus varchar(20),
tootajaId int,
kestvus int);

ALTER TABLE Kursus
ADD Foreign key (tootajaId) REFERENCES
tootaja(tootajaId);

--3. Koosta SELECT lause 3. tabeli põhjal


SELECT Amet.ametNimetus, Kursus.kursusId, Kursus.KursuseNimetus, Tootaja.eesnimi, Tootaja.perenimi
FROM Amet
INNER JOIN Tootaja ON Amet.AmetID = Tootaja.ametID
INNER JOIN Kursus ON Tootaja.tootajaID = Kursus.tootajaId;
