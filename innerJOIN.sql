---INNER JOIN
select * from tootaja INNER JOIN amet
ON tootaja.ametID = amet.ametID;

---kasutame tabeli alias-nimed
select * from tootaja t
inner join amet a
on t.ametID = a.ametID;

select t.eesnimi, t.perenimi, a.ametNimetus from tootaja t
inner join amet a
on t.ametID = a.ametID;

---tingimuse lisamine
select t.eesnimi, t.perenimi, a.ametNimetus from tootaja t
inner join amet a
on t.ametID = a.ametID
where t.eesnimi like 'P%';

---Right join, Left join, mis see on
---lisa 3 tabel kursus(kursusID, kursuseNimetus, tootajaID, kestvus
---koosta select lause kolme tabeli põhjal


---RIGTH JOIN
select * from tootaja t
right join amet a
on t.ametID = a.ametID;

select t.eesnimi, t.perenimi, a.ametNimetus from tootaja t
right join amet a
on t.ametID = a.ametID;

---LEFT JOIN
select * from tootaja t
right join amet a
on t.ametID = a.ametID;

select t.eesnimi, t.perenimi, a.ametNimetus from tootaja t
left join amet a
on t.ametID = a.ametID;


---koostame tabel 3
create table kursus(
kursusID int Primary key identity(1,1),
kursuseNimetus varchar(25),
tootajaID int,
kestvus int);

alter table kursus
add foreign key (tootajaID)
references tootaja(tootajaID)

---koostame päring kolme tabeli põhjal
select t.eesnimi, t.perenimi, a.ametNimetus, k.kursuseNimetus, k.kestvus from tootaja t
inner join amet a on  t.ametID = a.ametID
inner join kursus k on  t.tootajaID = k.tootajaID

select t.eesnimi, t.perenimi, a.ametNimetus, k.kursuseNimetus, k.kestvus from tootaja t
left join amet a on  t.ametID = a.ametID
left join kursus k on  t.tootajaID = k.tootajaID

select t.eesnimi, t.perenimi, a.ametNimetus, k.kursuseNimetus, k.kestvus from tootaja t
right join amet a on  t.ametID = a.ametID
right join kursus k on  t.tootajaID = k.tootajaID
