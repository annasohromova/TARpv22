--Erinevus vasak- ja parempoolse ühenduse vahel on see, milline tabel peaks olema domeenitabel

--Left join näite:

select t.eesnimi,t.perenimi
from tootaja t
left join amet a on t.ametID=a.ametID;

--Right join näite:

select t.eesnimi,t.perenimi
from tootaja t
right join amet a on t.ametID=a.ametID;

--Tabeli loomine
create table Kursus(
kursusID int not null primary key,
kursuseNimetus varchar(20),
tootajaID int,
kestvus int);

alter table Kursus
add foreign key (tootajaID)
references tootaja(tootajaID);

--Select taotlused

select t.eesnimi,a.amet,k.kursuseNimetus
from tootaja as t
join amet as a on t.ametID=a.ametID
join Kursus as k on t.tootajaID=k.tootajaID
where a.ametID=3;

select t.eesnimi,a.amet,k.kursuseNimetus
from tootaja as t
join amet as a on t.ametID=a.ametID
join Kursus as k on t.tootajaID=k.tootajaID
where  a.amet LIKE 'p%';

select t.eesnimi,a.amet,k.kursuseNimetus
from tootaja as t
join amet as a on t.ametID=a.ametID
join Kursus as k on t.tootajaID=k.tootajaID
where k.kestvus>3 and k.kursuseNimetus like 's%';
