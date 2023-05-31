--
select * from tootaja INNER JOIN amet
on tootaja.ametID = amet.ametID;

-- kasutame tabeli alias-nimed
select * from tootaja t INNER JOIN amet a
on t.ametID = a.ametID;

--
select t.eesnimi, t.perenimi, a.ametinimi from tootaja t INNER JOIN amet a
on t.ametID = a.ametID;

--tingimuse lisamine
select t.eesnimi, t.perenimi, a.ametinimi from tootaja t INNER JOIN amet a
on t.ametID = a.ametID
where t.eesnimi like'K%';


-- 1. Selgita, mis on Right join, Left join, tee näited
--2. Lisa 3.tabel
--Kursus (kursusID, kursuseNimetus, tootajaID, kestvus)
--3. Koosta SELECT lause 3. tabeli põhajal


--1. Vasak välisühend - välisühend, kus kõik päringu SQL-lause klausli LEFT JOIN vasakpoolse tabeli (meie juhul Country)
--kirjed lisatakse päringu tulemile, isegi kui parempoolse tabeli (City) ühendatud väljal ühtivad väärtused puuduvad.

select t.eesnimi, t.perenimi, a.ametinimi from tootaja t Left JOIN amet a
on t.ametID = a.ametID;

select t.eesnimi, t.perenimi, a.ametinimi from tootaja t Right JOIN amet a
on t.ametID = a.ametID;

--2
create table Kursus(
kursusID int primary key identity(1,1),
kursuseNimetus varchar (25),
tootajaID int,
kestvus varchar(50));

alter table Kursus
add foreign key (tootajaID)
references tootaja(tootajaID)

--3
select k.kursuseNimetus, t.eesnimi, t.perenimi, a.ametinimi from Kursus k INNER JOIN tootaja t
on k.tootajaID = t.tootajaID
inner join amet a on t.ametID = a.ametID;
