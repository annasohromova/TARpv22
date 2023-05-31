---inner join
select * from tootaja inner join amet 
on tootaja.ametID = amet.ametID;

---kasutamine tabeli
select * from tootaja t inner join amet a 
on t.ametID = a.ametID;

select t.eesnimi, t.perenimi, a.ametNimetus 
from tootaja t inner join amet a 
on t.ametID = a.ametID;

---tingimuse lisamine
select t.eesnimi, t.perenimi, a.ametNimetus 
from tootaja t inner join amet a 
on t.ametID = a.ametID 
where t.eesnimi like 'A%';

--1. selgita, mis on Right join, left join, tee näited

--Right Join:
--Right join (ehk right outer join) tagastab kõik read teisest (paremast) tabelist ja nendega sobituvad  read esimesest (vasakust) tabelist. Kui esimeses tabelis vastavust ei leita, siis tagastatakse vasaku tabeli veergudele NULL-väärtused.
--Left Join:
--Left join (ehk left outer join) tagastab kõik read esimesest (vasakust) tabelist ja nendega sobituvad read teisest (paremast) tabelist. Kui teises tabelis vastavust ei leita, siis tagastatakse parema tabeli veergudele NULL-väärtused.
--2. lisa 3. tabel kursus(kursusID, kursuseNimetus, tootajaID, kestvus)

create table kursus(
kursusID int primary key identity(1,1), 
kursuseNimetus varchar(25), 
tootajaID int, 
kestvus int
);

alter table kursus add foreign key (tootajaID) references tootaja(tootajaID);

--3. koosta select lause 3. tabeli põhjal
SELECT t.eesnimi, t.perenimi, a.ametNimetus, k.kestvus, k.kursuseNimetus
FROM tootaja t
INNER JOIN amet a ON t.ametID = a.ametID
INNER JOIN kursus k ON k.tootajaID = t.tootajaID;
