--Inner Join
select * from tootaja inner join amet
on tootaja.ametId=amet.ametId
--lühend
select * from tootaja t inner join amet a
on t.ametId=a.ametId
--
select * from tootaja t inner join amet a
ON t.ametId=a.ametId
WHERE t.eesnimi LIKE 'L%'

--Mis on Right Join ja Left Join?

--Right Join:Tagastab kõik kirjed paremast tabelist ja vastavad kirjed vasakust tabelist.
select * from tootaja t right join amet a
on t.ametId=a.ametId

--Left Join:Tagastab kõik kirjed, kui on olemas vastavus kas vasakpoolses või parempoolses tabelis.
select * from tootaja t left join amet a
on t.ametId=a.ametId

--Lisa 3.tabel
CREATE TABLE kursus(
kursusID int primary key identity(1,1),
kursuseNimetus varchar(25),
tootajaId int,
kestvus date);
--lisame foreign key
Alter table kursus
ADD FOREIGN KEY (tootajaId)
REFERENCES tootaja(tootajaID)

--Koosta SELECT lause 3. tabeli põhjal
SELECT *FROM tootaja t INNER JOIN amet a
ON t.ametId=a.ametId
INNER JOIN kursus k
ON k.kursusId=t.tootajaID;








