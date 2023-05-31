CREATE TABLE tootaja(
tootajaID int primary key identity(1,1),
eesnimi varchar(25),
perenimi varchar(30),
ametID int);

CREATE TABLE amet(
ametID int primary key identity(1,1),
amerNimi varchar(30) UNIQUE);

--lisame foreign key
ALTER TABLE tootaja
ADD FOREIGN KEY (ametID) REFERENCES amet(ametID);
--INNER JOIN
SELECT * FROM tootaja t
INNER JOIN amet a ON t.ametID=a.ametID;

SELECT t.eesnimi, t.perenimi, a.amerNimi FROM tootaja t
INNER JOIN amet a ON t.ametID=a.ametID;

--tingimuse lisamine
SELECT t.eesnimi, t.perenimi, a.amerNimi FROM tootaja t
INNER JOIN amet a ON t.ametID=a.ametID
WHERE t.eesnimi LIKE 'A%';

--LEFT JOIN - tagastab kõik read vasakust (esimesest(tootaja)) tabelist ja vastavad read paremast (teisest(amet)) tabelist.
SELECT t.eesnimi, t.perenimi, a.amerNimi
FROM tootaja t
LEFT JOIN amet a ON t.ametID = a.ametID;

--RIGHT JOIN - tagastab kõik read paremast (teisest(amet)) tabelist ja vastavad read vasakust (esimesest(tootaja)) tabelist.
SELECT t.eesnimi, t.perenimi, a.amerNimi
FROM tootaja t
RIGHT JOIN amet a ON t.ametID = a.ametID;

CREATE TABLE kursus(
kursusID int primary key identity(1,1),
kursuseNimetus varchar(25),
tootajaID int,
FOREIGN KEY (tootajaID) REFERENCES tootaja(tootajaID),
kestvus int);

--Koosta SELECT lause 3. tabeli põhjal
SELECT a.amerNimi, t.eesnimi, t.perenimi, k.kursuseNimetus, k.kestvus
FROM tootaja t
RIGHT JOIN amet a ON t.ametID = a.ametID
INNER JOIN kursus k ON t.tootajaID = k.tootajaID;
