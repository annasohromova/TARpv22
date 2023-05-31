create table tootaja(
tootajaID int primary key identity(1,1),
eesnimi varchar(25),
perenimi varchar(30),
ametId int);

create table amet(
ametId int primary key identity(1,1),
ametNimetus varchar(30) UNIQUE);

--- lisamine foreign key

alter table tootaja
add foreign key (ametId) 
references amet(ametId)


select * from tootaja inner join amet 
on tootaja.ametId=amet.ametId


---Inner join

select t.eesnimi,t.perenimi,a.ametNimetus
from tootaja t
inner join amet a
on t.ametId=a.ametId

---tingimuse lisamine

select t.eesnimi,t.perenimi,a.ametNimetus
from tootaja t
inner join amet a
on t.ametId=a.ametId
where t.eesnimi like 'A%';




--1.Selgita, mis on Right Join, Left Join, tee näited 
--2.Lisa 3.tabel
--Kursus(kursusId, kursuseNimetus, tootajaId, kestvus)
--3. Koosta SELECT lause 3.tabeli põhjal

--1.
--Right Join
--See päring väljastab kõik kirjed paremast tabelist ja asendab väärtused, mida vasakus tabelis ei ole, NULL

--Left Join
--See päring väljastab kõik kirjed vasakpoolsest tabelist ja asendab väärtused, mida paremas tabelis ei ole, NULL

--lisamine tabel kursus

create table Kursus(
kursusId int primary key identity(1,1),
kursuseNimetus varchar(25),
kestvus varchar(30),
tootajaId int);

--lisamine foreign key

alter table Kursus
add foreign key (tootajaId) 
references tootaja(tootajaID)

--lisamine select laused
SELECT * FROM tootaja t
INNER JOIN amet a
ON t.ametID = a.ametID
INNER JOIN Kursus k
ON t.tootajaID = k.tootajaID
WHERE t.eesnimi LIKE 'L%';
