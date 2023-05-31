--INNER JOIN
SELECT t.eesnimi, t.perenimi, a.ametNimetus FROM tootaja t
INNER JOIN amet a
ON t.ametID = a.ametID

--tingimuse lisamine
WHERE t.eesnimi LIKE 'A%';

--1. Selgita, mis on Right join, Left join
-- LEFT JOIN vasakpoolne väline ühendus, tulemus sisaldab kõiki põhitabeli kirjeid
-- RIGHT JOIN parem välimine ühendus. Päringu tulemusena esinevad kõik kirjed paremast tabelist

--2. Lisa tabel kursus(kursusID, kursusNimetus, tootajaID, kestvus)
CREATE TABLE kursus
(
kursusID int primary key identity (1,1),
kursusNimetus varchar(30),
tootajaID int,
kestvus date
);

ALTER TABLE kursus
ADD FOREIGN KEY (tootajaID) REFERENCES tootaja(tootajaID);

--3. koosta SELECT lauuse 3. tabeli põhjal
SELECT * FROM tootaja t
INNER JOIN amet a
ON t.ametID = a.ametID
INNER JOIN kursus k
ON t.tootajaID = k.tootajaID
WHERE t.eesnimi LIKE 'W%';
