--Erinevus vasak- ja parempoolse ühenduse vahel on see, milline tabel peaks olema domeenitabel

--Left join näite:

select t.eesnimi,t.perenimi
from tootaja t
left join amet a on t.ametID=a.ametID;

--Right join näite:

select t.eesnimi,t.perenimi
from tootaja t
right join amet a on t.ametID=a.ametID;

create table Kursus(
kursusID int not null primary key,
kursuseNimetus varchar(20),
tootajaID int,
kestvus int);

alter table Kursus
add foreign key (tootajaID)
references tootaja(tootajaID);
