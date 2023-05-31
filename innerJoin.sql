--inner join
select * from tootaka, amet --is not correct!!!

select * from tootaka t inner join amet a
on t.ametId=a.ametId

select t.eesnimi, t.perenimi, a.ametNimetus from tootaka t inner join amet a
on t.ametId=a.ametId
where t.eesnimi like 'N%';


--1.select, mis on Right Join, Left Join, tee näited

        LEFT OUTER JOIN - vasaku välise ühenduse korral (Outer join) sisaldab tulemus kõiki põhitabeli kirjeid (tabel) 

--2.lisa 3. tabel


--Kursus(kursusId, kursusNimetus, tootajaId, kestvus)

        create table Kursus(
        kursusId int primary key identity(1,1),
        kursusNimetus varchar(50),
        kestvus date,
        tootajaId int)
        alter table Kursus
        add foreign key(tootajaId) references tootaka(tootajaId)

--3.koosta SELECT lause 3. tabeli põhjal
        SELECT t.eesnimi, t.perenimi, a.ametNimetus, k.kursusNimetus FROM tootaka t  JOIN amet a
        ON t.ametId = a.ametId
        JOIN Kursus k ON t.tootajaId = k.tootajaId;



