CREATE TABLE tootaja(
tootajaID int PRIMARY KEY IDENTITY (1,1),
eesnimi varchar(25),
perenimi varchar(30),
ametID int);

CREATE TABLE amet(
ametID int PRIMARY KEY IDENTITY (1,1),
ametNimetus varchar(30) UNIQUE);
-----------lisame FK---------------
ALTER TABLE tootaja
ADD FOREIGN KEY (ametId) 
REFERENCES amet(ametId)


SELECT * FROM tootaja INNER JOIN amet
ON tootaja.ametId=amet.ametId
----------kasutame tabeli alias-nimed-----------
SELECT * FROM tootaja t
INNER JOIN amet a
ON t.ametId=a.ametId

SELECT t.eesnimi, t.perenimi, a.ametNimetus 
FROM tootaja t
INNER JOIN amet a
ON t.ametId=a.ametId

-----------tingimuse kisamine----------
SELECT t.eesnimi, t.perenimi, a.ametNimetus 
FROM tootaja t
INNER JOIN amet a
ON t.ametId=a.ametId
WHERE t.eesnimi LIKE 'A%';

---1) Selgita, mis on Right Join, Left Join, tee näited
---2) Lisa tabel Kursus(kursusId, kursuseNimetus, tootajaId, kestvus)
---3) koosta SELECT lause 3. tabel põhjal

---1)RIGHT JOIN tagastab kõik read paremast tabelist ja nende vastavad väärtused vasakust tabelist, 
--- kui on olemas sobivad read. Kui vastavust ei ole, tagastatakse NULL.
SELECT t.eesnimi, t.perenimi, a.ametNimetus 
FROM tootaja t
RIGHT JOIN amet a
ON t.ametId = a.ametId;
--- LEFT JOIN on operatsioon, mis tagastab kõik read esimesest tabelist 
--- ja nende vastavad read teisest tabelist. Kui teises tabelis ei ole vastavaid ridu, on väärtused NULL.

SELECT t.eesnimi, t.perenimi, a.ametNimetus 
FROM tootaja t
LEFT JOIN amet a
ON t.ametId = a.ametId;


---2) 
CREATE TABLE Kursus (
  kursusId int PRIMARY KEY IDENTITY (1,1),
  kursuseNimetus varchar(50),
  tootajaId int,
  kestvus int,
  FOREIGN KEY (tootajaId) REFERENCES tootaja(tootajaId)
);

---3)
SELECT t.eesnimi, t.perenimi, a.ametNimetus, k.kursuseNimetus, k.kestvus
FROM Kursus k
INNER JOIN tootaja t ON k.tootajaId = t.tootajaId
INNER JOIN amet a ON t.ametId = a.ametId;
