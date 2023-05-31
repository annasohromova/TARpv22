--INNER JOIN
select * from tootaja inner join amet
on tootaja.ametId=amet.ametId;
--kasutame tabeli alias-nimed
select t.eesnimi, t.perenimi, a.ametNimetus from tootaja t
inner join amet a
on t.ametId=a.ametId;
--tingimuse lisamine
select t.eesnimi, t.perenimi, a.ametNimetus from tootaja t
inner join amet a
on t.ametId=a.ametId
where t.eesnimi like 'A%';

--1.Selgita, mis on Right Join, Left Join, tee näited
--2.Lisa 3.tabel
--Kursus(kursusId, kursuseNimetus,tootajaId, kestvus)
--3.Koosta select lause 3. tabeli põhjal

--1.LEFT JOIN sisaldab kõiki kirjeid vasakult küljelt ja sobitatud ridu paremast tabelist,
--samas kui PAREM LIITUMINE tagastab kõik read paremalt ja sobimatud read vasakpoolsest 
--tabelist.

SELECT t.eesnimi, t.perenimi, a.ametNimetus
FROM tootaja t
LEFT JOIN amet a ON t.ametId = a.ametId;

SELECT t.eesnimi, t.perenimi, a.ametNimetus
FROM tootaja t
RIGHT JOIN amet a ON t.ametId = a.ametId;

--2.
create table Kursus(
kursusId int primary key identity(1,1),
kursuseNimetus varchar(30),
tootajaId int,
foreign key (tootajaId) references tootaja(tootajaId),
kestvus varchar(15));

--3.

select t.eesnimi, t.perenimi, a.ametNimetus, k.kursuseNimetus, k.kestvus
from Kursus k
inner join tootaja t on k.tootajaId=t.tootajaId
inner join amet a on t.ametId=a.ametId
