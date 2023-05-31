--

SELECT * FROM tootaja INNER JOIN amet
ON tootaja.ametId = amet.ametId

--

SELECT * FROM tootaja as t INNER JOIN amet as a
ON t.ametId = a.ametId

--

SELECT t.eesnimi, t.perenimi, a.ametNimetus
FROM tootaja as t INNER JOIN amet as a
ON t.ametId = a.ametId
WHERE t.eesnimi LIKE 'K%';

--1.Selgita, mis on Right Join and Left Join, tee näited 
--2.Lisa 3-tabel kursuseNimetus, tootajaId, kestvus
--3. Koosta SELEVT lause 3-tabeli Põhjal


--1.LEFT JOIN toob igal juhul välja tabelid, mida sa märkisid. Sa pead võtma aluseks vasaku tabeli. Kui väärtus on null, näitab ta seda.
Näiteks on mul tootaja tabelis töötaja, kellel on ees- ja perekonnanimi "Maksim, Maksimov", ja ta ei tööta kusagil ja tema väärtus on "ametId=NULL"

SELECT t.eesnimi, t.perenimi , a.ametNimetus
FROM tootaja as t LEFT JOIN amet as a
ON t.ametId = a.ametId

--2.Alustuseks lõin tabeli, märkisin väljade andmetüübi ja sidusin tabelid päringuga "ALTER TABLE"

CREATE TABLE Kursus(
kursusId int primary key identity (1,1),
kursuseNimetus varchar(25),
tootajaId int,
kestvus varchar(25))


ALTER TABLE Kursus
add FOREIGN KEY (tootajaId)
REFERENCES tootaja(tootajaID)

SELECT * FROM Kursus;

--3.Näita kõiki andmeid töötajate kohta  

Select t.eesnimi,t.perenimi,a.ametNimetus, k.KursuseNimetus
from tootaja t inner join amet a On t.ametID=a.ametID
LEft join kursus k On k.tootajaID=t.tootajaID
