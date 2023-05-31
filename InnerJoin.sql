
Select * from tootaja inner join amet
On tootaja.ametID=amet.ametID;

Select * from tootaja t
inner join amet a
On t.ametID=a.ametID;

Select t.eesnimi,t.perenimi,a.ametNimetus
from tootaja t
inner join amet a
On t.ametID=a.ametID;

Select t.eesnimi,t.perenimi,a.ametNimetus
from tootaja t
inner join amet a
On t.ametID=a.ametID
Where t.eesnimi Like 'A%';

-- Selgita, mis on Right Join and léft Joint
--Left Join
--Selle päringu tulemuseks on kõik kirjed vasakpoolses tabelis (antud juhul tootaja),
--olenemata sellest, kas tabelis ametlinn on liidetingimuse kohaselt sobivaid kirjeid. Väärtused, mida tabelis amet ei ole, asendatakse tulemuseks olevas päringus NULLiga.
SELECT t.eesnimi,t.perenimi,a.ametNimetus
FROM tootaja AS t LEFT JOIN amet AS a
ON t.ametID=a.ametID; 

--Right Join
--Päringu tulemused sisaldavad kõiki kirjeid paremast tabelist (linn),
--olenemata sellest, kas tabel "amet" vastab liitumistingimusele. Väärtused, mida ei ole tabelis Tootaja olemas, asendatakse tulemuseks olevas päringus NULLiga
SELECT t.eesnimi,t.perenimi,a.ametNimetus
FROM tootaja AS t Right JOIN amet AS a
ON t.ametID=a.ametID; 

-- Lisa 3 tabel Kursus (kursusId, KursuseNimetus, tootajaID,  kestvus
Create table kursus(
kursusID int primary key identity(1,1),
KursuseNimetus varchar(30),
tootajaID int, 
kestvus int);

Alter table kursus
ADD Foreign Key (tootajaID) 
References tootaja(tootajaID)

--Kosta select lause 3.tabeli
--Показать все днанные о рабтониках/Näita kõiki andmeid orjatööliste kohta
Select t.eesnimi,t.perenimi,a.ametNimetus, k.KursuseNimetus
from tootaja t
inner join amet a On t.ametID=a.ametID
LEft join kursus k On k.tootajaID=t.tootajaID
